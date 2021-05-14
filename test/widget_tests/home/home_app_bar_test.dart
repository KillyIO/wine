import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/presentation/home/widgets/home_app_bar.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../utils/test_widget.dart';

void main() {
  group('HomeAppBar -', () {
    late IAuthFacade _authFacade;

    setUp(() {
      _authFacade = MockAuthFacade();
    });

    testWidgets('Should not find new Series button', (tester) async {
      when(() => _authFacade.isLoggedIn).thenReturn(true);
      when(() => _authFacade.isAnonymous).thenReturn(true);

      await tester.pumpWidget(TestWidget(
        child: MultiBlocProvider(
          providers: <BlocProvider>[
            BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(_authFacade),
            ),
            BlocProvider<HomeNavigationBloc>(
              create: (context) => HomeNavigationBloc(),
            ),
          ],
          child: HomeAppBar(),
        ),
      ));

      final filterButton = find.byKey(const Key('filter_button'));
      final newSeriesButton = find.byKey(const Key('new_series_button'));
      final menuButton = find.byKey(const Key('menu_button_closed'));

      expect(filterButton, findsOneWidget);
      expect(newSeriesButton, findsNothing);
      expect(menuButton, findsOneWidget);
    });

    testWidgets('Should find new Series button', (tester) async {
      when(() => _authFacade.isLoggedIn).thenReturn(true);
      when(() => _authFacade.isAnonymous).thenReturn(false);

      await tester.pumpWidget(TestWidget(
        child: MultiBlocProvider(
          providers: <BlocProvider>[
            BlocProvider<AuthBloc>(
              create: (context) =>
                  AuthBloc(_authFacade)..add(const AuthEvent.authChanged()),
            ),
            BlocProvider<HomeNavigationBloc>(
              create: (context) => HomeNavigationBloc(),
            ),
          ],
          child: HomeAppBar(),
        ),
      ));
      await tester.pumpAndSettle();

      final filterButton = find.byKey(const Key('filter_button'));
      final newSeriesButton = find.byKey(const Key('new_series_button'));
      final menuButton = find.byKey(const Key('menu_button_closed'));

      expect(filterButton, findsOneWidget);
      expect(newSeriesButton, findsOneWidget);
      expect(menuButton, findsOneWidget);
    });
  });
}
