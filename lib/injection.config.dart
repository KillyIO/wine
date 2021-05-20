// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i6;
import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:hive/hive.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_bloc.dart' as _i3;
import 'application/home/home_bloc.dart' as _i16;
import 'application/home/home_navigation/home_navigation_bloc.dart' as _i9;
import 'application/log_in/log_in_bloc.dart' as _i10;
import 'application/setup/setup_bloc.dart' as _i12;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'domain/default_covers/i_default_covers_repository.dart' as _i13;
import 'domain/sessions/i_sessions_repository.dart' as _i14;
import 'domain/settings/i_settings_repository.dart' as _i15;
import 'domain/user/i_user_repository.dart' as _i11;
import 'infrastructure/core/firebase_injectable_module.dart' as _i17;
import 'infrastructure/core/hive_injectable_module.dart' as _i18;

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
  gh.factory<_i3.AuthBloc>(() => _i3.AuthBloc(get<_i4.IAuthFacade>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i7.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  await gh.lazySingletonAsync<_i8.HiveInterface>(
      () => hiveInjectableModule.hive,
      registerFor: {_dev, _prod},
      preResolve: true);
  gh.factory<_i9.HomeNavigationBloc>(() => _i9.HomeNavigationBloc(),
      registerFor: {_dev, _prod});
  gh.factory<_i10.LogInBloc>(
      () => _i10.LogInBloc(get<_i4.IAuthFacade>(), get<_i11.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i12.SetupBloc>(
      () => _i12.SetupBloc(
          get<_i4.IAuthFacade>(),
          get<_i13.IDefaultCoversRepository>(),
          get<_i14.ISessionsRepository>(),
          get<_i15.ISettingsRepository>(),
          get<_i11.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i16.HomeBloc>(() => _i16.HomeBloc(get<_i9.HomeNavigationBloc>()),
      registerFor: {_dev, _prod});
  return get;
}

class _$FirebaseInjectableModule extends _i17.FirebaseInjectableModule {}

class _$HiveInjectableModule extends _i18.HiveInjectableModule {}
