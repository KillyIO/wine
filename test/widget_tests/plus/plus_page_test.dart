import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rustic/result.dart';

import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/routes/router.dart';

import '../../unit_tests/utils/constants.dart';
import '../utils/injection_helper.dart';
import '../utils/test_router_widget.dart';

void main() {
  const mobileWidth = 360;
  const mobileHeight = 740;

  late IAuthFacade _authFacade;
  late ISessionsRepository _sessionsRepository;
  late ISettingsRepository _settingsRepository;

  setUp(() {
    setupInjection();

    _authFacade = getIt<IAuthFacade>();
    _sessionsRepository = getIt<ISessionsRepository>();
    _settingsRepository = getIt<ISettingsRepository>();
  });

  group('PlusPage', () {
    testWidgets('Should find 3 buttons', (tester) async {
      when(() => _authFacade.isLoggedIn).thenReturn(true);
      when(() => _authFacade.isAnonymous).thenReturn(true);
      when(_settingsRepository.fetchSettings)
          .thenAnswer((_) async => const Ok(testSettings));
      when(_sessionsRepository.fetchSession)
          .thenAnswer((_) async => Ok(testUser));

      await tester.pumpWidget(TestRouterWidget(
        appRouter: AppRouter()
          // ignore: unawaited_futures
          ..pushAll([
            const HomeRoute(),
            const PlusRoute(),
          ]),
        providers: [
          BlocProvider(
            create: (_) =>
                AuthBloc(_authFacade)..add(const AuthEvent.authChanged()),
          ),
          BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
        ],
      ));
      await tester.pumpAndSettle();

      expect(find.byKey(const Key('plus_library_button')), findsOneWidget);
      expect(find.byKey(const Key('plus_settings_button')), findsOneWidget);
      expect(find.byKey(const Key('plus_about_button')), findsOneWidget);
    });

    group('PlusBanner -', () {
      testWidgets('Should find an image and text PLUS', (tester) async {
        when(() => _authFacade.isLoggedIn).thenReturn(true);
        when(() => _authFacade.isAnonymous).thenReturn(true);
        when(_settingsRepository.fetchSettings)
            .thenAnswer((_) async => const Ok(testSettings));
        when(_sessionsRepository.fetchSession)
            .thenAnswer((_) async => Ok(testUser));

        await tester.pumpWidget(TestRouterWidget(
          appRouter: AppRouter()
            // ignore: unawaited_futures
            ..pushAll([
              const HomeRoute(),
              const PlusRoute(),
            ]),
          providers: [
            BlocProvider<AuthBloc>(
              create: (context) =>
                  getIt<AuthBloc>()..add(const AuthEvent.authChanged()),
            ),
            BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
          ],
        ));
        await tester.pumpAndSettle();

        expect(find.byType(Image), findsOneWidget);
      });
    });
  });

  group('LibraryButton', () {
    group('Web', () {});

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
              .thenAnswer((_) async => const Ok(testSettings));
          when(_sessionsRepository.fetchSession)
              .thenAnswer((_) async => Ok(testUser));

          await tester.pumpWidget(TestRouterWidget(
            appRouter: AppRouter()
              // ignore: unawaited_futures
              ..pushAll([
                const HomeRoute(),
                const PlusRoute(),
              ]),
            providers: [
              BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
              BlocProvider<HomeBloc>(create: (_) => getIt<HomeBloc>()),
              BlocProvider<LogInBloc>(create: (_) => getIt<LogInBloc>()),
            ],
          ));
          await tester.pumpAndSettle();

          final plusLibraryButton =
              find.byKey(const Key('plus_library_button'));

          await tester.tap(plusLibraryButton);
          await tester.pumpAndSettle();

          expect(find.byType(LogInPage), findsOneWidget);
        },
      );
    });

    // testWidgets(
    //   'plus_library_button should navigate to LibraryPage',
    //   (tester) async {
    //     when(() => _authFacade.isLoggedIn).thenReturn(true);
    //     when(() => _authFacade.isAnonymous).thenReturn(false);

    //     await tester.pumpWidget(TestWidget(
    //       child: BlocProvider(
    //         create: (_) =>
    //             AuthBloc(_authFacade)..add(const AuthEvent.authChanged()),
    //         child: const PlusLayout(),
    //       ),
    //     ));
    //     await tester.pump();

    //     expect(find.byType(AssetButton), findsOneWidget);
    //     expect(find.text('PLUS'), findsOneWidget);

    //     expect(find.byKey(const Key('plus_library_button')), findsOneWidget);
    //     expect(find.byKey(const Key('plus_settings_button')), findsOneWidget);
    //     expect(find.byKey(const Key('plus_about_button')), findsOneWidget);
    //   },
    // );
  });

  // TODO test LIBRARY button navigate to LibraryPage when authenticated

  // TODO test LIBRARY button navigate to LogInPage when  anonymous

  // TODO test SETTINGS button navigate to SettingsPage

  // TODO test ABOUT button navigate to AboutPage
}
