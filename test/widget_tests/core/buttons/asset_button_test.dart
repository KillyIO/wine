import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/core/buttons/asset_button.dart';
import 'package:wine/utils/assets/icons.dart';

import '../../utils/main_widget.dart';

void main() {
  group('AssetButton -', () {
    testWidgets('', (WidgetTester tester) async {
      final completer = Completer<void>();

      await tester.pumpWidget(MainWidget(
        child: AssetButton(
          imagePath: plusIcon,
          key: const Key('asset_button'),
          onPressed: completer.complete,
        ),
      ));

      final assetButton = find.byKey(const Key('asset_button'));

      await tester.tap(assetButton);
      expect(completer.isCompleted, isTrue);
    });
  });
}
