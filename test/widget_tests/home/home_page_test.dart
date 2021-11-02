import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';

import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/home/widgets/home_app_bar.dart';
import 'package:wine/presentation/onboarding/onboarding_page.dart';
import 'package:wine/presentation/routes/router.dart';

import '../../mocks/domain_mocks.dart';
import '../../unit_tests/utils/constants.dart';
import '../utils/injection_helper.dart';
import '../utils/test_router_widget.dart';
import '../utils/test_widget.dart';

void main() {
  late IAuthFacade _authFacade;
  late IDefaultCoversRepository _defaultCoversRepository;
  late ISessionsRepository _sessionsRepository;
  late ISettingsRepository _settingsRepository;
  late IUserRepository _userRepository;

  setUp(() {
    registerFallbackValue<User>(MockUser());

    setupInjection();

    _authFacade = getIt<IAuthFacade>();
    _defaultCoversRepository = getIt<IDefaultCoversRepository>();
    _sessionsRepository = getIt<ISessionsRepository>();
    _settingsRepository = getIt<ISettingsRepository>();
    _userRepository = getIt<IUserRepository>();
  });

  group('HomePage -', () {
    group('Errors -', () {
      group('auth -', () {
        setUp(() {
          when(() => _authFacade.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([Option.none()]));
        });

        testWidgets(
          'Should display ErrorDialog with AuthFailure.serverError message',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(false);
            when(_authFacade.logInAnonymously)
                .thenAnswer((_) async => Err(AuthFailure.serverError()));

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(TestRouterWidget(
              appRouter: AppRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
              ],
            ));
            await tester.pumpAndSettle();

            final restartButton = find.text('RESTART');

            expect(find.byKey(const Key('setup_error_dialog')), findsOneWidget);
            expect(find.text('A problem occurred on our end!'), findsOneWidget);
            expect(restartButton, findsOneWidget);
          },
        );

        testWidgets(
          'Should display ErrorDialog with AuthFailure.unexpected message',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(false);
            when(_authFacade.logInAnonymously)
                .thenAnswer((_) async => Err(const AuthFailure.unexpected()));

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(TestRouterWidget(
              appRouter: AppRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
              ],
            ));
            await tester.pumpAndSettle();

            final restartButton = find.text('RESTART');

            expect(find.byKey(const Key('setup_error_dialog')), findsOneWidget);
            expect(find.text('An unexpected error occured!'), findsOneWidget);
            expect(restartButton, findsOneWidget);
          },
        );
      });

      group('defaultCovers -', () {
        setUp(() {
          when(() => _authFacade.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([Option.none()]));
        });

        testWidgets(
          '''Should display ErrorDialog with DefaultCoversFailure.defaultCoverURLsNotCached message''',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(false);
            when(_authFacade.logInAnonymously)
                .thenAnswer((_) async => Ok(unit));
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs)
                .thenAnswer((_) async => Ok(testDefaultCovers));
            when(() => _defaultCoversRepository.cacheDefaultCoverURLs(any()))
                .thenAnswer((_) async => Err(
                    const DefaultCoversFailure.defaultCoverURLsNotCached()));

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(TestRouterWidget(
              appRouter: AppRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
              ],
            ));
            await tester.pumpAndSettle();

            final restartButton = find.text('RESTART');

            expect(find.byKey(const Key('setup_error_dialog')), findsOneWidget);
            expect(
              find.text('Default covers could not be cached!'),
              findsOneWidget,
            );
            expect(restartButton, findsOneWidget);
          },
        );

        testWidgets(
          '''Should display ErrorDialog with DefaultCoversFailure.defaultCoverURLsNotLoaded message''',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(true);
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs).thenAnswer(
              (_) async =>
                  Err(const DefaultCoversFailure.defaultCoverURLsNotLoaded()),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(TestRouterWidget(
              appRouter: AppRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
              ],
            ));
            await tester.pumpAndSettle();

            final restartButton = find.text('RESTART');

            expect(find.byKey(const Key('setup_error_dialog')), findsOneWidget);
            expect(
              find.text('Default covers could not be loaded!'),
              findsOneWidget,
            );
            expect(restartButton, findsOneWidget);
          },
        );

        testWidgets(
          '''Should display ErrorDialog with DefaultCoversFailure.serverError message''',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(true);
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs).thenAnswer(
              (_) async => Err(const DefaultCoversFailure.serverError()),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(TestRouterWidget(
              appRouter: AppRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
              ],
            ));
            await tester.pumpAndSettle();

            final restartButton = find.text('RESTART');

            expect(find.byKey(const Key('setup_error_dialog')), findsOneWidget);
            expect(find.text('A problem occurred on our end!'), findsOneWidget);
            expect(restartButton, findsOneWidget);
          },
        );

        testWidgets(
          '''Should display ErrorDialog with DefaultCoversFailure.unexpected messsage''',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(true);
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs).thenAnswer(
              (_) async => Err(const DefaultCoversFailure.unexpected()),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(TestRouterWidget(
              appRouter: AppRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
              ],
            ));
            await tester.pumpAndSettle();

            final restartButton = find.text('RESTART');

            expect(find.byKey(const Key('setup_error_dialog')), findsOneWidget);
            expect(find.text('An unexpected error occured!'), findsOneWidget);
            expect(restartButton, findsOneWidget);
          },
        );
      });

      group('sessions -', () {
        setUp(() {
          when(() => _authFacade.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([Option.none()]));
        });

        testWidgets(
          '''Should display ErrorDialog with SessionsFailure.sessionNotCreated message''',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(false);
            when(_authFacade.logInAnonymously)
                .thenAnswer((_) async => Ok(unit));
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs)
                .thenAnswer((_) async => Ok(testDefaultCovers));
            when(() => _defaultCoversRepository.cacheDefaultCoverURLs(any()))
                .thenAnswer((_) async => Ok(unit));
            when(_settingsRepository.fetchSettings)
                .thenAnswer((_) async => Ok(testSettings));
            when(_sessionsRepository.fetchSession).thenAnswer(
              (_) async => Err(const SessionsFailure.sessionNotFound()),
            );
            when(_sessionsRepository.createSession).thenAnswer(
              (_) async => Err(const SessionsFailure.sessionNotCreated()),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(TestRouterWidget(
              appRouter: AppRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
              ],
            ));
            await tester.pump();
            await tester.pump();

            final restartButton = find.text('RESTART');

            expect(find.byKey(const Key('setup_error_dialog')), findsOneWidget);
            expect(find.text('Session could not be created!'), findsOneWidget);
            expect(restartButton, findsOneWidget);
          },
        );

        testWidgets(
          '''Should display ErrorDialog with SessionsFailure.sessionNotUpdated message''',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(false);
            when(_authFacade.logInAnonymously)
                .thenAnswer((_) async => Ok(unit));
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs)
                .thenAnswer((_) async => Ok(testDefaultCovers));
            when(() => _defaultCoversRepository.cacheDefaultCoverURLs(any()))
                .thenAnswer((_) async => Ok(unit));
            when(_settingsRepository.fetchSettings)
                .thenAnswer((_) async => Ok(testSettings));
            when(_sessionsRepository.fetchSession)
                .thenAnswer((_) async => Ok(testUser));
            when(() => _userRepository.loadUser(any()))
                .thenAnswer((_) async => Ok(testUser));
            when(() => _sessionsRepository.updateSession(any())).thenAnswer(
              (_) async => Err(const SessionsFailure.sessionNotUpdated()),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(TestRouterWidget(
              appRouter: AppRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
              ],
            ));
            await tester.pump();
            await tester.pump();

            final restartButton = find.text('RESTART');

            expect(find.byKey(const Key('setup_error_dialog')), findsOneWidget);
            expect(find.text('Session could not be updated!'), findsOneWidget);
            expect(restartButton, findsOneWidget);
          },
        );
      });

      group('settings -', () {
        setUp(() {
          when(() => _authFacade.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([Option.none()]));
        });

        testWidgets(
          '''Should display ErrorDialog with SettingsFailure.settingsNotInitialized message''',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(false);
            when(_authFacade.logInAnonymously)
                .thenAnswer((_) async => Ok(unit));
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs)
                .thenAnswer((_) async => Ok(testDefaultCovers));
            when(() => _defaultCoversRepository.cacheDefaultCoverURLs(any()))
                .thenAnswer((_) async => Ok(unit));
            when(_settingsRepository.fetchSettings).thenAnswer(
              (_) async => Err(const SettingsFailure.settingsNotFound()),
            );
            when(_settingsRepository.initializeSettings).thenAnswer(
              (_) async => Err(const SettingsFailure.settingsNotInitialized()),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(TestRouterWidget(
              appRouter: AppRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
              ],
            ));
            await tester.pump();
            await tester.pump();

            final restartButton = find.text('RESTART');

            expect(find.byKey(const Key('setup_error_dialog')), findsOneWidget);
            expect(
              find.text('Settings could not be initialized!'),
              findsOneWidget,
            );
            expect(restartButton, findsOneWidget);
          },
        );
      });

      group('user -', () {
        setUp(() {
          when(() => _authFacade.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([Option.none()]));
        });

        testWidgets(
          '''Should display ErrorDialog with UserFailure.userNotFound message''',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(false);
            when(_authFacade.logInAnonymously)
                .thenAnswer((_) async => Ok(unit));
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs)
                .thenAnswer((_) async => Ok(testDefaultCovers));
            when(() => _defaultCoversRepository.cacheDefaultCoverURLs(any()))
                .thenAnswer((_) async => Ok(unit));
            when(_settingsRepository.fetchSettings)
                .thenAnswer((_) async => Ok(testSettings));
            when(_sessionsRepository.fetchSession)
                .thenAnswer((_) async => Ok(testUser));
            when(() => _userRepository.loadUser(any()))
                .thenAnswer((_) async => Err(const UserFailure.userNotFound()));

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(TestRouterWidget(
              appRouter: AppRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
              ],
            ));
            await tester.pump();
            await tester.pump();

            final restartButton = find.text('RESTART');

            expect(find.byKey(const Key('setup_error_dialog')), findsOneWidget);
            expect(find.text('User account not found!'), findsOneWidget);
            expect(restartButton, findsOneWidget);
          },
        );
      });
    });

    testWidgets('Should navigate to Onboarding page', (tester) async {
      when(() => _authFacade.authStateChanges)
          .thenAnswer((_) => Stream.fromIterable([Option.none()]));
      when(() => _authFacade.isLoggedIn).thenReturn(false);
      when(_authFacade.logInAnonymously).thenAnswer((_) async => Ok(unit));
      when(() => _authFacade.isAnonymous).thenReturn(true);
      when(_settingsRepository.fetchSettings)
          .thenAnswer((_) async => Ok(testSettings));
      when(_sessionsRepository.fetchSession).thenAnswer(
        (_) async => Err(const SessionsFailure.sessionNotFound()),
      );
      when(_sessionsRepository.createSession).thenAnswer((_) async => Ok(unit));

      final authBloc = getIt<AuthBloc>()..add(const AuthEvent.authChanged());

      await tester.pumpWidget(TestRouterWidget(
        appRouter: AppRouter(),
        providers: [
          BlocProvider<AuthBloc>(create: (_) => authBloc),
          BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
        ],
      ));
      await tester.pumpAndSettle();

      expect(find.byType(OnboardingPage), findsOneWidget);
    });

    group('AppBar -', () {
      testWidgets('Should find 3 buttons', (tester) async {
        when(() => _authFacade.authStateChanges)
            .thenAnswer((_) => Stream.fromIterable([Option.none()]));
        when(() => _authFacade.isLoggedIn).thenReturn(true);
        when(() => _authFacade.isAnonymous).thenReturn(true);
        when(_settingsRepository.fetchSettings)
            .thenAnswer((_) async => Ok(testSettings));
        when(_sessionsRepository.fetchSession)
            .thenAnswer((_) async => Ok(testUser));

        final authBloc = getIt<AuthBloc>()..add(const AuthEvent.authChanged());

        await tester.pumpWidget(TestWidget(
          child: MultiBlocProvider(
            providers: <BlocProvider>[
              BlocProvider<AuthBloc>(create: (_) => authBloc),
              BlocProvider<HomeNavigationBloc>(
                create: (_) => getIt<HomeNavigationBloc>(),
              ),
            ],
            child: const HomeAppBar(),
          ),
        ));

        final homeFilterButton = find.byKey(const Key('home_filter_button'));
        final homeNewSeriesButton =
            find.byKey(const Key('home_new_series_button'));
        final homeMenuButton = find.byKey(const Key('home_menu_button'));

        expect(homeFilterButton, findsOneWidget);
        expect(homeNewSeriesButton, findsOneWidget);
        expect(homeMenuButton, findsOneWidget);
      });
    });

    group('Drawer -', () {
      setUp(() {
        when(() => _authFacade.isLoggedIn).thenReturn(true);
        when(() => _authFacade.isAnonymous).thenReturn(true);
        when(_settingsRepository.fetchSettings)
            .thenAnswer((_) async => Ok(testSettings));
        when(_sessionsRepository.fetchSession)
            .thenAnswer((_) async => Ok(testUser));
      });

      // ignore: todo
      // TODO test top left icon open/close drawer

      testWidgets('Should find 3 buttons', (tester) async {
        when(() => _authFacade.authStateChanges)
            .thenAnswer((_) => Stream.fromIterable([Option.none()]));

        final authBloc = getIt<AuthBloc>()..add(const AuthEvent.authChanged());

        await tester.pumpWidget(TestRouterWidget(
          appRouter: AppRouter(),
          providers: <BlocProvider>[
            BlocProvider<AuthBloc>(create: (_) => authBloc),
            BlocProvider<HomeBloc>(
              create: (_) => getIt<HomeBloc>(),
            ),
            BlocProvider<HomeNavigationBloc>(
              create: (_) => getIt<HomeNavigationBloc>(),
            ),
          ],
        ));
        await tester.pumpAndSettle();

        final homeMenuButton = find.byKey(const Key('home_menu_button'));

        await tester.tap(homeMenuButton);
        await tester.pump();

        final homeMenuCloseButton =
            find.byKey(const Key('home_menu_close_button'));
        final homeMenuLibraryTile =
            find.byKey(const Key('home_menu_library_tile'));
        final homeMenuPlusTile = find.byKey(const Key('home_menu_plus_tile'));

        expect(homeMenuCloseButton, findsOneWidget);
        expect(homeMenuLibraryTile, findsOneWidget);
        expect(homeMenuPlusTile, findsOneWidget);
      });
    });

    // ignore: todo
    // TODO test "PLUS" button navigate to PlusPage

    // ignore: todo
    // TODO test "LIBRARY" button navigate to LibraryPage

    // ignore: todo
    // TODO test series is displayed

    // ignore: todo
    // TODO test if more than 5 series shoud find top five series

    // ignore: todo
    // TODO test plus icon navigate to NewSeries
  });
}
