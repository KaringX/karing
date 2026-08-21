import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:karing/screens/widgets/text.dart';

void main() {
  testWidgets('EmojiText applies the emoji font only to emoji spans', (
    tester,
  ) async {
    const inheritedStyle = TextStyle(
      fontFamily: 'TextFont',
      fontSize: 16,
      color: Colors.red,
    );

    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(platform: TargetPlatform.linux),
        home: const DefaultTextStyle(
          style: inheritedStyle,
          child: EmojiText('🇫🇮 Helsinki'),
        ),
      ),
    );

    final richText = tester.widget<RichText>(
      find.descendant(
        of: find.byType(EmojiText),
        matching: find.byType(RichText),
      ),
    );
    final spans = (richText.text as TextSpan).children!.cast<TextSpan>();

    expect(spans.map((span) => span.text), ['🇫🇮', ' Helsinki']);
    expect(spans.first.style!.fontFamily, 'Emoji');
    expect(spans.last.style!.fontFamily, 'TextFont');
    expect(spans.first.style!.fontSize, 16);
    expect(spans.last.style!.color, Colors.red);
  });

  testWidgets('EmojiText preserves an explicit text style', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(platform: TargetPlatform.linux),
        home: const EmojiText(
          'Москва 🇷🇺 Extra',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );

    final richText = tester.widget<RichText>(
      find.descendant(
        of: find.byType(EmojiText),
        matching: find.byType(RichText),
      ),
    );
    final spans = (richText.text as TextSpan).children!.cast<TextSpan>();

    expect(spans.map((span) => span.text), ['Москва ', '🇷🇺', ' Extra']);
    expect(spans[0].style!.fontFamily, isNot('Emoji'));
    expect(spans[1].style!.fontFamily, 'Emoji');
    expect(spans[2].style!.fontFamily, isNot('Emoji'));
    expect(
      spans.every((span) => span.style!.fontWeight == FontWeight.bold),
      isTrue,
    );
  });

  testWidgets('EmojiText leaves non-flag emoji to the normal font fallback', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(platform: TargetPlatform.linux),
        home: const EmojiText('Fast ⭐ server'),
      ),
    );

    final richText = tester.widget<RichText>(
      find.descendant(
        of: find.byType(EmojiText),
        matching: find.byType(RichText),
      ),
    );
    final spans = (richText.text as TextSpan).children!.cast<TextSpan>();

    expect(spans, hasLength(1));
    expect(spans.single.text, 'Fast ⭐ server');
    expect(spans.single.style!.fontFamily, isNot('Emoji'));
  });

  testWidgets('EmojiText preserves native flag rendering on Android', (
    tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        theme: ThemeData(platform: TargetPlatform.android),
        home: const EmojiText('🇫🇮 Helsinki'),
      ),
    );

    final richText = tester.widget<RichText>(
      find.descendant(
        of: find.byType(EmojiText),
        matching: find.byType(RichText),
      ),
    );
    final spans = (richText.text as TextSpan).children!.cast<TextSpan>();

    expect(spans, hasLength(1));
    expect(spans.single.text, '🇫🇮 Helsinki');
    expect(spans.single.style!.fontFamily, isNot('Emoji'));
  });
}
