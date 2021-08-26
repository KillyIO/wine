// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:hive/hive.dart' as _i13;
import 'package:hive_flutter/hive_flutter.dart' as _i7;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i27;
import 'application/auth/auth_dialog/auth_dialog_cubit.dart' as _i3;
import 'application/home/home_bloc.dart' as _i28;
import 'application/home/home_navigation/home_navigation_bloc.dart' as _i8;
import 'application/library/library_bloc.dart' as _i29;
import 'application/library/library_navigation/library_navigation_bloc.dart'
    as _i22;
import 'application/log_in/log_in_bloc.dart' as _i23;
import 'application/settings/settings_bloc.dart' as _i24;
import 'application/setup/setup_bloc.dart' as _i25;
import 'application/sign_up/sign_up_bloc.dart' as _i26;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/default_covers/i_default_covers_repository.dart' as _i11;
import 'domain/series/i_series_repository.dart' as _i14;
import 'domain/sessions/i_sessions_repository.dart' as _i16;
import 'domain/settings/i_settings_repository.dart' as _i18;
import 'domain/user/i_user_repository.dart' as _i20;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i10;
import 'infrastructure/core/firebase_injectable_module.dart' as _i30;
import 'infrastructure/core/hive_injectable_module.dart' as _i31;
import 'infrastructure/default_covers/default_covers_repository.dart' as _i12;
import 'infrastructure/series/series_repository.dart' as _i15;
import 'infrastructure/sessions/sessions_repository.dart' as _i17;
import 'infrastructure/settings/settings_repository.dart' as _i19;
import 'infrastructure/user/user_repository.dart' as _i21;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final hiveInjectableModule = _$HiveInjectableModule();
  gh.factory<_i3.AuthDialogCubit>(() => _i3.AuthDialogCubit(),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  await gh.lazySingletonAsync<_i7.HiveInterface>(
      () => hiveInjectableModule.hive,
      registerFor: {_dev, _prod},
      preResolve: true);
  gh.factory<_i8.HomeNavigationBloc>(() => _i8.HomeNavigationBloc(),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i9.IAuthFacade>(
      () => _i10.FirebaseAuthFacade(
          get<_i4.FirebaseAuth>(), get<_i6.GoogleSignIn>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i11.IDefaultCoversRepository>(
      () => _i12.DefaultCoversRepository(
          get<_i5.FirebaseFirestore>(), get<_i13.HiveInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i14.ISeriesRepository>(() => _i15.SeriesRepository(),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i16.ISessionsRepository>(
      () => _i17.SessionsRepository(
          get<_i4.FirebaseAuth>(), get<_i13.HiveInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i18.ISettingsRepository>(
      () => _i19.SettingsRepository(
          get<_i4.FirebaseAuth>(), get<_i13.HiveInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i20.IUserRepository>(
      () => _i21.UserRepository(get<_i5.FirebaseFirestore>()),
      registerFor: {_dev, _prod});
  gh.factory<_i22.LibraryNavigationBloc>(() => _i22.LibraryNavigationBloc(),
      registerFor: {_dev, _prod});
  gh.factory<_i23.LogInBloc>(
      () => _i23.LogInBloc(get<_i9.IAuthFacade>(),
          get<_i16.ISessionsRepository>(), get<_i20.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i24.SettingsBloc>(
      () => _i24.SettingsBloc(get<_i9.IAuthFacade>(),
          get<_i16.ISessionsRepository>(), get<_i18.ISettingsRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i25.SetupBloc>(
      () => _i25.SetupBloc(
          get<_i9.IAuthFacade>(),
          get<_i11.IDefaultCoversRepository>(),
          get<_i16.ISessionsRepository>(),
          get<_i18.ISettingsRepository>(),
          get<_i20.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i26.SignUpBloc>(
      () => _i26.SignUpBloc(get<_i9.IAuthFacade>(),
          get<_i16.ISessionsRepository>(), get<_i20.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i27.AuthBloc>(() => _i27.AuthBloc(get<_i9.IAuthFacade>()),
      registerFor: {_dev, _prod});
  gh.factory<_i28.HomeBloc>(() => _i28.HomeBloc(get<_i8.HomeNavigationBloc>()),
      registerFor: {_dev, _prod});
  gh.factory<_i29.LibraryBloc>(
      () => _i29.LibraryBloc(get<_i22.LibraryNavigationBloc>(),
          get<_i16.ISessionsRepository>(), get<_i20.IUserRepository>()),
      registerFor: {_dev, _prod});
  return get;
}

class _$FirebaseInjectableModule extends _i30.FirebaseInjectableModule {}

class _$HiveInjectableModule extends _i31.HiveInjectableModule {}
