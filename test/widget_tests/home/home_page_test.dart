import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
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
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/onboarding/onboarding_page.dart';

import '../../mocks/domain_mocks.dart';
import '../../unit_tests/utils/constants.dart';
import '../utils/injection_helper.dart';
import '../utils/test_router_widget.dart';
import 'routes/router.dart';

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
        testWidgets(
          'Should display ErrorDialog with AuthFailure.serverError message',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(false);
            when(_authFacade.logInAnonymously)
                .thenAnswer((_) async => const Err(AuthFailure.serverError()));

            await tester.pumpWidget(TestRouterWidget(
              appRouter: HomeTestRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
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
                .thenAnswer((_) async => const Err(AuthFailure.unexpected()));

            await tester.pumpWidget(TestRouterWidget(
              appRouter: HomeTestRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
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
        testWidgets(
          '''Should display ErrorDialog with DefaultCoversFailure.defaultCoverURLsNotCached message''',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(false);
            when(_authFacade.logInAnonymously)
                .thenAnswer((_) async => const Ok(Unit()));
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs)
                .thenAnswer((_) async => const Ok(testDefaultCovers));
            when(() => _defaultCoversRepository.cacheDefaultCoverURLs(any()))
                .thenAnswer((_) async => const Err(
                    DefaultCoversFailure.defaultCoverURLsNotCached()));

            await tester.pumpWidget(TestRouterWidget(
              appRouter: HomeTestRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
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
                  const Err(DefaultCoversFailure.defaultCoverURLsNotLoaded()),
            );

            await tester.pumpWidget(TestRouterWidget(
              appRouter: HomeTestRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
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
              (_) async => const Err(DefaultCoversFailure.serverError()),
            );

            await tester.pumpWidget(TestRouterWidget(
              appRouter: HomeTestRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
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
              (_) async => const Err(DefaultCoversFailure.unexpected()),
            );

            await tester.pumpWidget(TestRouterWidget(
              appRouter: HomeTestRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
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
        testWidgets(
          '''Should display ErrorDialog with SessionsFailure.sessionNotCreated message''',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(false);
            when(_authFacade.logInAnonymously)
                .thenAnswer((_) async => const Ok(Unit()));
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs)
                .thenAnswer((_) async => const Ok(testDefaultCovers));
            when(() => _defaultCoversRepository.cacheDefaultCoverURLs(any()))
                .thenAnswer((_) async => const Ok(Unit()));
            when(_settingsRepository.fetchSettings)
                .thenAnswer((_) async => const Ok(testSettings));
            when(_sessionsRepository.fetchSession).thenAnswer(
              (_) async => const Err(SessionsFailure.sessionNotFound()),
            );
            when(_sessionsRepository.createSession).thenAnswer(
              (_) async => const Err(SessionsFailure.sessionNotCreated()),
            );

            await tester.pumpWidget(TestRouterWidget(
              appRouter: HomeTestRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
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
                .thenAnswer((_) async => const Ok(Unit()));
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs)
                .thenAnswer((_) async => const Ok(testDefaultCovers));
            when(() => _defaultCoversRepository.cacheDefaultCoverURLs(any()))
                .thenAnswer((_) async => const Ok(Unit()));
            when(_settingsRepository.fetchSettings)
                .thenAnswer((_) async => const Ok(testSettings));
            when(_sessionsRepository.fetchSession)
                .thenAnswer((_) async => Ok(testUser));
            when(() => _userRepository.loadUser(any()))
                .thenAnswer((_) async => Ok(testUser));
            when(() => _sessionsRepository.updateSession(any())).thenAnswer(
              (_) async => const Err(SessionsFailure.sessionNotUpdated()),
            );

            await tester.pumpWidget(TestRouterWidget(
              appRouter: HomeTestRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
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
        testWidgets(
          '''Should display ErrorDialog with SettingsFailure.settingsNotInitialized message''',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(false);
            when(_authFacade.logInAnonymously)
                .thenAnswer((_) async => const Ok(Unit()));
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs)
                .thenAnswer((_) async => const Ok(testDefaultCovers));
            when(() => _defaultCoversRepository.cacheDefaultCoverURLs(any()))
                .thenAnswer((_) async => const Ok(Unit()));
            when(_settingsRepository.fetchSettings).thenAnswer(
              (_) async => const Err(SettingsFailure.settingsNotFound()),
            );
            when(_settingsRepository.initializeSettings).thenAnswer(
              (_) async => const Err(SettingsFailure.settingsNotInitialized()),
            );

            await tester.pumpWidget(TestRouterWidget(
              appRouter: HomeTestRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
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
        testWidgets(
          '''Should display ErrorDialog with UserFailure.userNotFound message''',
          (tester) async {
            when(() => _authFacade.isLoggedIn).thenReturn(false);
            when(_authFacade.logInAnonymously)
                .thenAnswer((_) async => const Ok(Unit()));
            when(() => _authFacade.isAnonymous).thenReturn(false);
            when(_defaultCoversRepository.loadDefaultCoverURLs)
                .thenAnswer((_) async => const Ok(testDefaultCovers));
            when(() => _defaultCoversRepository.cacheDefaultCoverURLs(any()))
                .thenAnswer((_) async => const Ok(Unit()));
            when(_settingsRepository.fetchSettings)
                .thenAnswer((_) async => const Ok(testSettings));
            when(_sessionsRepository.fetchSession)
                .thenAnswer((_) async => Ok(testUser));
            when(() => _userRepository.loadUser(any()))
                .thenAnswer((_) async => const Err(UserFailure.userNotFound()));

            await tester.pumpWidget(TestRouterWidget(
              appRouter: HomeTestRouter(),
              providers: [
                BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
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

    group('Completed -', () {
      group('goToHome -', () {
        testWidgets('anonymous goToHome', (tester) async {});

        testWidgets('authenticated goToHome', (tester) async {});
      });

      testWidgets('Should navigate to Onboarding page', (tester) async {
        when(() => _authFacade.isLoggedIn).thenReturn(false);
        when(_authFacade.logInAnonymously)
            .thenAnswer((_) async => const Ok(Unit()));
        when(() => _authFacade.isAnonymous).thenReturn(true);
        when(_settingsRepository.fetchSettings)
            .thenAnswer((_) async => const Ok(testSettings));
        when(_sessionsRepository.fetchSession).thenAnswer(
          (_) async => const Err(SessionsFailure.sessionNotFound()),
        );
        when(_sessionsRepository.createSession)
            .thenAnswer((_) async => const Ok(Unit()));

        await tester.pumpWidget(TestRouterWidget(
          appRouter: HomeTestRouter(),
          providers: [
            BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
            BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
          ],
        ));
        await tester.pumpAndSettle();

        expect(find.byType(OnboardingPage), findsOneWidget);
      });
    });
  });
}
