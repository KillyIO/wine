// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i16;

import 'application/auth/auth_bloc.dart' as _i18;
import 'application/auth/dialog/auth_dialog_cubit.dart' as _i3;
import 'application/branch/branch_bloc.dart' as _i34;
import 'application/home/home_bloc.dart' as _i19;
import 'application/library/library_bloc.dart' as _i26;
import 'application/log_in/log_in_bloc.dart' as _i27;
import 'application/report/report_bloc.dart' as _i17;
import 'application/settings/settings_bloc.dart' as _i28;
import 'application/setup/setup_bloc.dart' as _i29;
import 'application/sign_up/sign_up_bloc.dart' as _i30;
import 'application/tree/tree_bloc.dart' as _i31;
import 'application/typewriter/branch/typewriter_branch_bloc.dart' as _i32;
import 'application/typewriter/tree/typewriter_tree_bloc.dart' as _i33;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/branch/i_branch_repository.dart' as _i10;
import 'domain/default_covers/i_default_covers_repository.dart' as _i20;
import 'domain/sessions/i_sessions_repository.dart' as _i22;
import 'domain/settings/i_settings_repository.dart' as _i24;
import 'domain/tree/i_tree_repository.dart' as _i12;
import 'domain/user/i_user_repository.dart' as _i14;
import 'features/tree/tree_repository.infrastructure.dart' as _i13;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/branch/branch_repository.dart' as _i11;
import 'infrastructure/core/firebase_injectable_module.dart' as _i35;
import 'infrastructure/core/isar_injectable_module.dart' as _i36;
import 'infrastructure/default_covers/default_covers_repository.dart' as _i21;
import 'infrastructure/sessions/sessions_repository.dart' as _i23;
import 'infrastructure/settings/settings_repository.dart' as _i25;
import 'infrastructure/user/user_repository.dart' as _i15;

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
  gh.factory<_i17.ReportBloc>(() => _i17.ReportBloc(),
      registerFor: {_dev, _prod});
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i8.IAuthFacade>()),
      registerFor: {_dev, _prod});
  gh.factory<_i19.HomeBloc>(() => _i19.HomeBloc(get<_i12.ITreeRepository>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i20.IDefaultCoversRepository>(
      () => _i21.DefaultCoversRepository(
          get<_i5.FirebaseFirestore>(), get<_i16.Isar>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i22.ISessionsRepository>(
      () => _i23.SessionsRepository(get<_i4.FirebaseAuth>(), get<_i16.Isar>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i24.ISettingsRepository>(
      () => _i25.SettingsRepository(get<_i16.Isar>()),
      registerFor: {_dev, _prod});
  gh.factory<_i26.LibraryBloc>(
      () => _i26.LibraryBloc(get<_i10.IBranchRepository>(),
          get<_i22.ISessionsRepository>(), get<_i12.ITreeRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i27.LogInBloc>(
      () => _i27.LogInBloc(
          get<_i8.IAuthFacade>(),
          get<_i20.IDefaultCoversRepository>(),
          get<_i22.ISessionsRepository>(),
          get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i28.SettingsBloc>(
      () => _i28.SettingsBloc(get<_i8.IAuthFacade>(),
          get<_i22.ISessionsRepository>(), get<_i24.ISettingsRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i29.SetupBloc>(
      () => _i29.SetupBloc(
          get<_i8.IAuthFacade>(),
          get<_i20.IDefaultCoversRepository>(),
          get<_i22.ISessionsRepository>(),
          get<_i24.ISettingsRepository>(),
          get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i30.SignUpBloc>(
      () => _i30.SignUpBloc(
          get<_i8.IAuthFacade>(),
          get<_i20.IDefaultCoversRepository>(),
          get<_i22.ISessionsRepository>(),
          get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i31.TreeBloc>(
      () => _i31.TreeBloc(
          get<_i8.IAuthFacade>(),
          get<_i10.IBranchRepository>(),
          get<_i22.ISessionsRepository>(),
          get<_i24.ISettingsRepository>(),
          get<_i12.ITreeRepository>(),
          get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i32.TypewriterBranchBloc>(
      () => _i32.TypewriterBranchBloc(
          get<_i10.IBranchRepository>(),
          get<_i20.IDefaultCoversRepository>(),
          get<_i22.ISessionsRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i33.TypewriterTreeBloc>(
      () => _i33.TypewriterTreeBloc(get<_i20.IDefaultCoversRepository>(),
          get<_i22.ISessionsRepository>(), get<_i12.ITreeRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i34.BranchBloc>(
      () => _i34.BranchBloc(
          get<_i8.IAuthFacade>(),
          get<_i10.IBranchRepository>(),
          get<_i22.ISessionsRepository>(),
          get<_i24.ISettingsRepository>(),
          get<_i14.IUserRepository>()),
      registerFor: {_dev, _prod});
  return get;
}

class _$FirebaseInjectableModule extends _i35.FirebaseInjectableModule {}

class _$IIsarInjectableModule extends _i36.IIsarInjectableModule {}
