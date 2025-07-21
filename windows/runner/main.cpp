#include <flutter/dart_project.h>
#include <flutter/flutter_view_controller.h>
#include <windows.h>
#include <winuser.h>
#include <protocol_handler/protocol_handler_plugin.h>
// #include <protocol_handler_windows/protocol_handler_windows_plugin_c_api.h>
#include "flutter_window.h"
#include "utils.h"
// #include <sentry.h>

LONG __stdcall UnhandledException(PEXCEPTION_POINTERS pExceptionInfo)
{
  TerminateProcess(GetCurrentProcess(), 1);
  return EXCEPTION_EXECUTE_HANDLER;
}
void uninitializeWindow(FlutterWindow *window)
{
  SetUnhandledExceptionFilter(UnhandledException);
  __try
  {
    delete window;
  }
  __except (EXCEPTION_EXECUTE_HANDLER)
  {
    TerminateProcess(GetCurrentProcess(), 1);
  }
}

int APIENTRY wWinMain(_In_ HINSTANCE instance, _In_opt_ HINSTANCE prev,
                      _In_ wchar_t *command_line, _In_ int show_command)
{

  /*sentry_options_t* options = sentry_options_new();
  sentry_options_set_dsn(options, "");
  sentry_options_set_database_path(options, ".sentry-native");
  sentry_options_set_release(options, "my-project-name@2.3.12");
  sentry_options_set_debug(options, 1);
  sentry_init(options);*/

  const wchar_t *kWindowName = L"Karing";
  HWND hwnd = ::FindWindow(L"FLUTTER_RUNNER_WIN32_WINDOW", kWindowName);
  if (hwnd != NULL)
  {
    DispatchToProtocolHandler(hwnd);

    ::ShowWindow(hwnd, SW_NORMAL);
    ::SetForegroundWindow(hwnd);
    return EXIT_FAILURE;
  }
  // Attach to console when present (e.g., 'flutter run') or create a
  // new console when running with a debugger.
  if (!::AttachConsole(ATTACH_PARENT_PROCESS) && ::IsDebuggerPresent())
  {
    CreateAndAttachConsole();
  }

  // Initialize COM, so that it is available for use in the library and/or
  // plugins.
  ::CoInitializeEx(nullptr, COINIT_APARTMENTTHREADED);

  flutter::DartProject project(L"data");

  std::vector<std::string> command_line_arguments =
      GetCommandLineArguments();

  project.set_dart_entrypoint_arguments(std::move(command_line_arguments));

  FlutterWindow *window = new FlutterWindow(project);
  // FlutterWindow window(project);
  Win32Window::Point origin(10, 10);
  Win32Window::Size size(400, 700);
  if (!window->Create(kWindowName, origin, size))
  {
    return EXIT_FAILURE;
  }
  ::ChangeWindowMessageFilterEx(window->GetHandle(), WM_COPYDATA, MSGFLT_ALLOW, NULL);
  window->SetQuitOnClose(false);
  ::MSG msg;
  while (::GetMessage(&msg, nullptr, 0, 0))
  {
    ::TranslateMessage(&msg);
    ::DispatchMessage(&msg);
  }

  ::CoUninitialize();
  // sentry_close();
  uninitializeWindow(window);

  return EXIT_SUCCESS;
}
