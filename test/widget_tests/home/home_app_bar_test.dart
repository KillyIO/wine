import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/presentation/home/widgets/home_app_bar.dart';

import '../utils/main_widget.dart';

void main() {
  group('HomeAppBar -', () {
    testWidgets(
      'Should not find new Series button',
      (WidgetTester tester) async {
        await tester.pumpWidget(MainWidget(
          child: HomeAppBar(),
        ));

        final filterButton = find.byKey(const Key('filter_button'));
        final newSeriesButton = find.byKey(const Key('new_series_button'));
        final menuButton = find.byKey(const Key('menu_button'));

        expect(filterButton, findsOneWidget);
        expect(newSeriesButton, findsNothing);
        expect(menuButton, findsOneWidget);
      },
    );

    testWidgets(
      'Should find new Series button',
      (WidgetTester tester) async {
        await tester.pumpWidget(MainWidget(
          child: HomeAppBar(),
        ));

        final filterButton = find.byKey(const Key('filter_button'));
        final newSeriesButton = find.byKey(const Key('new_series_button'));
        final menuButton = find.byKey(const Key('menu_button'));

        expect(filterButton, findsOneWidget);
        expect(newSeriesButton, findsOneWidget);
        expect(menuButton, findsOneWidget);
      },
    );
  });
}
