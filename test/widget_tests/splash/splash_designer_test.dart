import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/splash/widgets/splash_designer.dart';

import '../utils/main_widget.dart';

void main() {
  group('SplashDesigner -', () {
    testWidgets(
      "Should find 'DESIGNED BY' and 'KILLY.IO | WINE' texts",
      (tester) async {
        await tester.pumpWidget(MainWidget(
          child: SplashDesigner(),
        ));

        final designedByFinder = find.text('DESIGNED BY');
        final designerFinder = find.text('KILLY.IO | WINE');

        expect(designedByFinder, findsOneWidget);
        expect(designerFinder, findsOneWidget);
      },
    );
  });
}
