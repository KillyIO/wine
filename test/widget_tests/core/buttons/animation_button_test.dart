import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/core/buttons/animation_button.dart';
import 'package:wine/utils/assets/animations.dart';

import '../../utils/main_widget.dart';

void main() {
  group('AnimationButton -', () {
    testWidgets('Should be true', (WidgetTester tester) async {
      final completer = Completer<void>();

      await tester.pumpWidget(MainWidget(
        child: AnimationButton(
          animation: completer.isCompleted ? 'menu_to_x' : 'x_to_menu',
          filename: menuAnimation,
          key: const Key('animation_button'),
          onPressed: completer.complete,
        ),
      ));

      final animationButton = find.byKey(const Key('animation_button'));

      await tester.tap(animationButton);
      expect(completer.isCompleted, isTrue);
    });
  });
}
