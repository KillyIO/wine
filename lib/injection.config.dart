// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'application/home/home_navigation/home_navigation_bloc.dart' as _i7;
import 'application/log_in/log_in_bloc.dart' as _i12;
import 'application/splash/splash_bloc.dart' as _i13;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/settings/i_ssettings_repository.dart' as _i14;
import 'domain/user/i_user_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i9;
import 'infrastructure/core/firebase_injectable_module.dart' as _i16;
import 'infrastructure/core/hive_injectable_module.dart' as _i15;
import 'infrastructure/user/user_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final hiveInjectableModule = _$HiveInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  await gh.lazySingletonAsync<_i3.Box<Map<String, dynamic>>>(
      () => hiveInjectableModule.openSettingsBox,
      preResolve: true);
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i6.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.factory<_i7.HomeNavigationBloc>(() => _i7.HomeNavigationBloc());
  gh.lazySingleton<_i8.IAuthFacade>(() =>
      _i9.FirebaseAuthFacade(get<_i4.FirebaseAuth>(), get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i10.IUserRepository>(
      () => _i11.UserRepository(get<_i5.FirebaseFirestore>()));
  gh.factory<_i12.LogInBloc>(() =>
      _i12.LogInBloc(get<_i8.IAuthFacade>(), get<_i10.IUserRepository>()));
  gh.factory<_i13.SplashBloc>(() =>
      _i13.SplashBloc(get<_i8.IAuthFacade>(), get<_i14.ISettingsRepository>()));
  return get;
}

class _$HiveInjectableModule extends _i15.HiveInjectableModule {}

class _$FirebaseInjectableModule extends _i16.FirebaseInjectableModule {}
