#include "system_proxy_cleanup.h"

#include <windows.h>
#include <knownfolders.h>
#include <shlobj.h>
#include <wininet.h>

#include <cstdint>
#include <string>
#include <string_view>

namespace {

constexpr uint16_t kDefaultMixedPort = 3067;
constexpr LONGLONG kMaxSettingsFileSize = 4 * 1024 * 1024;
constexpr int kMaxJsonNestingDepth = 64;

bool IsJsonWhitespace(char ch) noexcept {
  return ch == ' ' || ch == '\t' || ch == '\r' || ch == '\n';
}

void SkipJsonWhitespace(std::string_view json, size_t& pos) noexcept {
  while (pos < json.size() && IsJsonWhitespace(json[pos])) {
    ++pos;
  }
}

bool SkipJsonString(std::string_view json, size_t& pos) noexcept {
  if (pos >= json.size() || json[pos] != '"') {
    return false;
  }
  ++pos;
  while (pos < json.size()) {
    const char ch = json[pos++];
    if (ch == '"') {
      return true;
    }
    if (ch == '\\') {
      if (pos >= json.size()) {
        return false;
      }
      ++pos;
    }
  }
  return false;
}

bool ReadJsonString(std::string_view json,
                    size_t& pos,
                    std::string& out) noexcept {
  out.clear();
  if (pos >= json.size() || json[pos] != '"') {
    return false;
  }
  ++pos;
  while (pos < json.size()) {
    const char ch = json[pos++];
    if (ch == '"') {
      return true;
    }
    if (ch == '\\') {
      if (pos >= json.size()) {
        return false;
      }
      const char escaped = json[pos++];
      switch (escaped) {
        case '"':
        case '\\':
        case '/':
          out.push_back(escaped);
          break;
        case 'b':
          out.push_back('\b');
          break;
        case 'f':
          out.push_back('\f');
          break;
        case 'n':
          out.push_back('\n');
          break;
        case 'r':
          out.push_back('\r');
          break;
        case 't':
          out.push_back('\t');
          break;
        default:
          out.push_back('\\');
          out.push_back(escaped);
          break;
      }
      continue;
    }
    out.push_back(ch);
  }
  return false;
}

bool SkipJsonValue(std::string_view json, size_t& pos, int depth) noexcept {
  if (depth > kMaxJsonNestingDepth) {
    return false;
  }
  SkipJsonWhitespace(json, pos);
  if (pos >= json.size()) {
    return false;
  }

  const char ch = json[pos];
  if (ch == '"') {
    return SkipJsonString(json, pos);
  }
  if (ch == '{') {
    ++pos;
    SkipJsonWhitespace(json, pos);
    if (pos < json.size() && json[pos] == '}') {
      ++pos;
      return true;
    }
    while (pos < json.size()) {
      SkipJsonWhitespace(json, pos);
      if (!SkipJsonString(json, pos)) {
        return false;
      }
      SkipJsonWhitespace(json, pos);
      if (pos >= json.size() || json[pos] != ':') {
        return false;
      }
      ++pos;
      if (!SkipJsonValue(json, pos, depth + 1)) {
        return false;
      }
      SkipJsonWhitespace(json, pos);
      if (pos >= json.size()) {
        return false;
      }
      if (json[pos] == ',') {
        ++pos;
        continue;
      }
      if (json[pos] == '}') {
        ++pos;
        return true;
      }
      return false;
    }
    return false;
  }
  if (ch == '[') {
    ++pos;
    SkipJsonWhitespace(json, pos);
    if (pos < json.size() && json[pos] == ']') {
      ++pos;
      return true;
    }
    while (pos < json.size()) {
      if (!SkipJsonValue(json, pos, depth + 1)) {
        return false;
      }
      SkipJsonWhitespace(json, pos);
      if (pos >= json.size()) {
        return false;
      }
      if (json[pos] == ',') {
        ++pos;
        continue;
      }
      if (json[pos] == ']') {
        ++pos;
        return true;
      }
      return false;
    }
    return false;
  }

  const size_t start = pos;
  while (pos < json.size() && !IsJsonWhitespace(json[pos]) &&
         json[pos] != ',' && json[pos] != '}' && json[pos] != ']') {
    ++pos;
  }
  return pos > start;
}

bool FindObjectMemberValue(std::string_view json,
                           size_t& pos,
                           std::string_view target_key) noexcept {
  SkipJsonWhitespace(json, pos);
  if (pos >= json.size() || json[pos] != '{') {
    return false;
  }
  ++pos;
  SkipJsonWhitespace(json, pos);
  if (pos < json.size() && json[pos] == '}') {
    return false;
  }

  std::string key;
  while (pos < json.size()) {
    SkipJsonWhitespace(json, pos);
    if (!ReadJsonString(json, pos, key)) {
      return false;
    }
    SkipJsonWhitespace(json, pos);
    if (pos >= json.size() || json[pos] != ':') {
      return false;
    }
    ++pos;
    SkipJsonWhitespace(json, pos);
    if (key == target_key) {
      return pos < json.size();
    }
    if (!SkipJsonValue(json, pos, 0)) {
      return false;
    }
    SkipJsonWhitespace(json, pos);
    if (pos >= json.size()) {
      return false;
    }
    if (json[pos] == ',') {
      ++pos;
      continue;
    }
    if (json[pos] == '}') {
      return false;
    }
    return false;
  }
  return false;
}

bool ParsePortNumber(std::string_view json,
                     size_t& pos,
                     uint16_t& port) noexcept {
  SkipJsonWhitespace(json, pos);
  if (pos >= json.size() || json[pos] < '0' || json[pos] > '9') {
    return false;
  }

  uint32_t value = 0;
  bool overflow = false;
  while (pos < json.size() && json[pos] >= '0' && json[pos] <= '9') {
    const uint32_t digit = static_cast<uint32_t>(json[pos] - '0');
    if (value > 65535) {
      overflow = true;
    } else {
      value = value * 10 + digit;
      if (value > 65535) {
        overflow = true;
      }
    }
    ++pos;
  }

  if (pos < json.size() && !IsJsonWhitespace(json[pos]) && json[pos] != ',' &&
      json[pos] != '}' && json[pos] != ']') {
    return false;
  }
  if (overflow || value == 0) {
    return false;
  }

  port = static_cast<uint16_t>(value);
  return true;
}

uint16_t ParseMixedPortFromSettingsJson(std::string_view json) noexcept {
  if (json.size() >= 3 && static_cast<unsigned char>(json[0]) == 0xEF &&
      static_cast<unsigned char>(json[1]) == 0xBB &&
      static_cast<unsigned char>(json[2]) == 0xBF) {
    json.remove_prefix(3);
  }

  size_t pos = 0;
  if (!FindObjectMemberValue(json, pos, "proxy")) {
    return kDefaultMixedPort;
  }
  if (!FindObjectMemberValue(json, pos, "mixed_port")) {
    return kDefaultMixedPort;
  }

  uint16_t port = kDefaultMixedPort;
  if (!ParsePortNumber(json, pos, port)) {
    return kDefaultMixedPort;
  }
  return port;
}

bool IsAsciiWhitespace(wchar_t ch) noexcept {
  return ch == L' ' || ch == L'\t' || ch == L'\r' || ch == L'\n';
}

bool IsAsciiAlnum(wchar_t ch) noexcept {
  return (ch >= L'a' && ch <= L'z') || (ch >= L'A' && ch <= L'Z') ||
         (ch >= L'0' && ch <= L'9');
}

wchar_t ToLowerAscii(wchar_t ch) noexcept {
  if (ch >= L'A' && ch <= L'Z') {
    return static_cast<wchar_t>(ch - L'A' + L'a');
  }
  return ch;
}

bool EqualsIgnoreCaseAscii(std::wstring_view lhs,
                           std::wstring_view rhs) noexcept {
  if (lhs.size() != rhs.size()) {
    return false;
  }
  for (size_t i = 0; i < lhs.size(); ++i) {
    if (ToLowerAscii(lhs[i]) != ToLowerAscii(rhs[i])) {
      return false;
    }
  }
  return true;
}

std::wstring_view TrimAsciiWhitespace(std::wstring_view value) noexcept {
  size_t begin = 0;
  while (begin < value.size() && IsAsciiWhitespace(value[begin])) {
    ++begin;
  }
  size_t end = value.size();
  while (end > begin && IsAsciiWhitespace(value[end - 1])) {
    --end;
  }
  return value.substr(begin, end - begin);
}

bool IsValidSchemeToken(std::wstring_view token) noexcept {
  if (token.empty()) {
    return false;
  }
  for (wchar_t ch : token) {
    if (!IsAsciiAlnum(ch)) {
      return false;
    }
  }
  return true;
}

std::wstring FormatPort(uint16_t port) noexcept {
  wchar_t buffer[8] = {};
  size_t index = 0;
  uint16_t value = port;
  do {
    buffer[index++] = static_cast<wchar_t>(L'0' + (value % 10));
    value = static_cast<uint16_t>(value / 10);
  } while (value > 0 && index < ARRAYSIZE(buffer));

  std::wstring result;
  result.reserve(index);
  while (index > 0) {
    result.push_back(buffer[--index]);
  }
  return result;
}

bool IsLocalProxyServerForPort(std::wstring_view proxy_server,
                               uint16_t port) noexcept {
  if (port == 0) {
    return false;
  }

  const std::wstring port_str = FormatPort(port);
  const std::wstring ipv4_target = L"127.0.0.1:" + port_str;
  const std::wstring localhost_target = L"localhost:" + port_str;

  size_t matched_count = 0;
  size_t start = 0;
  while (start <= proxy_server.size()) {
    const size_t sep = proxy_server.find(L';', start);
    const std::wstring_view raw_entry =
        (sep == std::wstring_view::npos)
            ? proxy_server.substr(start)
            : proxy_server.substr(start, sep - start);

    std::wstring_view entry = TrimAsciiWhitespace(raw_entry);
    if (!entry.empty()) {
      const size_t eq_pos = entry.find(L'=');
      if (eq_pos != std::wstring_view::npos) {
        const std::wstring_view protocol =
            TrimAsciiWhitespace(entry.substr(0, eq_pos));
        if (!IsValidSchemeToken(protocol)) {
          return false;
        }
        entry = TrimAsciiWhitespace(entry.substr(eq_pos + 1));
      }

      const size_t scheme_pos = entry.find(L"://");
      if (scheme_pos != std::wstring_view::npos) {
        const std::wstring_view scheme = entry.substr(0, scheme_pos);
        if (!IsValidSchemeToken(scheme)) {
          return false;
        }
        entry = entry.substr(scheme_pos + 3);
      }

      if (!entry.empty() && entry.back() == L'/') {
        entry.remove_suffix(1);
      }

      if (entry != ipv4_target &&
          !EqualsIgnoreCaseAscii(entry, localhost_target)) {
        return false;
      }
      ++matched_count;
    }

    if (sep == std::wstring_view::npos) {
      break;
    }
    start = sep + 1;
  }

  return matched_count > 0;
}

std::wstring GetExecutableDirectory() noexcept {
  std::wstring path;
  for (size_t buffer_size = MAX_PATH; buffer_size <= 32768; buffer_size *= 2) {
    path.assign(buffer_size, L'\0');
    const DWORD length = ::GetModuleFileNameW(
        nullptr, path.data(), static_cast<DWORD>(path.size()));
    if (length == 0) {
      return {};
    }
    if (length < path.size()) {
      path.resize(length);
      const size_t sep = path.find_last_of(L"\\/");
      if (sep == std::wstring::npos) {
        return {};
      }
      path.resize(sep);
      return path;
    }
  }
  return {};
}

bool IsDirectory(const std::wstring& path) noexcept {
  const DWORD attrs = ::GetFileAttributesW(path.c_str());
  return attrs != INVALID_FILE_ATTRIBUTES &&
         (attrs & FILE_ATTRIBUTE_DIRECTORY) != 0;
}

std::wstring GetSettingsFilePath() noexcept {
  const std::wstring exe_dir = GetExecutableDirectory();
  if (!exe_dir.empty()) {
    const std::wstring portable_dir = exe_dir + L"\\profiles";
    if (IsDirectory(portable_dir)) {
      return portable_dir + L"\\karing_setting.json";
    }
  }

  PWSTR app_data_path = nullptr;
  if (SUCCEEDED(::SHGetKnownFolderPath(FOLDERID_RoamingAppData, 0, nullptr,
                                       &app_data_path)) &&
      app_data_path != nullptr) {
    std::wstring path(app_data_path);
    ::CoTaskMemFree(app_data_path);
    path.append(L"\\karing\\karing\\karing_setting.json");
    return path;
  }

  return {};
}

bool ReadFileContents(const std::wstring& path, std::string& out) noexcept {
  out.clear();
  if (path.empty()) {
    return false;
  }

  const HANDLE file = ::CreateFileW(
      path.c_str(), GENERIC_READ,
      FILE_SHARE_READ | FILE_SHARE_WRITE | FILE_SHARE_DELETE, nullptr,
      OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, nullptr);
  if (file == INVALID_HANDLE_VALUE) {
    return false;
  }

  LARGE_INTEGER file_size = {};
  if (!::GetFileSizeEx(file, &file_size) || file_size.QuadPart <= 0 ||
      file_size.QuadPart > kMaxSettingsFileSize) {
    ::CloseHandle(file);
    return false;
  }

  const DWORD expected_size = static_cast<DWORD>(file_size.QuadPart);
  out.resize(expected_size);

  DWORD total_read = 0;
  while (total_read < expected_size) {
    DWORD bytes_read = 0;
    if (!::ReadFile(file, out.data() + total_read, expected_size - total_read,
                    &bytes_read, nullptr) ||
        bytes_read == 0) {
      ::CloseHandle(file);
      out.clear();
      return false;
    }
    total_read += bytes_read;
  }

  ::CloseHandle(file);
  return true;
}

uint16_t LoadConfiguredMixedPort() noexcept {
  std::string contents;
  if (!ReadFileContents(GetSettingsFilePath(), contents)) {
    return kDefaultMixedPort;
  }
  return ParseMixedPortFromSettingsJson(contents);
}

}  // namespace

void ClearSystemProxyOnShutdown() noexcept {
  INTERNET_PER_CONN_OPTIONW query_options[2] = {};
  query_options[0].dwOption = INTERNET_PER_CONN_FLAGS;
  query_options[1].dwOption = INTERNET_PER_CONN_PROXY_SERVER;

  INTERNET_PER_CONN_OPTION_LISTW query_list = {};
  query_list.dwSize = static_cast<DWORD>(sizeof(query_list));
  query_list.pszConnection = nullptr;
  query_list.dwOptionCount = static_cast<DWORD>(ARRAYSIZE(query_options));
  query_list.dwOptionError = 0;
  query_list.pOptions = query_options;

  DWORD query_size = static_cast<DWORD>(sizeof(query_list));
  if (!::InternetQueryOptionW(nullptr, INTERNET_OPTION_PER_CONNECTION_OPTION,
                              &query_list, &query_size)) {
    return;
  }

  const DWORD flags = query_options[0].Value.dwValue;
  std::wstring proxy_server;
  if (query_options[1].Value.pszValue != nullptr) {
    proxy_server.assign(query_options[1].Value.pszValue);
    ::GlobalFree(query_options[1].Value.pszValue);
  }

  if ((flags & PROXY_TYPE_PROXY) == 0) {
    return;
  }

  const uint16_t mixed_port = LoadConfiguredMixedPort();
  if (!IsLocalProxyServerForPort(proxy_server, mixed_port)) {
    return;
  }

  INTERNET_PER_CONN_OPTIONW set_option = {};
  set_option.dwOption = INTERNET_PER_CONN_FLAGS;
  set_option.Value.dwValue =
      (flags & ~static_cast<DWORD>(PROXY_TYPE_PROXY)) | PROXY_TYPE_DIRECT;

  INTERNET_PER_CONN_OPTION_LISTW set_list = {};
  set_list.dwSize = static_cast<DWORD>(sizeof(set_list));
  set_list.pszConnection = nullptr;
  set_list.dwOptionCount = 1;
  set_list.dwOptionError = 0;
  set_list.pOptions = &set_option;

  if (::InternetSetOptionW(nullptr, INTERNET_OPTION_PER_CONNECTION_OPTION,
                           &set_list,
                           static_cast<DWORD>(sizeof(set_list)))) {
    ::InternetSetOptionW(nullptr, INTERNET_OPTION_SETTINGS_CHANGED, nullptr, 0);
    ::InternetSetOptionW(nullptr, INTERNET_OPTION_REFRESH, nullptr, 0);
  }
}
