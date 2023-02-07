import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/auth/dialog/auth_dialog_cubit.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/library/library_page.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/web/auth_dialog.dart';

import '../../unit_tests/utils/constants.dart';
import '../utils/injection_helper.dart';
import '../utils/test_router_widget.dart';

void main() {
  const desktopWidth = 1280;
  const desktopHeight = 800;
  const mobileWidth = 360;
  const mobileHeight = 740;

  late IAuthFacade authFacade;
  late IDefaultCoversRepository defaultCoversRepository;
  late ISessionsRepository sessionsRepository;
  late ISettingsRepository settingsRepository;
  late IUserRepository userRepository;

  late AppRouter router;

  setUp(() {
    setupInjection();

    authFacade = getIt<IAuthFacade>();
    defaultCoversRepository = getIt<IDefaultCoversRepository>();
    sessionsRepository = getIt<ISessionsRepository>();
    settingsRepository = getIt<ISettingsRepository>();
    userRepository = getIt<IUserRepository>();

    router = AppRouter()
      ..replaceAll([
        const HomeRoute(),
        const PlusRoute(),
      ]);
  });

  group('PlusPage', () {
    setUp(() {
      when(() => authFacade.authStateChanges)
          .thenAnswer((_) => Stream.fromIterable([const Option.none()]));
      when(() => authFacade.isLoggedIn).thenReturn(true);
      when(() => authFacade.isAnonymous).thenReturn(true);
      when(settingsRepository.fetchSettings)
          .thenAnswer((_) async => const Ok(testSettings));
      when(sessionsRepository.fetchSession)
          .thenAnswer((_) async => Ok(testUser));
    });

    testWidgets('Should find 3 buttons', (tester) async {
      final authBloc = getIt<AuthBloc>()..add(const AuthEvent.authChanged());

      await tester.pumpWidget(
        TestRouterWidget(
          appRouter: router,
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
            appRouter: router,
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
      when(() => authFacade.authStateChanges)
          .thenAnswer((_) => Stream.fromIterable([const Option.none()]));
    });

    group('Web', () {
      testWidgets(
        'plus_library_button should display AuthDialog',
        (tester) async {
          tester.binding.window.devicePixelRatioTestValue = 2.625;
          tester.binding.window.platformDispatcher.textScaleFactorTestValue =
              .5;

          final dpi = tester.binding.window.devicePixelRatio;

          tester.binding.window.physicalSizeTestValue =
              Size(desktopWidth * dpi, desktopHeight * dpi);

          when(() => authFacade.isLoggedIn).thenReturn(true);
          when(() => authFacade.isAnonymous).thenReturn(true);
          when(settingsRepository.fetchSettings)
              .thenAnswer((_) async => const Ok(testSettings));
          when(sessionsRepository.fetchSession)
              .thenAnswer((_) async => Ok(testUser));

          final authBloc = getIt<AuthBloc>()
            ..add(const AuthEvent.authChanged());

          await tester.pumpWidget(
            TestRouterWidget(
              appRouter: router,
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
          tester.binding.window.platformDispatcher.textScaleFactorTestValue =
              .5;

          final dpi = tester.binding.window.devicePixelRatio;

          tester.binding.window.physicalSizeTestValue =
              Size(mobileWidth * dpi, mobileHeight * dpi);

          when(() => authFacade.isLoggedIn).thenReturn(true);
          when(() => authFacade.isAnonymous).thenReturn(true);
          when(settingsRepository.fetchSettings)
              .thenAnswer((_) async => const Ok(testSettings));
          when(sessionsRepository.fetchSession)
              .thenAnswer((_) async => Ok(testUser));

          final authBloc = getIt<AuthBloc>()
            ..add(const AuthEvent.authChanged());

          await tester.pumpWidget(
            TestRouterWidget(
              appRouter: router,
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
          tester.binding.window.platformDispatcher.textScaleFactorTestValue =
              .5;

          final dpi = tester.binding.window.devicePixelRatio;

          tester.binding.window.physicalSizeTestValue =
              Size(mobileWidth * dpi, mobileHeight * dpi);

          when(() => authFacade.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([Option.some(testUser)]));
          when(() => authFacade.isLoggedIn).thenReturn(true);
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
          when(() => sessionsRepository.insertSession(testUser))
              .thenAnswer((_) async => const Ok(unit));

          final authBloc = getIt<AuthBloc>()
            ..add(const AuthEvent.authChanged());

          await tester.pumpWidget(
            TestRouterWidget(
              appRouter: router,
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
