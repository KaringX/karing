// ignore_for_file: unused_catch_stack

abstract class ConfParser {
  static Map<String, Map<String, String>> parse(String content) {
    final Map<String, Map<String, String>> config = {};
    final List<String> lines = content.split('\n');

    String currentSection = '';
    Map<String, String>? currentSectionItems;

    for (final String line in lines) {
      final String trimmedLine = line.trim();
      if (trimmedLine.isEmpty || trimmedLine.startsWith('#')) {
        continue;
      }

      if (trimmedLine.startsWith('[') && trimmedLine.endsWith(']')) {
        if (currentSection.isNotEmpty && currentSectionItems != null) {
          config[currentSection] = currentSectionItems;
        }

        currentSection = trimmedLine.substring(1, trimmedLine.length - 1);
        currentSectionItems = {};
      } else {
        final int pos = trimmedLine.indexOf('=');

        if (pos > 0) {
          final String key = trimmedLine.substring(0, pos).trim();
          final String value = trimmedLine.substring(pos + 1).trim();

          currentSectionItems?[key] = value;
        }
      }
    }

    if (currentSection.isNotEmpty && currentSectionItems != null) {
      config[currentSection] = currentSectionItems;
    }

    return config;
  }
}
