import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/home/widgets/home_menu_tile.dart';

import '../utils/test_widget.dart';

void main() {
  group('HomeMenuTile -', () {
    testWidgets('Should find text Hello World!', (tester) async {
      final completer = Completer<void>();

      await tester.pumpWidget(TestWidget(
        child: HomeMenuTile(
          key: const Key('test_home_menu_tile'),
          onPressed: completer.complete,
          text: 'Hello World!',
        ),
      ));

      expect(find.text('Hello World!'), findsOneWidget);
    });

    testWidgets('completer be true', (tester) async {
      final completer = Completer<void>();

      await tester.pumpWidget(TestWidget(
        child: HomeMenuTile(
          key: const Key('test_home_menu_tile'),
          onPressed: completer.complete,
          text: 'Hello World!',
        ),
      ));

      final homeMenuTile = find.byKey(const Key('test_home_menu_tile'));

      await tester.tap(homeMenuTile);
      await tester.pumpAndSettle();

      expect(completer.isCompleted, true);
    });
  });
}
