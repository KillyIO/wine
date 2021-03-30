import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/application/splash/splash_bloc.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/settings/i_ssettings_repository.dart';
import 'package:wine/domain/user/i_user_repository.dart';

import '../../mocks/auth_mocks.dart';
import '../../mocks/default_covers_mock.dart';
import '../../mocks/sessions_mocks.dart';
import '../../mocks/settings_mocks.dart';
import '../../mocks/user_mocks.dart';

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

    group('_Failure', () {
      blocTest(
        'When error occur during signInAnonymously then yield Failure',
        build: () => _splashBloc,
        act: (SplashBloc bloc) =>
            bloc.add(const SplashEvent.splashPageLaunched()),
        expect: <SplashState>[
          const SplashState.failure(
            CoreFailure.auth(AuthFailure.serverError()),
          ),
        ],
      );
    });

    group('_GoToHome', () {});

    group('_GoToOnboarding', () {});
  });
}
