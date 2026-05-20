import 'package:build/build.dart';

/// Builder that generates build time constants
class BuildTimeBuilder implements Builder {
  @override
  final buildExtensions = const {
    r'$lib$': ['generated/build_time.dart'],
  };

  @override
  Future<void> build(BuildStep buildStep) async {
    final now = DateTime.now();

    final generatedContent =
        '''
// GENERATED CODE - DO NOT MODIFY BY HAND
// This file is generated during build process

/// Build timestamp - automatically generated at build time
final DateTime buildDateTime = DateTime(${now.year}, ${now.month}, ${now.day}, ${now.hour}, ${now.minute}, ${now.second});
''';

    final outputId = AssetId(
      buildStep.inputId.package,
      'lib/generated/build_time.dart',
    );
    await buildStep.writeAsString(outputId, generatedContent);
  }
}

Builder buildTimeBuilder(BuilderOptions options) => BuildTimeBuilder();
