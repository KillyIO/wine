import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/plus/widgets/plus_banner.dart';

import '../utils/test_widget.dart';

void main() {
  group('PlusBanner -', () {
    testWidgets('Should find an image and text PLUS', (tester) async {
      await tester.pumpWidget(const TestWidget(
        child: PlusBanner(),
      ));
      await tester.pump();

      expect(find.byType(Image), findsOneWidget);
    });
  });
}
