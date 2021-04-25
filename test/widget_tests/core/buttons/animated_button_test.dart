import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/core/buttons/animated_button.dart';
import 'package:wine/utils/assets/animations.dart';

import '../../utils/main_widget.dart';

void main() {
  group('AnimatedButton -', () {
    testWidgets('Should be true', (WidgetTester tester) async {
      final completer = Completer<void>();

      await tester.pumpWidget(MainWidget(
        child: AnimatedButton(
          animation: completer.isCompleted ? 'menu_to_x' : 'x_to_menu',
          filename: menuAnimation,
          key: const Key('test_animation_button'),
          onPressed: completer.complete,
        ),
      ));

      final animationButton = find.byKey(const Key('test_animation_button'));

      await tester.tap(animationButton);
      await tester.pump();

      expect(completer.isCompleted, isTrue);
      expect(
        (animationButton.evaluate().single.widget as AnimatedButton).animation,
        'x_to_menu',
      );
    });
  });
}
