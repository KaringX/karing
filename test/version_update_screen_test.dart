import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/version_update_screen.dart';

void main() {
  testWidgets('Not Now returns to the previous page', (tester) async {
    final navigatorKey = GlobalKey<NavigatorState>();
    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(
          navigatorKey: navigatorKey,
          home: const Scaffold(body: Text('Previous page')),
        ),
      ),
    );

    navigatorKey.currentState!.push<void>(
      MaterialPageRoute<void>(builder: (_) => const VersionUpdateScreen()),
    );
    await tester.pumpAndSettle();

    await tester.tap(
      find.widgetWithText(TextButton, t.VersionUpdateScreen.cancel),
    );
    await tester.pumpAndSettle();

    expect(find.text('Previous page'), findsOneWidget);
    expect(find.byType(VersionUpdateScreen), findsNothing);
  });
}
