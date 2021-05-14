import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:line_icons/line_icons.dart';
import 'package:wine/presentation/core/buttons/tile_button.dart';

import '../../utils/test_widget.dart';

void main() {
  group('TileButton -', () {
    testWidgets('completer should be true', (tester) async {
      final completer = Completer<void>();

      await tester.pumpWidget(TestWidget(
        child: TileButton(
          key: const Key('test_tile_button'),
          leadingIconData: LineIcons.cog,
          onPressed: completer.complete,
          title: 'TEST',
          trailingIconData: Icons.keyboard_arrow_right,
        ),
      ));

      final tileButton = find.byKey(const Key('test_tile_button'));

      await tester.tap(tileButton);
      await tester.pumpAndSettle();

      expect(completer.isCompleted, isTrue);

      expect(find.text('TEST'), findsOneWidget);
      expect(find.byIcon(LineIcons.cog), findsOneWidget);
      expect(find.byIcon(Icons.keyboard_arrow_right), findsOneWidget);
    });
  });
}
