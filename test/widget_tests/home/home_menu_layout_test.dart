import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/presentation/home/home_menu_layout.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../utils/main_widget.dart';

void main() {
  group('HomeMenuLayout -', () {
    late IAuthFacade _authFacade;

    setUp(() {
      _authFacade = MockAuthFacade();
    });

    testWidgets('Should not display LIBRARY button', (tester) async {
      when(() => _authFacade.isLoggedIn).thenReturn(true);
      when(() => _authFacade.isAnonymous).thenReturn(true);

      await tester.pumpWidget(MainWidget(
        child: MultiBlocProvider(
          providers: <BlocProvider>[
            BlocProvider<AuthBloc>(
              create: (context) => AuthBloc(_authFacade),
            ),
            BlocProvider<HomeNavigationBloc>(
              create: (context) => HomeNavigationBloc(),
            ),
          ],
          child: const HomeMenuLayout(),
        ),
      ));
      await tester.pump();

      final libraryMenuTile = find.byKey(const Key('home_menu_library_tile'));
      final plusMenuTile = find.byKey(const Key('home_menu_plus_tile'));

      expect(libraryMenuTile, findsNothing);
      expect(plusMenuTile, findsOneWidget);
    });

    testWidgets('Should display LIBRARY button', (tester) async {
      when(() => _authFacade.isLoggedIn).thenReturn(true);
      when(() => _authFacade.isAnonymous).thenReturn(true);

      await tester.pumpWidget(MainWidget(
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
          child: const HomeMenuLayout(),
        ),
      ));
      await tester.pump();

      final libraryMenuTile = find.byKey(const Key('home_menu_library_tile'));
      final plusMenuTile = find.byKey(const Key('home_menu_plus_tile'));

      expect(libraryMenuTile, findsNothing);
      expect(plusMenuTile, findsOneWidget);
    });
  });
}
