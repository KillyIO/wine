// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:hive/hive.dart' as _i12;
import 'package:hive_flutter/hive_flutter.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i26;
import 'application/home/home_bloc.dart' as _i27;
import 'application/home/home_navigation/home_navigation_bloc.dart' as _i7;
import 'application/library/library_bloc.dart' as _i28;
import 'application/library/library_navigation/library_navigation_bloc.dart'
    as _i21;
import 'application/log_in/log_in_bloc.dart' as _i22;
import 'application/settings/settings_bloc.dart' as _i23;
import 'application/setup/setup_bloc.dart' as _i24;
import 'application/sign_up/sign_up_bloc.dart' as _i25;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/default_covers/i_default_covers_repository.dart' as _i10;
import 'domain/series/i_series_repository.dart' as _i13;
import 'domain/sessions/i_sessions_repository.dart' as _i15;
import 'domain/settings/i_settings_repository.dart' as _i17;
import 'domain/user/i_user_repository.dart' as _i19;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/core/firebase_injectable_module.dart' as _i29;
import 'infrastructure/core/hive_injectable_module.dart' as _i30;
import 'infrastructure/default_covers/default_covers_repository.dart' as _i11;
import 'infrastructure/series/series_repository.dart' as _i14;
import 'infrastructure/sessions/sessions_repository.dart' as _i16;
import 'infrastructure/settings/settings_repository.dart' as _i18;
import 'infrastructure/user/user_repository.dart' as _i20;

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
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  await gh.lazySingletonAsync<_i6.HiveInterface>(
      () => hiveInjectableModule.hive,
      registerFor: {_dev, _prod},
      preResolve: true);
  gh.factory<_i7.HomeNavigationBloc>(() => _i7.HomeNavigationBloc(),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i8.IAuthFacade>(
      () => _i9.FirebaseAuthFacade(
          get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i10.IDefaultCoversRepository>(
      () => _i11.DefaultCoversRepository(
          get<_i4.FirebaseFirestore>(), get<_i12.HiveInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i13.ISeriesRepository>(() => _i14.SeriesRepository(),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i15.ISessionsRepository>(
      () => _i16.SessionsRepository(
          get<_i3.FirebaseAuth>(), get<_i12.HiveInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i17.ISettingsRepository>(
      () => _i18.SettingsRepository(
          get<_i3.FirebaseAuth>(), get<_i12.HiveInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i19.IUserRepository>(
      () => _i20.UserRepository(get<_i4.FirebaseFirestore>()),
      registerFor: {_dev, _prod});
  gh.factory<_i21.LibraryNavigationBloc>(() => _i21.LibraryNavigationBloc(),
      registerFor: {_dev, _prod});
  gh.factory<_i22.LogInBloc>(
      () => _i22.LogInBloc(get<_i8.IAuthFacade>(),
          get<_i15.ISessionsRepository>(), get<_i19.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i23.SettingsBloc>(
      () => _i23.SettingsBloc(get<_i8.IAuthFacade>(),
          get<_i15.ISessionsRepository>(), get<_i17.ISettingsRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i24.SetupBloc>(
      () => _i24.SetupBloc(
          get<_i8.IAuthFacade>(),
          get<_i10.IDefaultCoversRepository>(),
          get<_i15.ISessionsRepository>(),
          get<_i17.ISettingsRepository>(),
          get<_i19.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i25.SignUpBloc>(
      () => _i25.SignUpBloc(get<_i8.IAuthFacade>(),
          get<_i15.ISessionsRepository>(), get<_i19.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i26.AuthBloc>(() => _i26.AuthBloc(get<_i8.IAuthFacade>()),
      registerFor: {_dev, _prod});
  gh.factory<_i27.HomeBloc>(() => _i27.HomeBloc(get<_i7.HomeNavigationBloc>()),
      registerFor: {_dev, _prod});
  gh.factory<_i28.LibraryBloc>(
      () => _i28.LibraryBloc(get<_i21.LibraryNavigationBloc>(),
          get<_i15.ISessionsRepository>(), get<_i19.IUserRepository>()),
      registerFor: {_dev, _prod});
  return get;
}

class _$FirebaseInjectableModule extends _i29.FirebaseInjectableModule {}

class _$HiveInjectableModule extends _i30.HiveInjectableModule {}
