import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/application/splash/splash_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/settings/i_ssettings_repository.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/domain/user/i_user_repository.dart';

import '../../mocks/auth_mocks.dart';
import '../../mocks/default_covers_mock.dart';
import '../../mocks/sessions_mocks.dart';
import '../../mocks/settings_mocks.dart';
import '../../mocks/user_mocks.dart';
import '../utils/constants.dart';

void main() {
  IAuthFacade _authFacade;
  IDefaultCoversRepository _defaultCoversRepository;
  ISessionsRepository _sessionsRepository;
  ISettingsRepository _settingsRepository;
  IUserRepository _userRepository;

  SplashBloc _splashBloc;

  setUp(() {
    _authFacade = MockAuthFacade();
    _defaultCoversRepository = MockDefaultCoversRepository();
    _sessionsRepository = MockSessionsRepository();
    _settingsRepository = MockSettingsRepository();
    _userRepository = MockUserRepository();

    _splashBloc = SplashBloc(
      _authFacade,
      _defaultCoversRepository,
      _sessionsRepository,
      _settingsRepository,
      _userRepository,
    );
  });

  tearDown(() {
    _splashBloc?.close();
  });

  group('SplashBloc -', () {
    blocTest(
      'When instantiating return nothing',
      build: () => _splashBloc,
      expect: <SplashState>[],
    );

    group('errors -', () {});

    group('completed -', () {
      blocTest(
        'When session not found And session created Then yield goToOnboarding',
        build: () => _splashBloc,
        act: (bloc) {
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(() => _authFacade.isAnonymous).thenReturn(true);
          when(_settingsRepository.fetchSettings)
              .thenAnswer((_) async => right(testSettings));
          when(_sessionsRepository.fetchSession).thenAnswer(
            (_) async => left(const SessionsFailure.sessionNotFound()),
          );
          when(_sessionsRepository.createSession)
              .thenAnswer((_) async => right(unit));

          return bloc.add(const SplashEvent.splashPageLaunched());
        },
        expect: <SplashState>[const SplashState.goToOnboarding()],
        verify: (_) {
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            () => _authFacade.isAnonymous,
            _settingsRepository.fetchSettings,
            _sessionsRepository.fetchSession,
            _sessionsRepository.createSession,
          ]);
        },
      );

      blocTest(
        'When session fetched but user anonymous Then yield gotToHome',
        build: () => _splashBloc,
        act: (bloc) {
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(() => _authFacade.isAnonymous).thenReturn(true);
          when(_settingsRepository.fetchSettings)
              .thenAnswer((_) async => right(testSettings));
          when(_sessionsRepository.fetchSession)
              .thenAnswer((_) async => right(testUser));

          return bloc.add(const SplashEvent.splashPageLaunched());
        },
        expect: <SplashState>[const SplashState.goToHome()],
        verify: (_) {
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            () => _authFacade.isAnonymous,
            _settingsRepository.fetchSettings,
            _sessionsRepository.fetchSession,
            () => _authFacade.isAnonymous,
          ]);
        },
      );

      blocTest(
        'When session fetched but user authenticated Then yield goToHome',
        build: () => _splashBloc,
        act: (bloc) {
          when(() => _authFacade.isLoggedIn).thenReturn(false);
          when(_authFacade.logInAnonymously)
              .thenAnswer((_) async => right(unit));
          when(() => _authFacade.isAnonymous).thenReturn(false);
          when(_defaultCoversRepository.loadDefaultCoverURLs)
              .thenAnswer((_) async => right({}));
          when(() => _defaultCoversRepository.cacheDefaultCoverURLs({}))
              .thenAnswer((_) async => right(unit));
          when(_settingsRepository.fetchSettings).thenAnswer(
              (_) async => left(const SettingsFailure.settingsNotFound()));
          when(_settingsRepository.initializeSettings)
              .thenAnswer((_) async => right(unit));
          when(_sessionsRepository.fetchSession)
              .thenAnswer((_) async => right(testUser));
          when(() => _userRepository.loadUser(testUser.uid.getOrCrash()))
              .thenAnswer((_) async => right(testUser));
          when(() => _sessionsRepository.updateSession(testUser))
              .thenAnswer((_) async => right(unit));

          return bloc.add(const SplashEvent.splashPageLaunched());
        },
        expect: <SplashState>[const SplashState.goToHome()],
        verify: (_) {
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            _authFacade.logInAnonymously,
            () => _authFacade.isAnonymous,
            _defaultCoversRepository.loadDefaultCoverURLs,
            () => _defaultCoversRepository.cacheDefaultCoverURLs({}),
            _settingsRepository.fetchSettings,
            _settingsRepository.initializeSettings,
            _sessionsRepository.fetchSession,
            () => _userRepository.loadUser(testUser.uid.getOrCrash()),
            () => _sessionsRepository.updateSession(testUser)
          ]);
        },
      );
    });

    // group('isLoggedin - true -', () {
    //   setUp(() {
    //     when(() => _authFacade.isLoggedIn).thenReturn(true);
    //   });

    //   blocTest(
    //     'When error occur during loadDefaultCovers then yield Failure',
    //     build: () => _splashBloc,
    //     act: (bloc) {
    //       when(() => _defaultCoversRepository.loadDefaultCoverURLs())
    //           .thenAnswer((_) async =>
    //               left(const DefaultCoversFailure.defaultCoverURLsNotLoaded()));
    //       return bloc.add(const SplashEvent.splashPageLaunched());
    //     },
    //     expect: <SplashState>[
    //       const SplashState.failure(CoreFailure.defaultCovers(
    //         DefaultCoversFailure.defaultCoverURLsNotLoaded(),
    //       )),
    //     ],
    //     verify: (_) {
    //       verifyInOrder([
    //         () => _authFacade.isLoggedIn,
    //         _defaultCoversRepository.loadDefaultCoverURLs,
    //       ]);
    //     },
    //   );
    // });

    // group('isLoggedin - false -', () {
    //   setUp(() {
    //     when(() => _authFacade.isLoggedIn).thenReturn(false);
    //   });

    //   blocTest(
    //     'When error occur during signInAnonymously then yield Failure',
    //     build: () => _splashBloc,
    //     act: (bloc) {
    //       when(() => _authFacade.logInAnonymously())
    //           .thenAnswer((_) async => left(const AuthFailure.serverError()));
    //       return bloc.add(const SplashEvent.splashPageLaunched());
    //     },
    //     expect: <SplashState>[
    //       const SplashState.failure(
    //         CoreFailure.auth(AuthFailure.serverError()),
    //       ),
    //     ],
    //     verify: (_) {
    //       verifyInOrder([
    //         () => _authFacade.isLoggedIn,
    //         _authFacade.logInAnonymously,
    //       ]);
    //     },
    //   );
    // });
  });
}
