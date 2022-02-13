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
import 'package:isar/isar.dart' as _i17;

import 'application/auth/auth_bloc.dart' as _i18;
import 'application/auth/auth_dialog/auth_dialog_cubit.dart' as _i3;
import 'application/branch/branch_bloc.dart' as _i33;
import 'application/home/home_bloc.dart' as _i8;
import 'application/library/library_bloc.dart' as _i25;
import 'application/log_in/log_in_bloc.dart' as _i26;
import 'application/settings/settings_bloc.dart' as _i27;
import 'application/setup/setup_bloc.dart' as _i28;
import 'application/sign_up/sign_up_bloc.dart' as _i29;
import 'application/tree/tree_bloc.dart' as _i30;
import 'application/typewriter/typewriter_branch/typewriter_branch_bloc.dart'
    as _i31;
import 'application/typewriter/typewriter_tree/typewriter_tree_bloc.dart'
    as _i32;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/branch/i_branch_repository.dart' as _i11;
import 'domain/default_covers/i_default_covers_repository.dart' as _i19;
import 'domain/sessions/i_sessions_repository.dart' as _i21;
import 'domain/settings/i_settings_repository.dart' as _i23;
import 'domain/tree/i_tree_repository.dart' as _i13;
import 'domain/user/i_user_repository.dart' as _i15;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/branch/branch_repository.dart' as _i12;
import 'infrastructure/core/firebase_injectable_module.dart' as _i34;
import 'infrastructure/core/isar_injectable_module.dart' as _i35;
import 'infrastructure/default_covers/default_covers_repository.dart' as _i20;
import 'infrastructure/sessions/sessions_repository.dart' as _i22;
import 'infrastructure/settings/settings_repository.dart' as _i24;
import 'infrastructure/tree/tree_repository.dart' as _i14;
import 'infrastructure/user/user_repository.dart' as _i16;

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
  gh.factory<_i8.HomeBloc>(() => _i8.HomeBloc(), registerFor: {_dev, _prod});
  gh.lazySingleton<_i9.IAuthFacade>(
      () => _i10.FirebaseAuthFacade(
          get<_i4.FirebaseAuth>(), get<_i7.GoogleSignIn>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i11.IBranchRepository>(
      () => _i12.BranchRepository(
          get<_i5.FirebaseFirestore>(), get<_i6.FirebaseStorage>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i13.ITreeRepository>(
      () => _i14.TreeRepository(
          get<_i5.FirebaseFirestore>(), get<_i6.FirebaseStorage>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i15.IUserRepository>(
      () => _i16.UserRepository(get<_i5.FirebaseFirestore>()),
      registerFor: {_dev, _prod});
  await gh.lazySingletonAsync<_i17.Isar>(() => iIsarInjectableModule.isar,
      registerFor: {_dev, _prod}, preResolve: true);
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i9.IAuthFacade>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i19.IDefaultCoversRepository>(
      () => _i20.DefaultCoversRepository(
          get<_i5.FirebaseFirestore>(), get<_i17.Isar>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i21.ISessionsRepository>(
      () => _i22.SessionsRepository(get<_i4.FirebaseAuth>(), get<_i17.Isar>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i23.ISettingsRepository>(
      () => _i24.SettingsRepository(get<_i4.FirebaseAuth>(), get<_i17.Isar>()),
      registerFor: {_dev, _prod});
  gh.factory<_i25.LibraryBloc>(
      () => _i25.LibraryBloc(get<_i11.IBranchRepository>(),
          get<_i21.ISessionsRepository>(), get<_i13.ITreeRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i26.LogInBloc>(
      () => _i26.LogInBloc(get<_i9.IAuthFacade>(),
          get<_i21.ISessionsRepository>(), get<_i15.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i27.SettingsBloc>(
      () => _i27.SettingsBloc(get<_i9.IAuthFacade>(),
          get<_i21.ISessionsRepository>(), get<_i23.ISettingsRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i28.SetupBloc>(
      () => _i28.SetupBloc(
          get<_i9.IAuthFacade>(),
          get<_i19.IDefaultCoversRepository>(),
          get<_i21.ISessionsRepository>(),
          get<_i23.ISettingsRepository>(),
          get<_i15.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i29.SignUpBloc>(
      () => _i29.SignUpBloc(get<_i9.IAuthFacade>(),
          get<_i21.ISessionsRepository>(), get<_i15.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i30.TreeBloc>(
      () => _i30.TreeBloc(
          get<_i9.IAuthFacade>(),
          get<_i11.IBranchRepository>(),
          get<_i21.ISessionsRepository>(),
          get<_i23.ISettingsRepository>(),
          get<_i13.ITreeRepository>(),
          get<_i15.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i31.TypewriterBranchBloc>(
      () => _i31.TypewriterBranchBloc(
          get<_i11.IBranchRepository>(),
          get<_i19.IDefaultCoversRepository>(),
          get<_i21.ISessionsRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i32.TypewriterTreeBloc>(
      () => _i32.TypewriterTreeBloc(get<_i19.IDefaultCoversRepository>(),
          get<_i21.ISessionsRepository>(), get<_i13.ITreeRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i33.BranchBloc>(
      () => _i33.BranchBloc(
          get<_i9.IAuthFacade>(),
          get<_i11.IBranchRepository>(),
          get<_i21.ISessionsRepository>(),
          get<_i23.ISettingsRepository>(),
          get<_i15.IUserRepository>()),
      registerFor: {_dev, _prod});
  return get;
}

class _$FirebaseInjectableModule extends _i34.FirebaseInjectableModule {}

class _$IIsarInjectableModule extends _i35.IIsarInjectableModule {}
