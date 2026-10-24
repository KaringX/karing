import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/widgets/text_field.dart';

void main() {
  const channel = MethodChannel('com.nebula.karing/tv_text_input');
  final binding = TestWidgetsFlutterBinding.ensureInitialized();
  late List<MethodCall> calls;
  Future<Object?> Function(MethodCall)? response;

  setUp(() {
    TextFieldEx.popupEdit = true;
    calls = [];
    response = null;
    binding.defaultBinaryMessenger.setMockMethodCallHandler(channel, (call) {
      calls.add(call);
      return response?.call(call) ?? Future.value(null);
    });
  });

  tearDown(() {
    binding.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
    TextFieldEx.popupEdit = false;
  });

  Future<void> pumpField(WidgetTester tester, TextFieldEx field) async {
    await tester.pumpWidget(
      TranslationProvider(
        child: MaterialApp(home: Scaffold(body: field)),
      ),
    );
  }

  Future<void> open(WidgetTester tester) async {
    await tester.tap(find.byType(TextField));
    await tester.pumpAndSettle();
  }

  Map<String, dynamic> value(String text) => TextEditingValue(
    text: text,
    selection: TextSelection.collapsed(offset: text.length),
  ).toJSON();

  testWidgets('TV confirmation applies formatters and length limit once', (
    tester,
  ) async {
    final controller = TextEditingController(text: '1');
    addTearDown(controller.dispose);
    final changes = <String>[];
    int submitted = 0;
    response = (_) async => value('a23456');
    await pumpField(
      tester,
      TextFieldEx(
        controller: controller,
        maxLength: 3,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        onChanged: changes.add,
        onSubmitted: (_) => submitted++,
      ),
    );
    await open(tester);
    expect(calls.single.method, 'edit');
    expect(controller.text, '234');
    expect(changes, ['234']);
    expect(submitted, 0);
  });

  testWidgets('cancel leaves the original value and callbacks unchanged', (
    tester,
  ) async {
    final controller = TextEditingController.fromValue(
      TextEditingValue(
        text: 'original',
        selection: const TextSelection(baseOffset: 1, extentOffset: 4),
      ),
    );
    addTearDown(controller.dispose);
    final original = controller.value;
    int changed = 0;
    await pumpField(
      tester,
      TextFieldEx(controller: controller, onChanged: (_) => changed++),
    );
    await open(tester);
    expect(calls, hasLength(1));
    expect(controller.text, original.text);
    expect(changed, 0);
  });

  testWidgets(
    'password configuration and value are sent to the native editor',
    (tester) async {
      final controller = TextEditingController(text: 'dummy');
      addTearDown(controller.dispose);
      await pumpField(
        tester,
        TextFieldEx(controller: controller, obscureText: true),
      );
      await open(tester);
      final args = calls.single.arguments as Map;
      expect(args['configuration']['obscureText'], true);
      expect(args['value']['text'], 'dummy');
      expect(
        tester.widget<EditableText>(find.byType(EditableText)).obscureText,
        true,
      );
    },
  );

  testWidgets('controller-less fields retain confirmed edits', (tester) async {
    final changes = <String>[];
    response = (_) async => value('kept');
    await pumpField(tester, TextFieldEx(onChanged: changes.add));
    await open(tester);
    expect(
      tester.widget<EditableText>(find.byType(EditableText)).controller.text,
      'kept',
    );
    expect(changes, ['kept']);
    await open(tester);
    expect((calls.last.arguments as Map)['value']['text'], 'kept');
  });

  testWidgets('URL and multiline input types are preserved', (tester) async {
    await pumpField(tester, const TextFieldEx(keyboardType: TextInputType.url));
    await open(tester);
    expect(
      (calls.single.arguments as Map)['configuration']['inputType']['name'],
      'TextInputType.url',
    );
    calls.clear();
    await pumpField(
      tester,
      const TextFieldEx(key: ValueKey('multi'), maxLines: 5),
    );
    await open(tester);
    expect(
      (calls.single.arguments as Map)['configuration']['inputType']['name'],
      'TextInputType.multiline',
    );
  });

  for (final disabled in [false, true]) {
    testWidgets(
      '${disabled ? 'disabled' : 'read-only'} fields cannot open an editor',
      (tester) async {
        await pumpField(
          tester,
          TextFieldEx(readOnly: !disabled, enabled: !disabled),
        );
        await open(tester);
        expect(calls, isEmpty);
        expect(find.byType(SimpleDialog), findsNothing);
      },
    );
  }

  testWidgets('mobile input does not use the native TV channel', (
    tester,
  ) async {
    TextFieldEx.popupEdit = false;
    await pumpField(tester, const TextFieldEx());
    await tester.enterText(find.byType(TextField), 'mobile');
    expect(calls, isEmpty);
    expect(
      tester.widget<EditableText>(find.byType(EditableText)).controller.text,
      'mobile',
    );
  });

  testWidgets('a supplied undo controller can undo a confirmed native edit', (
    tester,
  ) async {
    final controller = TextEditingController(text: 'before');
    final undo = UndoHistoryController();
    addTearDown(controller.dispose);
    addTearDown(undo.dispose);
    await pumpField(
      tester,
      TextFieldEx(controller: controller, undoController: undo),
    );
    tester
        .widget<EditableText>(find.byType(EditableText))
        .focusNode
        .requestFocus();
    await tester.pump(const Duration(milliseconds: 600));
    response = (_) async => value('after');
    await open(tester);
    await tester.pump(const Duration(milliseconds: 600));
    expect(controller.text, 'after');
    undo.undo();
    await tester.pump();
    expect(controller.text, 'before');
  });

  testWidgets(
    'replacing the controller while editing discards the old result',
    (tester) async {
      final oldController = TextEditingController(text: 'old');
      final newController = TextEditingController(text: 'new');
      addTearDown(oldController.dispose);
      addTearDown(newController.dispose);
      final pending = Completer<Object?>();
      response = (_) => pending.future;
      await pumpField(tester, TextFieldEx(controller: oldController));
      await open(tester);
      await pumpField(tester, TextFieldEx(controller: newController));
      pending.complete(value('stale'));
      await tester.pumpAndSettle();
      expect(newController.text, 'new');
      expect(oldController.text, 'old');
    },
  );

  testWidgets('TV autocomplete candidates are available in the native editor', (
    tester,
  ) async {
    await pumpField(
      tester,
      const TextFieldEx(autocompleteCandidates: ['proxy one', 'proxy two']),
    );
    await open(tester);
    expect((calls.single.arguments as Map)['suggestions'], [
      'proxy one',
      'proxy two',
    ]);
  });

  testWidgets('remote Select opens a single native editor', (tester) async {
    final pending = Completer<Object?>();
    response = (_) => pending.future;
    await pumpField(tester, const TextFieldEx());
    tester
        .widget<EditableText>(find.byType(EditableText))
        .focusNode
        .requestFocus();
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pump();
    await tester.sendKeyEvent(LogicalKeyboardKey.select);
    await tester.pump();
    expect(calls, hasLength(1));
    pending.complete(null);
    await tester.pumpAndSettle();
  });

  testWidgets('fallback editing does not duplicate the external undo history', (
    tester,
  ) async {
    final controller = TextEditingController(text: 'before');
    final undo = UndoHistoryController();
    addTearDown(controller.dispose);
    addTearDown(undo.dispose);
    response = (_) async => throw MissingPluginException();
    await pumpField(
      tester,
      TextFieldEx(controller: controller, undoController: undo),
    );
    await open(tester);
    final fallback = find.descendant(
      of: find.byType(SimpleDialog),
      matching: find.byType(TextField),
    );
    await tester.pump(const Duration(milliseconds: 600));
    await tester.enterText(fallback, 'after');
    await tester.pump(const Duration(milliseconds: 600));
    expect(
      tester
          .widgetList<EditableText>(find.byType(EditableText))
          .where((field) => identical(field.undoController, undo)),
      hasLength(1),
    );
    undo.undo();
    await tester.pump();
    expect(controller.text, 'before');
  });

  testWidgets('disposing a field during editing ignores the result', (
    tester,
  ) async {
    final pending = Completer<Object?>();
    response = (_) => pending.future;
    await pumpField(tester, const TextFieldEx());
    await open(tester);
    expect(calls, hasLength(1));
    await tester.pumpWidget(const SizedBox());
    pending.complete(value('late'));
    await tester.pumpAndSettle();
    expect(tester.takeException(), isNull);
  });

  testWidgets('a concurrently changed value is not overwritten', (
    tester,
  ) async {
    final controller = TextEditingController(text: 'initial');
    addTearDown(controller.dispose);
    final pending = Completer<Object?>();
    response = (_) => pending.future;
    await pumpField(tester, TextFieldEx(controller: controller));
    await open(tester);
    expect(calls, hasLength(1));
    controller.text = 'external';
    pending.complete(value('stale'));
    await tester.pumpAndSettle();
    expect(controller.text, 'external');
  });

  testWidgets('missing native support retains the existing Flutter dialog', (
    tester,
  ) async {
    response = (_) async => throw MissingPluginException();
    await pumpField(tester, const TextFieldEx());
    await open(tester);
    expect(calls, hasLength(1));
    expect(find.byType(SimpleDialog), findsOneWidget);
  });
}
