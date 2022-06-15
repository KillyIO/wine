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

import 'application/library/library_bloc.dart' as _i17;
import 'application/setup/setup_bloc.dart' as _i28;
import 'application/sign_up/sign_up_bloc.dart' as _i20;
import 'application/tree/tree_bloc.dart' as _i29;
import 'application/typewriter/typewriter_branch/typewriter_branch_bloc.dart'
    as _i30;
import 'application/typewriter/typewriter_tree/typewriter_tree_bloc.dart'
    as _i31;
import 'core/firebase_injectable_module.infrastructure.dart' as _i33;
import 'core/isar_injectable_module.infrastructure.dart' as _i34;
import 'domain/tree/i_tree_repository.dart' as _i12;
import 'features/auth/auth_bloc.application.dart' as _i21;
import 'features/auth/auth_dialog_cubit.application.dart' as _i3;
import 'features/auth/firebase_auth_facade.infrastructure.dart' as _i9;
import 'features/auth/i_auth_facade.domain.dart' as _i8;
import 'features/branch/branch_bloc.application.dart' as _i32;
import 'features/branch/branch_repository.infrastructure.dart' as _i11;
import 'features/branch/i_branch_repository.domain.dart' as _i10;
import 'features/default_covers/default_covers_repository.infrastructure.dart'
    as _i24;
import 'features/default_covers/i_default_covers_repository.domain.dart'
    as _i23;
import 'features/home/home_bloc.application.dart' as _i22;
import 'features/log_in/log_in_bloc.application.dart' as _i18;
import 'features/settings/i_settings_repository.domain.dart' as _i25;
import 'features/settings/settings_bloc.application.dart' as _i27;
import 'features/settings/settings_repository.infrastructure.dart' as _i26;
import 'features/user/i_user_repository.domain.dart' as _i14;
import 'features/user/user_repository.infrastructure.dart' as _i15;
import 'infrastructure/sessions/sessions_repository.dart' as _i19;
import 'infrastructure/tree/tree_repository.dart' as _i13;

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
  gh.factory<_i17.LibraryBloc>(
      () => _i17.LibraryBloc(
          get<dynamic>(), get<dynamic>(), get<_i12.ITreeRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i18.LogInBloc>(
      () => _i18.LogInBloc(
          get<_i8.IAuthFacade>(), get<dynamic>(), get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i19.SessionsRepository>(
      () => _i19.SessionsRepository(get<_i4.FirebaseAuth>(), get<_i16.Isar>()),
      registerFor: {_dev, _prod});
  gh.factory<_i20.SignUpBloc>(
      () => _i20.SignUpBloc(
          get<_i8.IAuthFacade>(), get<dynamic>(), get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i21.AuthBloc>(() => _i21.AuthBloc(get<_i8.IAuthFacade>()),
      registerFor: {_dev, _prod});
  gh.factory<_i22.HomeBloc>(() => _i22.HomeBloc(get<_i12.ITreeRepository>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i23.IDefaultCoversRepository>(
      () => _i24.DefaultCoversRepository(
          get<_i5.FirebaseFirestore>(), get<_i16.Isar>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i25.ISettingsRepository>(
      () => _i26.SettingsRepository(get<_i4.FirebaseAuth>(), get<_i16.Isar>()),
      registerFor: {_dev, _prod});
  gh.factory<_i27.SettingsBloc>(
      () => _i27.SettingsBloc(get<_i8.IAuthFacade>(), get<dynamic>(),
          get<_i25.ISettingsRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i28.SetupBloc>(
      () => _i28.SetupBloc(
          get<_i8.IAuthFacade>(),
          get<_i23.IDefaultCoversRepository>(),
          get<dynamic>(),
          get<_i25.ISettingsRepository>(),
          get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i29.TreeBloc>(
      () => _i29.TreeBloc(
          get<_i8.IAuthFacade>(),
          get<_i10.IBranchRepository>(),
          get<dynamic>(),
          get<_i25.ISettingsRepository>(),
          get<_i12.ITreeRepository>(),
          get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i30.TypewriterBranchBloc>(
      () => _i30.TypewriterBranchBloc(get<_i10.IBranchRepository>(),
          get<_i23.IDefaultCoversRepository>(), get<dynamic>()),
      registerFor: {_dev, _prod});
  gh.factory<_i31.TypewriterTreeBloc>(
      () => _i31.TypewriterTreeBloc(get<_i23.IDefaultCoversRepository>(),
          get<dynamic>(), get<_i12.ITreeRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i32.BranchBloc>(
      () => _i32.BranchBloc(
          get<_i8.IAuthFacade>(),
          get<_i10.IBranchRepository>(),
          get<dynamic>(),
          get<_i25.ISettingsRepository>(),
          get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  return get;
}

class _$FirebaseInjectableModule extends _i33.FirebaseInjectableModule {}

class _$IIsarInjectableModule extends _i34.IIsarInjectableModule {}
