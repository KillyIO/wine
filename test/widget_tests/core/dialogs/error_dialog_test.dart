import 'dart:async';

import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/core/dialogs/error_dialog.dart';

import '../../utils/main_widget.dart';

void main() {
  group('ErrorDialog -', () {
    testWidgets(
      "Should find texts SOMETHING'S WRONG!, Hello World!, DISMISS",
      (tester) async {
        await tester.pumpWidget(MainWidget(
          child: ErrorDialog(
            message: 'Hello World!',
            onPressed: () {},
          ),
        ));
        await tester.pump();

        expect(find.text("SOMETHING'S WRONG!"), findsOneWidget);
        expect(find.text('Hello World!'), findsOneWidget);
        expect(find.text('DISMISS'), findsOneWidget);
      },
    );

    testWidgets('Should find text Button Text', (tester) async {
      await tester.pumpWidget(MainWidget(
        child: ErrorDialog(
          buttonText: 'Button Text',
          message: 'Hello World!',
          onPressed: () {},
        ),
      ));
      await tester.pump();

      expect(find.text('Button Text'), findsOneWidget);
    });

    testWidgets('completer should be true', (tester) async {
      final completer = Completer<void>();

      await tester.pumpWidget(MainWidget(
        child: ErrorDialog(
          message: 'Hello World!',
          onPressed: completer.complete,
        ),
      ));
      await tester.pump();

      final buttonText = find.text('DISMISS');

      await tester.tap(buttonText);
      await tester.pump();

      expect(completer.isCompleted, isTrue);
    });
  });
}
