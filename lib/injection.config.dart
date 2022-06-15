// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i16;

import 'core/firebase_injectable_module.infrastructure.dart' as _i34;
import 'core/isar_injectable_module.infrastructure.dart' as _i35;
import 'features/auth/auth_bloc.application.dart' as _i17;
import 'features/auth/auth_dialog_cubit.application.dart' as _i3;
import 'features/auth/firebase_auth_facade.infrastructure.dart' as _i9;
import 'features/auth/i_auth_facade.domain.dart' as _i8;
import 'features/branch/branch_bloc.application.dart' as _i33;
import 'features/branch/branch_repository.infrastructure.dart' as _i11;
import 'features/branch/i_branch_repository.domain.dart' as _i10;
import 'features/default_covers/default_covers_repository.infrastructure.dart'
    as _i20;
import 'features/default_covers/i_default_covers_repository.domain.dart'
    as _i19;
import 'features/home/home_bloc.application.dart' as _i18;
import 'features/library/library_bloc.application.dart' as _i25;
import 'features/log_in/log_in_bloc.application.dart' as _i26;
import 'features/sessions/i_sessions_repository.domain.dart' as _i21;
import 'features/sessions/sessions_repository.infrastructure.dart' as _i22;
import 'features/settings/i_settings_repository.domain.dart' as _i23;
import 'features/settings/settings_bloc.application.dart' as _i27;
import 'features/settings/settings_repository.infrastructure.dart' as _i24;
import 'features/setup/setup_bloc.application.dart' as _i28;
import 'features/sign_up/sign_up_bloc.application.dart' as _i29;
import 'features/tree/i_tree_repository.domain.dart' as _i12;
import 'features/tree/tree_bloc.application.dart' as _i30;
import 'features/tree/tree_repository.infrastructure.dart' as _i13;
import 'features/typewriter/typewriter_branch/typewriter_branch_bloc.application.dart'
    as _i31;
import 'features/typewriter/typewriter_tree/typewriter_tree_bloc.application.dart'
    as _i32;
import 'features/user/i_user_repository.domain.dart' as _i14;
import 'features/user/user_repository.infrastructure.dart' as _i15;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final iIsarInjectableModule = _$IIsarInjectableModule();
  gh.factory<_i3.AuthDialogCubit>(() => _i3.AuthDialogCubit(),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i8.IAuthFacade>(
      () => _i9.FirebaseAuthFacade(
          get<_i4.FirebaseAuth>(), get<_i7.GoogleSignIn>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i10.IBranchRepository>(
      () => _i11.BranchRepository(
          get<_i5.FirebaseFirestore>(), get<_i6.FirebaseStorage>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i12.ITreeRepository>(
      () => _i13.TreeRepository(
          get<_i5.FirebaseFirestore>(), get<_i6.FirebaseStorage>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i14.IUserRepository>(
      () => _i15.UserRepository(get<_i5.FirebaseFirestore>()),
      registerFor: {_dev, _prod});
  await gh.lazySingletonAsync<_i16.Isar>(() => iIsarInjectableModule.isar,
      registerFor: {_dev, _prod}, preResolve: true);
  gh.factory<_i17.AuthBloc>(() => _i17.AuthBloc(get<_i8.IAuthFacade>()),
      registerFor: {_dev, _prod});
  gh.factory<_i18.HomeBloc>(() => _i18.HomeBloc(get<_i12.ITreeRepository>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i19.IDefaultCoversRepository>(
      () => _i20.DefaultCoversRepository(
          get<_i5.FirebaseFirestore>(), get<_i16.Isar>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i21.ISessionsRepository>(
      () => _i22.SessionsRepository(get<_i4.FirebaseAuth>(), get<_i16.Isar>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i23.ISettingsRepository>(
      () => _i24.SettingsRepository(get<_i4.FirebaseAuth>(), get<_i16.Isar>()),
      registerFor: {_dev, _prod});
  gh.factory<_i25.LibraryBloc>(
      () => _i25.LibraryBloc(get<_i10.IBranchRepository>(),
          get<_i21.ISessionsRepository>(), get<_i12.ITreeRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i26.LogInBloc>(
      () => _i26.LogInBloc(get<_i8.IAuthFacade>(),
          get<_i21.ISessionsRepository>(), get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i27.SettingsBloc>(
      () => _i27.SettingsBloc(get<_i8.IAuthFacade>(),
          get<_i21.ISessionsRepository>(), get<_i23.ISettingsRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i28.SetupBloc>(
      () => _i28.SetupBloc(
          get<_i8.IAuthFacade>(),
          get<_i19.IDefaultCoversRepository>(),
          get<_i21.ISessionsRepository>(),
          get<_i23.ISettingsRepository>(),
          get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i29.SignUpBloc>(
      () => _i29.SignUpBloc(get<_i8.IAuthFacade>(),
          get<_i21.ISessionsRepository>(), get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i30.TreeBloc>(
      () => _i30.TreeBloc(
          get<_i8.IAuthFacade>(),
          get<_i10.IBranchRepository>(),
          get<_i21.ISessionsRepository>(),
          get<_i23.ISettingsRepository>(),
          get<_i12.ITreeRepository>(),
          get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i31.TypewriterBranchBloc>(
      () => _i31.TypewriterBranchBloc(
          get<_i10.IBranchRepository>(),
          get<_i19.IDefaultCoversRepository>(),
          get<_i21.ISessionsRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i32.TypewriterTreeBloc>(
      () => _i32.TypewriterTreeBloc(get<_i19.IDefaultCoversRepository>(),
          get<_i21.ISessionsRepository>(), get<_i12.ITreeRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i33.BranchBloc>(
      () => _i33.BranchBloc(
          get<_i8.IAuthFacade>(),
          get<_i10.IBranchRepository>(),
          get<_i21.ISessionsRepository>(),
          get<_i23.ISettingsRepository>(),
          get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  return get;
}

class _$FirebaseInjectableModule extends _i34.FirebaseInjectableModule {}

class _$IIsarInjectableModule extends _i35.IIsarInjectableModule {}
