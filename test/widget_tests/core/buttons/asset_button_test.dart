import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/core/buttons/asset_button.dart';
import 'package:wine/utils/constants/icons.dart';

import '../../utils/test_widget.dart';

void main() {
  group('AssetButton -', () {
    testWidgets('completer should be true', (tester) async {
      final completer = Completer<void>();

      await tester.pumpWidget(
        TestWidget(
          child: AssetButton(
            imagePath: plusIcon,
            key: const Key('test_asset_button'),
            onPressed: completer.complete,
          ),
        ),
      );

      final assetButton = find.byKey(const Key('test_asset_button'));

      await tester.tap(assetButton);
      await tester.pumpAndSettle();

      expect(completer.isCompleted, isTrue);
    });
  });
}
