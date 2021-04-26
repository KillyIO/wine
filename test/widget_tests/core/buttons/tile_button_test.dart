import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/core/buttons/tile_button.dart';

import '../../utils/main_widget.dart';

void main() {
  group('TileButton -', () {
    testWidgets('completer should be true', (WidgetTester tester) async {
      final completer = Completer<void>();

      await tester.pumpWidget(MainWidget(
        child: TileButton(
          key: const Key('test_tile_button'),
          leadingIconData: Feather.settings,
          onPressed: completer.complete,
          title: 'TEST',
          trailingIconData: Icons.keyboard_arrow_right,
        ),
      ));
      await tester.pump();

      final tileButton = find.byKey(const Key('test_tile_button'));

      await tester.tap(tileButton);
      await tester.pump();

      expect(completer.isCompleted, true);

      expect(find.text('TEST'), findsOneWidget);
      expect(find.byIcon(Feather.settings), findsOneWidget);
      expect(find.byIcon(Icons.keyboard_arrow_right), findsOneWidget);
    });
  });
}
