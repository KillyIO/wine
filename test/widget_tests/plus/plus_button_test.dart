import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/plus/widgets/plus_button.dart';

import '../utils/main_widget.dart';

void main() {
  group('PlusButton -', () {
    testWidgets('completer should be true', (WidgetTester tester) async {
      final completer = Completer<void>();

      await tester.pumpWidget(MainWidget(
        child: PlusButton(
          key: const Key('test_plus_button'),
          leadingIconData: Feather.settings,
          onPressed: completer.complete,
          title: 'TEST',
          trailingIconData: Icons.keyboard_arrow_right,
        ),
      ));
      await tester.pump();

      final plusButton = find.byKey(const Key('test_plus_button'));

      await tester.tap(plusButton);
      await tester.pump();

      expect(completer.isCompleted, true);

      expect(find.text('TEST'), findsOneWidget);
      expect(find.byIcon(Feather.settings), findsOneWidget);
      expect(find.byIcon(Icons.keyboard_arrow_right), findsOneWidget);
    });
  });
}
