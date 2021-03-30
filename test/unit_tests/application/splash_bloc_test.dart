import 'package:flutter_test/flutter_test.dart';
import 'package:wine/application/splash/splash_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/settings/i_ssettings_repository.dart';
import 'package:wine/domain/user/i_user_repository.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../../mocks/default_covers_repository_mock.dart';
import '../../mocks/sessions_repository_mocks.dart';
import '../../mocks/settings_repository_mocks.dart';
import '../../mocks/user_repository_mocks.dart';

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
}
