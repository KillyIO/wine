import 'package:injectable/injectable.dart';
import 'package:wine/features/library/library_bloc.application.dart';
import 'package:wine/features/log_in/log_in_bloc.application.dart';
import 'package:wine/features/setup/setup_bloc.application.dart';
import 'package:wine/features/branch/i_branch_repository.domain.dart';
import 'package:wine/features/default_covers/i_default_covers_repository.domain.dart';
import 'package:wine/features/sessions/i_sessions_repository.domain.dart';
import 'package:wine/features/settings/i_settings_repository.domain.dart';
import 'package:wine/features/tree/i_tree_repository.domain.dart';
import 'package:wine/features/user/i_user_repository.domain.dart';
import 'package:wine/features/auth/auth_bloc.application.dart';
import 'package:wine/features/auth/auth_dialog_cubit.application.dart';
import 'package:wine/features/auth/i_auth_facade.domain.dart';
import 'package:wine/features/home/home_bloc.application.dart';
import 'package:wine/injection.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../../mocks/branch_mocks.dart';
import '../../mocks/default_covers_mock.dart';
import '../../mocks/sessions_mocks.dart';
import '../../mocks/settings_mocks.dart';
import '../../mocks/tree_mocks.dart';
import '../../mocks/user_mocks.dart';

void setupInjection() {
  getIt.reset();
  configureInjection(Environment.test);

  final IAuthFacade _authFacade = MockAuthFacade();
  final IBranchRepository _branchRepository = MockBranchRepository();
  final IDefaultCoversRepository _defaultCoversRepository =
      MockDefaultCoversRepository();
  final ISessionsRepository _sessionsRepository = MockSessionsRepository();
  final ISettingsRepository _settingsRepository = MockSettingsRepository();
  final ITreeRepository _treeRepository = MockTreeRepository();
  final IUserRepository _userRepository = MockUserRepository();

  getIt
    ..registerLazySingleton<IAuthFacade>(() => _authFacade)
    ..registerLazySingleton<IDefaultCoversRepository>(
      () => _defaultCoversRepository,
    )
    ..registerLazySingleton<ISessionsRepository>(() => _sessionsRepository)
    ..registerLazySingleton<ISettingsRepository>(() => _settingsRepository)
    ..registerLazySingleton<IUserRepository>(() => _userRepository)
    ..registerLazySingleton<AuthBloc>(() => AuthBloc(_authFacade))
    ..registerLazySingleton<AuthDialogCubit>(AuthDialogCubit.new)
    ..registerLazySingleton<HomeBloc>(() => HomeBloc(_treeRepository))
    ..registerLazySingleton<LibraryBloc>(
      () => LibraryBloc(
        _branchRepository,
        _sessionsRepository,
        _treeRepository,
      ),
    )
    ..registerLazySingleton<LogInBloc>(
      () => LogInBloc(
        _authFacade,
        _sessionsRepository,
        _userRepository,
      ),
    )
    ..registerLazySingleton<SetupBloc>(
      () => SetupBloc(
        _authFacade,
        _defaultCoversRepository,
        _sessionsRepository,
        _settingsRepository,
        _userRepository,
      ),
    );
}
