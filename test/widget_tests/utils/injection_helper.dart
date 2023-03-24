import 'package:injectable/injectable.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/auth/dialog/auth_dialog_cubit.dart';
import 'package:wine/application/home/home_bloc.dart';
import 'package:wine/application/library/library_bloc.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/application/setup/setup_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/branch/i_branch_repository.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/tree/i_tree_repository.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/injection.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../../mocks/branch_mocks.dart';
import '../../mocks/default_covers_mock.dart';
import '../../mocks/sessions_mocks.dart';
import '../../mocks/settings_mocks.dart';
import '../../mocks/tree_mocks.dart';
import '../../mocks/user_mocks.dart';

Future<void> setupInjection() async {
  await getIt.reset();
  await configureInjection(Environment.test);

  final IAuthFacade authFacade = MockAuthFacade();
  final IBranchRepository branchRepository = MockBranchRepository();
  final IDefaultCoversRepository defaultCoversRepository =
      MockDefaultCoversRepository();
  final ISessionsRepository sessionsRepository = MockSessionsRepository();
  final ISettingsRepository settingsRepository = MockSettingsRepository();
  final ITreeRepository treeRepository = MockTreeRepository();
  final IUserRepository userRepository = MockUserRepository();

  getIt
    ..registerLazySingleton<IAuthFacade>(() => authFacade)
    ..registerLazySingleton<IDefaultCoversRepository>(
      () => defaultCoversRepository,
    )
    ..registerLazySingleton<ISessionsRepository>(() => sessionsRepository)
    ..registerLazySingleton<ISettingsRepository>(() => settingsRepository)
    ..registerLazySingleton<ITreeRepository>(() => treeRepository)
    ..registerLazySingleton<IUserRepository>(() => userRepository)
    ..registerLazySingleton<AuthBloc>(() => AuthBloc(authFacade))
    ..registerLazySingleton<AuthDialogCubit>(AuthDialogCubit.new)
    ..registerLazySingleton<HomeBloc>(() => HomeBloc(treeRepository))
    ..registerLazySingleton<LibraryBloc>(
      () => LibraryBloc(
        branchRepository,
        sessionsRepository,
        treeRepository,
      ),
    )
    ..registerLazySingleton<LogInBloc>(
      () => LogInBloc(
        authFacade,
        defaultCoversRepository,
        sessionsRepository,
        userRepository,
      ),
    )
    ..registerLazySingleton<SetupBloc>(
      () => SetupBloc(
        authFacade,
        defaultCoversRepository,
        sessionsRepository,
        settingsRepository,
        userRepository,
      ),
    );
}
