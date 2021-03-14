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

import 'application/log_in/log_in_bloc.dart' as _i11;
import 'application/splash/splash_bloc.dart' as _i12;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/settings/i_ssettings_repository.dart' as _i13;
import 'domain/user/i_user_repository.dart' as _i9;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i8;
import 'infrastructure/core/firebase_injectable_module.dart' as _i15;
import 'infrastructure/core/hive_injectable_module.dart' as _i14;
import 'infrastructure/user/user_repository.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i7.IAuthFacade>(() =>
      _i8.FirebaseAuthFacade(get<_i4.FirebaseAuth>(), get<_i6.GoogleSignIn>()));
  gh.lazySingleton<_i9.IUserRepository>(
      () => _i10.UserRepository(get<_i5.FirebaseFirestore>()));
  gh.factory<_i11.LogInBloc>(
      () => _i11.LogInBloc(get<_i7.IAuthFacade>(), get<_i9.IUserRepository>()));
  gh.factory<_i12.SplashBloc>(() =>
      _i12.SplashBloc(get<_i7.IAuthFacade>(), get<_i13.ISettingsRepository>()));
  return get;
}

class _$HiveInjectableModule extends _i14.HiveInjectableModule {}

class _$FirebaseInjectableModule extends _i15.FirebaseInjectableModule {}
