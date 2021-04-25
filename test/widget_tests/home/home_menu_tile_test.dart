import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/home/widgets/home_menu_tile.dart';

import '../utils/main_widget.dart';

void main() {
  group('HomeMenuTile -', () {
    testWidgets('Should be true', (WidgetTester tester) async {
      final completer = Completer<void>();

      await tester.pumpWidget(MainWidget(
        child: HomeMenuTile(
          key: const Key('test_home_menu_tile'),
          onPressed: completer.complete,
          text: 'Hello World!',
        ),
      ));
      await tester.pump();

      final homeMenuTile = find.byKey(const Key('test_home_menu_tile'));

      await tester.tap(homeMenuTile);
      await tester.pump();

      expect(find.text('Hello World!'), findsOneWidget);
      expect(completer.isCompleted, true);
    });
  });
}
