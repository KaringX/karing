import 'package:characters/characters.dart';
import 'package:flutter_emoji/flutter_emoji.dart';

abstract final class EmojiUtils {
  static final EmojiParser _parser = EmojiParser();
  static const String _charColon = '/'; //这里只能用/, 用其他符号会导致解析出问题
  static final RegExp _regexName = RegExp(r'/([\w-+]+)/');

  static String removeEmoji(String text) {
    if (text.isEmpty) return text;

    final characters = Characters(text);
    final buffer = StringBuffer();
    for (final character in characters) {
      if (_parser.hasEmoji(character)) {
        var result = character;
        result = result.replaceAll(
          character,
          "",
        );

        buffer.write(result);
      } else {
        buffer.write(character);
      }
    }
    return buffer.toString();
  }

  static String unemojify(String text) {
    if (text.isEmpty) return text;

    final characters = Characters(text);
    final buffer = StringBuffer();
    for (final character in characters) {
      if (_parser.hasEmoji(character)) {
        var result = character;
        result = result.replaceAll(
          character,
          _parser.getEmoji(character).full.replaceAll(":", _charColon),
        );

        buffer.write(result);
      } else {
        buffer.write(character);
      }
    }
    return buffer.toString();
  }

  static String emojify(String text, {String Function(String)? fnFormat}) {
    Iterable<Match> matches = _regexName.allMatches(text);
    if (matches.isNotEmpty) {
      var result = text;
      for (Match m in matches) {
        var em = stripColons(m.group(0));
        if (em == null || m.group(0) == null) continue;
        if (_parser.hasName(em)) {
          var pattern = RegExp.escape(m.group(0)!);
          var formattedCode = _parser.get(em).code;
          if (fnFormat != null) {
            formattedCode = fnFormat(formattedCode);
          }
          result =
              result.replaceAll(RegExp(pattern, unicode: true), formattedCode);
        }
      }
      return result;
    }
    return text;
  }

  static String? stripColons(String? name,
      [void Function(String message)? onError]) {
    if (name == null) {
      return null;
    }
    Iterable<Match> matches = _regexName.allMatches(name);
    if (matches.isEmpty) {
      if (onError != null) {
        onError(EmojiMessage.errorMalformedEmojiName);
      }
      return name;
    }
    return name.replaceAll(_charColon, EmojiConst.charEmpty);
  }
}
