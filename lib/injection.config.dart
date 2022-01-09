// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i7;
import 'package:hive/hive.dart' as _i16;
import 'package:hive_flutter/hive_flutter.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i23;

import 'application/auth/auth_bloc.dart' as _i25;
import 'application/auth/auth_dialog/auth_dialog_cubit.dart' as _i3;
import 'application/home/home_bloc.dart' as _i9;
import 'application/library/library_bloc.dart' as _i28;
import 'application/log_in/log_in_bloc.dart' as _i29;
import 'application/series/series_bloc.dart' as _i30;
import 'application/settings/settings_bloc.dart' as _i31;
import 'application/setup/setup_bloc.dart' as _i32;
import 'application/sign_up/sign_up_bloc.dart' as _i33;
import 'application/typewriter/typewriter_chapter/typewriter_chapter_bloc.dart'
    as _i24;
import 'application/typewriter/typewriter_series/typewriter_series_bloc.dart'
    as _i34;
import 'domain/auth/i_auth_facade.dart' as _i10;
import 'domain/chapter/i_chapter_repository.dart' as _i12;
import 'domain/default_covers/i_default_covers_repository.dart' as _i14;
import 'domain/series/i_series_repository.dart' as _i17;
import 'domain/sessions/i_sessions_repository.dart' as _i26;
import 'domain/settings/i_settings_repository.dart' as _i19;
import 'domain/user/i_user_repository.dart' as _i21;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i11;
import 'infrastructure/chapter/chapter_repository.dart' as _i13;
import 'infrastructure/core/firebase_injectable_module.dart' as _i35;
import 'infrastructure/core/hive_injectable_module.dart' as _i36;
import 'infrastructure/core/isar_injectable_module.dart' as _i37;
import 'infrastructure/default_covers/default_covers_repository.dart' as _i15;
import 'infrastructure/series/series_repository.dart' as _i18;
import 'infrastructure/sessions/sessions_repository.dart' as _i27;
import 'infrastructure/settings/settings_repository.dart' as _i20;
import 'infrastructure/user/user_repository.dart' as _i22;

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
  await gh.lazySingletonAsync<_i8.HiveInterface>(
      () => hiveInjectableModule.hive,
      registerFor: {_dev, _prod},
      preResolve: true);
  gh.factory<_i9.HomeBloc>(() => _i9.HomeBloc(), registerFor: {_dev, _prod});
  gh.lazySingleton<_i10.IAuthFacade>(
      () => _i11.FirebaseAuthFacade(
          get<_i4.FirebaseAuth>(), get<_i7.GoogleSignIn>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i12.IChapterRepository>(
      () => _i13.ChapterRepository(
          get<_i5.FirebaseFirestore>(), get<_i6.FirebaseStorage>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i14.IDefaultCoversRepository>(
      () => _i15.DefaultCoversRepository(
          get<_i5.FirebaseFirestore>(), get<_i16.HiveInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i17.ISeriesRepository>(
      () => _i18.SeriesRepository(
          get<_i5.FirebaseFirestore>(), get<_i6.FirebaseStorage>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i19.ISettingsRepository>(
      () => _i20.SettingsRepository(
          get<_i4.FirebaseAuth>(), get<_i16.HiveInterface>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i21.IUserRepository>(
      () => _i22.UserRepository(get<_i5.FirebaseFirestore>()),
      registerFor: {_dev, _prod});
  await gh.lazySingletonAsync<_i23.Isar>(() => iIsarInjectableModule.isar,
      registerFor: {_dev, _prod}, preResolve: true);
  gh.factory<_i24.TypewriterChapterBloc>(() => _i24.TypewriterChapterBloc(),
      registerFor: {_dev, _prod});
  gh.factory<_i25.AuthBloc>(() => _i25.AuthBloc(get<_i10.IAuthFacade>()),
      registerFor: {_dev, _prod});
  gh.lazySingleton<_i26.ISessionsRepository>(
      () => _i27.SessionsRepository(get<_i4.FirebaseAuth>(), get<_i23.Isar>()),
      registerFor: {_dev, _prod});
  gh.factory<_i28.LibraryBloc>(
      () => _i28.LibraryBloc(
          get<_i17.ISeriesRepository>(), get<_i26.ISessionsRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i29.LogInBloc>(
      () => _i29.LogInBloc(get<_i10.IAuthFacade>(),
          get<_i26.ISessionsRepository>(), get<_i21.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i30.SeriesBloc>(
      () => _i30.SeriesBloc(
          get<_i10.IAuthFacade>(),
          get<_i17.ISeriesRepository>(),
          get<_i26.ISessionsRepository>(),
          get<_i19.ISettingsRepository>(),
          get<_i21.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i31.SettingsBloc>(
      () => _i31.SettingsBloc(get<_i10.IAuthFacade>(),
          get<_i26.ISessionsRepository>(), get<_i19.ISettingsRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i32.SetupBloc>(
      () => _i32.SetupBloc(
          get<_i10.IAuthFacade>(),
          get<_i14.IDefaultCoversRepository>(),
          get<_i26.ISessionsRepository>(),
          get<_i19.ISettingsRepository>(),
          get<_i21.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i33.SignUpBloc>(
      () => _i33.SignUpBloc(get<_i10.IAuthFacade>(),
          get<_i26.ISessionsRepository>(), get<_i21.IUserRepository>()),
      registerFor: {_dev, _prod});
  gh.factory<_i34.TypewriterSeriesBloc>(
      () => _i34.TypewriterSeriesBloc(get<_i14.IDefaultCoversRepository>(),
          get<_i17.ISeriesRepository>(), get<_i26.ISessionsRepository>()),
      registerFor: {_dev, _prod});
  return get;
}

class _$FirebaseInjectableModule extends _i35.FirebaseInjectableModule {}

class _$HiveInjectableModule extends _i36.HiveInjectableModule {}

class _$IIsarInjectableModule extends _i37.IIsarInjectableModule {}
