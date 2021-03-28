// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:hive/hive.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;

import 'application/home/home_navigation/home_navigation_bloc.dart' as _i7;
import 'application/log_in/log_in_bloc.dart' as _i18;
import 'application/splash/splash_bloc.dart' as _i19;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/default_covers/i_default_covers_repository.dart' as _i10;
import 'domain/sessions/i_sessions_repository.dart' as _i12;
import 'domain/settings/i_ssettings_repository.dart' as _i14;
import 'domain/user/i_user_repository.dart' as _i16;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/core/firebase_injectable_module.dart' as _i20;
import 'infrastructure/core/hive_injectable_module.dart' as _i21;
import 'infrastructure/default_covers/default_covers_repository.dart' as _i11;
import 'infrastructure/session/session_repository.dart' as _i13;
import 'infrastructure/settings/settings_repository.dart' as _i15;
import 'infrastructure/user/user_repository.dart' as _i17;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
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
      preResolve: true);
  gh.factory<_i7.HomeNavigationBloc>(() => _i7.HomeNavigationBloc());
  gh.lazySingleton<_i8.IAuthFacade>(
      () => _i9.FirebaseAuthFacade(
          get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i10.IDefaultCoversRepository>(
      () => _i11.DefaultCoversRepository(
          get<_i4.FirebaseFirestore>(), get<_i6.HiveInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i12.ISessionsRepository>(
      () => _i13.SessionsRepository(
          get<_i3.FirebaseAuth>(), get<_i6.HiveInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i14.ISettingsRepository>(
      () => _i15.SettingsRepository(
          get<_i3.FirebaseAuth>(), get<_i6.HiveInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i16.IUserRepository>(
      () => _i17.UserRepository(get<_i4.FirebaseFirestore>()),
      registerFor: {_dev, _prod});
  gh.factory<_i18.LogInBloc>(() =>
      _i18.LogInBloc(get<_i8.IAuthFacade>(), get<_i16.IUserRepository>()));
  gh.factory<_i19.SplashBloc>(() => _i19.SplashBloc(
      get<_i8.IAuthFacade>(),
      get<_i10.IDefaultCoversRepository>(),
      get<_i12.ISessionsRepository>(),
      get<_i14.ISettingsRepository>(),
      get<_i16.IUserRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i20.FirebaseInjectableModule {}

class _$HiveInjectableModule extends _i21.HiveInjectableModule {}
