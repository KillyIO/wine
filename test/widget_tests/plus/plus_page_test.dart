import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';

import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/features/default_covers/i_default_covers_repository.domain.dart';
import 'package:wine/features/sessions/i_sessions_repository.domain.dart';
import 'package:wine/features/settings/i_settings_repository.domain.dart';
import 'package:wine/features/user/i_user_repository.domain.dart';
import 'package:wine/features/auth/auth_bloc.application.dart';
import 'package:wine/features/auth/auth_dialog_cubit.application.dart';
import 'package:wine/features/auth/i_auth_facade.domain.dart';
import 'package:wine/features/home/home_bloc.application.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/library/library_page.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/presentation/web/auth_dialog.dart';

import '../../unit_tests/utils/constants.dart';
import '../utils/injection_helper.dart';
import '../utils/test_router.presentation.dart';

void main() {
  const desktopWidth = 1280;
  const desktopHeight = 800;
  const mobileWidth = 360;
  const mobileHeight = 740;

  late IAuthFacade _authFacade;
  late IDefaultCoversRepository _defaultCoversRepository;
  late ISessionsRepository _sessionsRepository;
  late ISettingsRepository _settingsRepository;
  late IUserRepository _userRepository;

  late AppRouter _router;

  setUp(() {
    setupInjection();

    _authFacade = getIt<IAuthFacade>();
    _defaultCoversRepository = getIt<IDefaultCoversRepository>();
    _sessionsRepository = getIt<ISessionsRepository>();
    _settingsRepository = getIt<ISettingsRepository>();
    _userRepository = getIt<IUserRepository>();

    _router = AppRouter()
      ..replaceAll([
        const HomeRoute(),
        const PlusRoute(),
      ]);
  });

  group('PlusPage', () {
    setUp(() {
      when(() => _authFacade.authStateChanges)
          .thenAnswer((_) => Stream.fromIterable([Option.none()]));
      when(() => _authFacade.isLoggedIn).thenReturn(true);
      when(() => _authFacade.isAnonymous).thenReturn(true);
      when(_settingsRepository.fetchSettings)
          .thenAnswer((_) async => Ok(testSettings));
      when(_sessionsRepository.fetchSession)
          .thenAnswer((_) async => Ok(testUser));
    });

    testWidgets('Should find 3 buttons', (tester) async {
      final authBloc = getIt<AuthBloc>()..add(const AuthEvent.authChanged());

      await tester.pumpWidget(
        TestRouterWidget(
          appRouter: _router,
          providers: [
            BlocProvider(create: (_) => authBloc),
            BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
          ],
        ),
      );
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('plus_library_button')), findsOneWidget);
      expect(find.byKey(const Key('plus_settings_button')), findsOneWidget);
      expect(find.byKey(const Key('plus_about_button')), findsOneWidget);
    });

    group('PlusBanner -', () {
      testWidgets('Should find an image and text PLUS', (tester) async {
        final authBloc = getIt<AuthBloc>()..add(const AuthEvent.authChanged());

        await tester.pumpWidget(
          TestRouterWidget(
            appRouter: _router,
            providers: [
              BlocProvider<AuthBloc>(create: (context) => authBloc),
              BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
            ],
          ),
        );
        await tester.pumpAndSettle();

        expect(find.byType(Image), findsOneWidget);
      });
    });
  });

  group('LibraryButton', () {
    setUp(() {
      when(() => _authFacade.authStateChanges)
          .thenAnswer((_) => Stream.fromIterable([Option.none()]));
    });

    group('Web', () {
      testWidgets(
        'plus_library_button should display AuthDialog',
        (tester) async {
          tester.binding.window.devicePixelRatioTestValue = 2.625;
          tester.binding.window.textScaleFactorTestValue = .5;

          final dpi = tester.binding.window.devicePixelRatio;

          tester.binding.window.physicalSizeTestValue =
              Size(desktopWidth * dpi, desktopHeight * dpi);

          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(() => _authFacade.isAnonymous).thenReturn(true);
          when(_settingsRepository.fetchSettings)
              .thenAnswer((_) async => Ok(testSettings));
          when(_sessionsRepository.fetchSession)
              .thenAnswer((_) async => Ok(testUser));

          final authBloc = getIt<AuthBloc>()
            ..add(const AuthEvent.authChanged());

          await tester.pumpWidget(
            TestRouterWidget(
              appRouter: _router,
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<AuthDialogCubit>(
                  create: (_) => getIt<AuthDialogCubit>(),
                ),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                BlocProvider<LogInBloc>(create: (_) => getIt<LogInBloc>()),
              ],
            ),
          );
          await tester.pumpAndSettle();

          final plusLibraryButton =
              find.byKey(const Key('plus_library_button'));

          await tester.tap(plusLibraryButton);
          await tester.pumpAndSettle();

          expect(find.byType(AuthDialog), findsOneWidget);
        },
      );
    });

    group('Mobile', () {
      testWidgets(
        'plus_library_button should navigate to LogInPage',
        (tester) async {
          tester.binding.window.devicePixelRatioTestValue = 2.625;
          tester.binding.window.textScaleFactorTestValue = .5;

          final dpi = tester.binding.window.devicePixelRatio;

          tester.binding.window.physicalSizeTestValue =
              Size(mobileWidth * dpi, mobileHeight * dpi);

          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(() => _authFacade.isAnonymous).thenReturn(true);
          when(_settingsRepository.fetchSettings)
              .thenAnswer((_) async => Ok(testSettings));
          when(_sessionsRepository.fetchSession)
              .thenAnswer((_) async => Ok(testUser));

          final authBloc = getIt<AuthBloc>()
            ..add(const AuthEvent.authChanged());

          await tester.pumpWidget(
            TestRouterWidget(
              appRouter: _router,
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                BlocProvider<LogInBloc>(create: (_) => getIt<LogInBloc>()),
              ],
            ),
          );
          await tester.pumpAndSettle();

          final plusLibraryButton =
              find.byKey(const Key('plus_library_button'));

          await tester.tap(plusLibraryButton);
          await tester.pumpAndSettle();

          expect(find.byType(LogInPage), findsOneWidget);
        },
      );

      testWidgets(
        'plus_library_button should navigate to LibraryPage',
        (tester) async {
          tester.binding.window.devicePixelRatioTestValue = 2.625;
          tester.binding.window.textScaleFactorTestValue = .5;

          final dpi = tester.binding.window.devicePixelRatio;

          tester.binding.window.physicalSizeTestValue =
              Size(mobileWidth * dpi, mobileHeight * dpi);

          when(() => _authFacade.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([Option.some(testUser)]));
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(() => _authFacade.isAnonymous).thenReturn(false);
          when(_defaultCoversRepository.loadDefaultCovers)
              .thenAnswer((_) async => Ok([testDefaultCover]));
          when(() => _defaultCoversRepository.cacheDefaultCovers(any()))
              .thenAnswer((_) async => Ok(unit));
          when(_settingsRepository.fetchSettings)
              .thenAnswer((_) async => Ok(testSettings));
          when(_sessionsRepository.fetchSession)
              .thenAnswer((_) async => Ok(testUser));
          when(() => _userRepository.loadUser(any()))
              .thenAnswer((_) async => Ok(testUser));
          when(() => _sessionsRepository.insertSession(testUser))
              .thenAnswer((_) async => Ok(unit));

          final authBloc = getIt<AuthBloc>()
            ..add(const AuthEvent.authChanged());

          await tester.pumpWidget(
            TestRouterWidget(
              appRouter: _router,
              providers: [
                BlocProvider<AuthBloc>(create: (_) => authBloc),
                BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
                BlocProvider<LogInBloc>(create: (_) => getIt<LogInBloc>()),
              ],
            ),
          );
          await tester.pumpAndSettle();

          final plusLibraryButton =
              find.byKey(const Key('plus_library_button'));

          await tester.tap(plusLibraryButton);
          await tester.pumpAndSettle();

          expect(find.byType(LibraryPage), findsOneWidget);
        },
      );
    });
  });

  // TODO(SSebigo): test LIBRARY button navigate to LibraryPage when authenticated

  // TODO(SSebigo): test LIBRARY button navigate to LogInPage when  anonymous

  // TODO(SSebigo): test SETTINGS button navigate to SettingsPage

  // TODO(SSebigo): test ABOUT button navigate to AboutPage
}
