import 'package:injectable/injectable.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/application/home/home_navigation/home_navigation_bloc.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/application/setup/setup_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/injection.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../../mocks/default_covers_mock.dart';
import '../../mocks/sessions_mocks.dart';
import '../../mocks/settings_mocks.dart';
import '../../mocks/user_mocks.dart';

void setupInjection() {
  getIt.reset();
  configureInjection(Environment.test);

  final IAuthFacade _authFacade = MockAuthFacade();
  final IDefaultCoversRepository _defaultCoversRepository =
      MockDefaultCoversRepository();
  final ISessionsRepository _sessionsRepository = MockSessionsRepository();
  final ISettingsRepository _settingsRepository = MockSettingsRepository();
  final IUserRepository _userRepository = MockUserRepository();

  final _homeNavigationBloc = HomeNavigationBloc();

  getIt
    ..registerLazySingleton<IAuthFacade>(() => _authFacade)
    ..registerLazySingleton<IDefaultCoversRepository>(
        () => _defaultCoversRepository)
    ..registerLazySingleton<ISessionsRepository>(() => _sessionsRepository)
    ..registerLazySingleton<ISettingsRepository>(() => _settingsRepository)
    ..registerLazySingleton<IUserRepository>(() => _userRepository)
    ..registerLazySingleton<AuthBloc>(() => AuthBloc(_authFacade))
    ..registerLazySingleton<HomeBloc>(() => HomeBloc(_homeNavigationBloc))
    ..registerLazySingleton<HomeNavigationBloc>(() => HomeNavigationBloc())
    ..registerLazySingleton<LogInBloc>(() => LogInBloc(
          _authFacade,
          _sessionsRepository,
          _userRepository,
        ))
    ..registerLazySingleton<SetupBloc>(() => SetupBloc(
          _authFacade,
          _defaultCoversRepository,
          _sessionsRepository,
          _settingsRepository,
          _userRepository,
        ));
}
