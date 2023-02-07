import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user_failure.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/home/widgets/home_app_bar.dart';
import 'package:wine/presentation/routes/router.gr.dart';

import '../../mocks/domain_mocks.dart';
import '../../unit_tests/utils/constants.dart';
import '../utils/injection_helper.dart';
import '../utils/test_router_widget.dart';
import '../utils/test_widget.dart';

void main() {
  late IAuthFacade authFacade;
  late IDefaultCoversRepository defaultCoversRepository;
  late ISessionsRepository sessionsRepository;
  late ISettingsRepository settingsRepository;
  late IUserRepository userRepository;

  setUp(() {
    registerFallbackValue(MockUser());

    setupInjection();

    authFacade = getIt<IAuthFacade>();
    defaultCoversRepository = getIt<IDefaultCoversRepository>();
    sessionsRepository = getIt<ISessionsRepository>();
    settingsRepository = getIt<ISettingsRepository>();
    userRepository = getIt<IUserRepository>();
  });

  group('HomePage -', () {
    group('Errors -', () {
      group('auth -', () {
        setUp(() {
          when(() => authFacade.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([const Option.none()]));
        });

        testWidgets(
          'Should display ErrorDialog with AuthFailure.serverError message',
          (tester) async {
            when(() => authFacade.isLoggedIn).thenReturn(false);
            when(authFacade.logInAnonymously)
                .thenAnswer((_) async => const Err(AuthFailure.serverError()));

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(
              TestRouterWidget(
                appRouter: AppRouter(),
                providers: [
                  BlocProvider<AuthBloc>(create: (_) => authBloc),
                  BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                ],
              ),
            );
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
            when(() => authFacade.isLoggedIn).thenReturn(false);
            when(authFacade.logInAnonymously)
                .thenAnswer((_) async => const Err(AuthFailure.unexpected()));

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(
              TestRouterWidget(
                appRouter: AppRouter(),
                providers: [
                  BlocProvider<AuthBloc>(create: (_) => authBloc),
                  BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                ],
              ),
            );
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
          when(() => authFacade.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([const Option.none()]));
        });

        testWidgets(
          '''Should display ErrorDialog with DefaultCoversFailure.defaultCoverURLsNotCached message''',
          (tester) async {
            when(() => authFacade.isLoggedIn).thenReturn(false);
            when(authFacade.logInAnonymously)
                .thenAnswer((_) async => const Ok(unit));
            when(() => authFacade.isAnonymous).thenReturn(false);
            when(defaultCoversRepository.loadDefaultCovers)
                .thenAnswer((_) async => Ok([testDefaultCover]));
            when(() => defaultCoversRepository.cacheDefaultCovers(any()))
                .thenAnswer(
              (_) async => const Err(
                DefaultCoversFailure.defaultCoversNotCached(),
              ),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(
              TestRouterWidget(
                appRouter: AppRouter(),
                providers: [
                  BlocProvider<AuthBloc>(create: (_) => authBloc),
                  BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                ],
              ),
            );
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
            when(() => authFacade.isLoggedIn).thenReturn(true);
            when(() => authFacade.isAnonymous).thenReturn(false);
            when(defaultCoversRepository.loadDefaultCovers).thenAnswer(
              (_) async =>
                  const Err(DefaultCoversFailure.defaultCoversNotLoaded()),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(
              TestRouterWidget(
                appRouter: AppRouter(),
                providers: [
                  BlocProvider<AuthBloc>(create: (_) => authBloc),
                  BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                ],
              ),
            );
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
            when(() => authFacade.isLoggedIn).thenReturn(true);
            when(() => authFacade.isAnonymous).thenReturn(false);
            when(defaultCoversRepository.loadDefaultCovers).thenAnswer(
              (_) async => const Err(DefaultCoversFailure.serverError()),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(
              TestRouterWidget(
                appRouter: AppRouter(),
                providers: [
                  BlocProvider<AuthBloc>(create: (_) => authBloc),
                  BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                ],
              ),
            );
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
            when(() => authFacade.isLoggedIn).thenReturn(true);
            when(() => authFacade.isAnonymous).thenReturn(false);
            when(defaultCoversRepository.loadDefaultCovers).thenAnswer(
              (_) async => const Err(DefaultCoversFailure.unexpected()),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(
              TestRouterWidget(
                appRouter: AppRouter(),
                providers: [
                  BlocProvider<AuthBloc>(create: (_) => authBloc),
                  BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                ],
              ),
            );
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
          when(() => authFacade.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([const Option.none()]));
        });

        testWidgets(
          '''Should display ErrorDialog with SessionsFailure.sessionNotInserted message''',
          (tester) async {
            when(() => authFacade.isLoggedIn).thenReturn(false);
            when(authFacade.logInAnonymously)
                .thenAnswer((_) async => const Ok(unit));
            when(() => authFacade.isAnonymous).thenReturn(false);
            when(defaultCoversRepository.loadDefaultCovers)
                .thenAnswer((_) async => Ok([testDefaultCover]));
            when(() => defaultCoversRepository.cacheDefaultCovers(any()))
                .thenAnswer((_) async => const Ok(unit));
            when(settingsRepository.fetchSettings)
                .thenAnswer((_) async => const Ok(testSettings));
            when(sessionsRepository.fetchSession).thenAnswer(
              (_) async => const Err(SessionsFailure.sessionNotFound()),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(
              TestRouterWidget(
                appRouter: AppRouter(),
                providers: [
                  BlocProvider<AuthBloc>(create: (_) => authBloc),
                  BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                ],
              ),
            );
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
            when(() => authFacade.isLoggedIn).thenReturn(false);
            when(authFacade.logInAnonymously)
                .thenAnswer((_) async => const Ok(unit));
            when(() => authFacade.isAnonymous).thenReturn(false);
            when(defaultCoversRepository.loadDefaultCovers)
                .thenAnswer((_) async => Ok([testDefaultCover]));
            when(() => defaultCoversRepository.cacheDefaultCovers(any()))
                .thenAnswer((_) async => const Ok(unit));
            when(settingsRepository.fetchSettings)
                .thenAnswer((_) async => const Ok(testSettings));
            when(sessionsRepository.fetchSession)
                .thenAnswer((_) async => Ok(testUser));
            when(() => userRepository.loadUser(any()))
                .thenAnswer((_) async => Ok(testUser));
            when(() => sessionsRepository.insertSession(any())).thenAnswer(
              (_) async => const Err(SessionsFailure.sessionNotInserted()),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(
              TestRouterWidget(
                appRouter: AppRouter(),
                providers: [
                  BlocProvider<AuthBloc>(create: (_) => authBloc),
                  BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                ],
              ),
            );
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
          when(() => authFacade.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([const Option.none()]));
        });

        testWidgets(
          '''Should display ErrorDialog with SettingsFailure.settingsNotInitialized message''',
          (tester) async {
            when(() => authFacade.isLoggedIn).thenReturn(false);
            when(authFacade.logInAnonymously)
                .thenAnswer((_) async => const Ok(unit));
            when(() => authFacade.isAnonymous).thenReturn(false);
            when(defaultCoversRepository.loadDefaultCovers)
                .thenAnswer((_) async => Ok([testDefaultCover]));
            when(() => defaultCoversRepository.cacheDefaultCovers(any()))
                .thenAnswer((_) async => const Ok(unit));
            when(settingsRepository.fetchSettings).thenAnswer(
              (_) async => const Err(SettingsFailure.settingsNotFound()),
            );
            when(settingsRepository.initializeSettings).thenAnswer(
              (_) async => const Err(SettingsFailure.settingsNotInitialized()),
            );

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(
              TestRouterWidget(
                appRouter: AppRouter(),
                providers: [
                  BlocProvider<AuthBloc>(create: (_) => authBloc),
                  BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                ],
              ),
            );
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
          when(() => authFacade.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([const Option.none()]));
        });

        testWidgets(
          '''Should display ErrorDialog with UserFailure.userNotFound message''',
          (tester) async {
            when(() => authFacade.isLoggedIn).thenReturn(false);
            when(authFacade.logInAnonymously)
                .thenAnswer((_) async => const Ok(unit));
            when(() => authFacade.isAnonymous).thenReturn(false);
            when(defaultCoversRepository.loadDefaultCovers)
                .thenAnswer((_) async => Ok([testDefaultCover]));
            when(() => defaultCoversRepository.cacheDefaultCovers(any()))
                .thenAnswer((_) async => const Ok(unit));
            when(settingsRepository.fetchSettings)
                .thenAnswer((_) async => const Ok(testSettings));
            when(sessionsRepository.fetchSession)
                .thenAnswer((_) async => Ok(testUser));
            when(() => userRepository.loadUser(any()))
                .thenAnswer((_) async => const Err(UserFailure.userNotFound()));

            final authBloc = getIt<AuthBloc>()
              ..add(const AuthEvent.authChanged());

            await tester.pumpWidget(
              TestRouterWidget(
                appRouter: AppRouter(),
                providers: [
                  BlocProvider<AuthBloc>(create: (_) => authBloc),
                  BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                ],
              ),
            );
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

    group('AppBar -', () {
      testWidgets('Should find 3 buttons', (tester) async {
        when(() => authFacade.authStateChanges)
            .thenAnswer((_) => Stream.fromIterable([const Option.none()]));
        when(() => authFacade.isLoggedIn).thenReturn(true);
        when(() => authFacade.isAnonymous).thenReturn(true);
        when(settingsRepository.fetchSettings)
            .thenAnswer((_) async => const Ok(testSettings));
        when(sessionsRepository.fetchSession)
            .thenAnswer((_) async => Ok(testUser));

        final authBloc = getIt<AuthBloc>()..add(const AuthEvent.authChanged());

        await tester.pumpWidget(
          TestWidget(
            child: MultiBlocProvider(
              providers: <BlocProvider>[
                BlocProvider<AuthBloc>(create: (_) => authBloc),
              ],
              child: const HomeAppBar(),
            ),
          ),
        );

        final homeFilterButton = find.byKey(const Key('home_filter_button'));
        final homeNewTreeButton = find.byKey(const Key('home_new_tree_button'));
        final homeMenuButton = find.byKey(const Key('home_menu_button'));

        expect(homeFilterButton, findsOneWidget);
        expect(homeNewTreeButton, findsOneWidget);
        expect(homeMenuButton, findsOneWidget);
      });
    });

    group('Drawer -', () {
      setUp(() {
        when(() => authFacade.isLoggedIn).thenReturn(true);
        when(() => authFacade.isAnonymous).thenReturn(true);
        when(settingsRepository.fetchSettings)
            .thenAnswer((_) async => const Ok(testSettings));
        when(sessionsRepository.fetchSession)
            .thenAnswer((_) async => Ok(testUser));
      });

      // TODO(SSebigo): test top left icon open/close drawer

      testWidgets('Should find 3 buttons', (tester) async {
        when(() => authFacade.authStateChanges)
            .thenAnswer((_) => Stream.fromIterable([const Option.none()]));

        final authBloc = getIt<AuthBloc>()..add(const AuthEvent.authChanged());

        await tester.pumpWidget(
          TestRouterWidget(
            appRouter: AppRouter(),
            providers: <BlocProvider>[
              BlocProvider<AuthBloc>(create: (_) => authBloc),
              BlocProvider<HomeBloc>(
                create: (_) => getIt<HomeBloc>(),
              ),
            ],
          ),
        );
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

    // TODO(SSebigo): test "PLUS" button navigate to PlusPage

    // TODO(SSebigo): test "LIBRARY" button navigate to LibraryPage

    // TODO(SSebigo): test tree is displayed

    // TODO(SSebigo): test if more than 5 tree shoud find top five tree

    // TODO(SSebigo): test plus icon navigate to NewTree
  });
}
