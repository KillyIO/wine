import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/core/buttons/animated_button.dart';
import 'package:wine/utils/constants/animations.dart';

import '../../utils/test_widget.dart';

void main() {
  group('AnimatedButton -', () {
    testWidgets('completer should be true', (tester) async {
      final completer = Completer<void>();

      await tester.pumpWidget(
        TestWidget(
          child: AnimatedButton(
            animation: completer.isCompleted ? 'menu_to_x' : 'x_to_menu',
            filename: menuAnimation,
            key: const Key('test_animation_button'),
            onPressed: completer.complete,
          ),
        ),
      );

      final animationButton = find.byKey(const Key('test_animation_button'));

      await tester.tap(animationButton);
      await tester.pumpAndSettle();

      expect(completer.isCompleted, isTrue);
    });
  });
}
