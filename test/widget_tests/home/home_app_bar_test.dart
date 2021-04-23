import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/presentation/home/widgets/home_app_bar.dart';

import '../../mocks/auth_mocks.dart';
import '../utils/main_widget.dart';

void main() {
  group('HomeAppBar -', () {
    IAuthFacade _authFacade;

    setUp(() {
      _authFacade = MockAuthFacade();
    });

    testWidgets(
      'Should not find new Series button',
      (WidgetTester tester) async {
        when(() => _authFacade.isLoggedIn).thenReturn(true);
        when(() => _authFacade.isAnonymous).thenReturn(true);

        await tester.pumpWidget(MainWidget(
          child: BlocProvider(
            create: (context) => AuthBloc(_authFacade),
            child: HomeAppBar(),
          ),
        ));
        await tester.pump();

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
        when(() => _authFacade.isLoggedIn).thenReturn(true);
        when(() => _authFacade.isAnonymous).thenReturn(false);

        await tester.pumpWidget(MainWidget(
          child: BlocProvider(
            create: (context) =>
                AuthBloc(_authFacade)..add(const AuthEvent.authChanged()),
            child: HomeAppBar(),
          ),
        ));
        await tester.pump();

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
