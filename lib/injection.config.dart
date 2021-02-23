// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i11;
import 'package:firebase_auth/firebase_auth.dart' as _i10;
import 'package:firebase_storage/firebase_storage.dart' as _i12;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i13;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'application/authentication/core/core_authentication_bloc.dart' as _i50;
import 'application/authentication/log_in/log_in_bloc.dart' as _i37;
import 'application/authentication/settings/settings_authentication_bloc.dart'
    as _i41;
import 'application/authentication/sign_up/sign_up_bloc.dart' as _i44;
import 'application/authentication/splash/splash_authentication_bloc.dart'
    as _i45;
import 'application/database/chapter/chapter_database_bloc.dart' as _i47;
import 'application/database/chapter_editor/chapter_editor_database_bloc.dart'
    as _i48;
import 'application/database/chapter_settings/chapter_settings_database_bloc.dart'
    as _i49;
import 'application/database/core/core_database_bloc.dart' as _i7;
import 'application/database/create_account/create_account_database_bloc.dart'
    as _i9;
import 'application/database/home/home_database_bloc.dart' as _i51;
import 'application/database/library/library_database_bloc.dart' as _i35;
import 'application/database/series/series_database_bloc.dart' as _i38;
import 'application/database/series_editor/series_editor_database_bloc.dart'
    as _i39;
import 'application/database/series_settings/series_settings_database_bloc.dart'
    as _i40;
import 'application/database/settings/settings_database_bloc.dart' as _i42;
import 'application/database/splash/splash_database_bloc.dart' as _i46;
import 'application/miscellaneous/core/core_miscellaneous_bloc.dart' as _i8;
import 'application/miscellaneous/settings/settings_miscellaneous_bloc.dart'
    as _i43;
import 'application/navigation/chapter_editor/chapter_editor_navigation_bloc.dart'
    as _i6;
import 'application/navigation/home/home_navigation_bloc.dart' as _i14;
import 'application/navigation/library/library_navigation_bloc.dart' as _i36;
import 'domain/authentication/i_authentication_facade.dart' as _i15;
import 'domain/database/facades/local/i_local_config_database_facade.dart'
    as _i17;
import 'domain/database/facades/local/i_local_placeholder_database_facade.dart'
    as _i19;
import 'domain/database/facades/online/i_online_chapter_database_facade.dart'
    as _i21;
import 'domain/database/facades/online/i_online_chapter_draft_database_facade.dart'
    as _i23;
import 'domain/database/facades/online/i_online_placeholder_database_facade.dart'
    as _i25;
import 'domain/database/facades/online/i_online_series_database_facade.dart'
    as _i27;
import 'domain/database/facades/online/i_online_series_draft_database_facade.dart'
    as _i29;
import 'domain/models/config.dart' as _i4;
import 'domain/models/user.dart' as _i5;
import 'domain/session/i_session_facade.dart' as _i31;
import 'domain/user/i_user_facade.dart' as _i33;
import 'infrastructure/authentication/firebase_authentication_facade.dart'
    as _i16;
import 'infrastructure/core/firebase_injectable_module.dart' as _i53;
import 'infrastructure/core/hive_injectable_module.dart' as _i52;
import 'infrastructure/database/firebase_chapter_database_facade.dart' as _i22;
import 'infrastructure/database/firebase_chapter_draft_database_facade.dart'
    as _i24;
import 'infrastructure/database/firebase_placeholder_database_facade.dart'
    as _i26;
import 'infrastructure/database/firebase_series_database_facade.dart' as _i28;
import 'infrastructure/database/firebase_series_draft_database_facade.dart'
    as _i30;
import 'infrastructure/database/hive_config_database_facade.dart' as _i18;
import 'infrastructure/database/hive_placeholder_database_facade.dart' as _i20;
import 'infrastructure/session/hive_session_facade.dart' as _i32;
import 'infrastructure/user/firebase_user_database_facade.dart'
    as _i34; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final hiveInjectableModule = _$HiveInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  await gh.factoryAsync<_i3.Box<_i4.Config>>(
      () => hiveInjectableModule.openConfigsBox,
      preResolve: true);
  await gh.factoryAsync<_i3.Box<_i5.User>>(
      () => hiveInjectableModule.openSessionsBox,
      preResolve: true);
  await gh.factoryAsync<_i3.Box<String>>(
      () => hiveInjectableModule.openPlaceholdersBox,
      preResolve: true);
  gh.factory<_i6.ChapterEditorNavigationBloc>(
      () => _i6.ChapterEditorNavigationBloc());
  gh.factory<_i7.CoreDatabaseBloc>(() => _i7.CoreDatabaseBloc());
  gh.factory<_i8.CoreMiscellaneousBloc>(() => _i8.CoreMiscellaneousBloc());
  gh.factory<_i9.CreateAccountDatabaseBloc>(
      () => _i9.CreateAccountDatabaseBloc(get<dynamic>(), get<dynamic>()));
  gh.factory<_i10.FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.factory<_i11.FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.factory<_i12.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.factory<_i13.GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.factory<_i14.HomeNavigationBloc>(() => _i14.HomeNavigationBloc());
  gh.lazySingleton<_i15.IAuthenticationFacade>(() =>
      _i16.FirebaseAuthenticationFacade(get<_i10.FirebaseAuth>(),
          get<_i13.GoogleSignIn>(), get<_i11.FirebaseFirestore>()));
  gh.lazySingleton<_i17.ILocalConfigDatabaseFacade>(
      () => _i18.HiveConfigDatabaseFacade(get<_i3.Box<_i4.Config>>()));
  gh.lazySingleton<_i19.ILocalPlaceholderDatabaseFacade>(
      () => _i20.HivePlaceholderDatabaseFacade(get<_i3.Box<String>>()));
  gh.lazySingleton<_i21.IOnlineChapterDatabaseFacade>(() =>
      _i22.FirebaseOnlineChapterDatabaseFacade(
          get<_i11.FirebaseFirestore>(), get<_i12.FirebaseStorage>()));
  gh.lazySingleton<_i23.IOnlineChapterDraftDatabaseFacade>(() =>
      _i24.FirebaseChapterDraftDatabaseFacade(
          get<_i11.FirebaseFirestore>(), get<_i12.FirebaseStorage>()));
  gh.lazySingleton<_i25.IOnlinePlaceholderDatabaseFacade>(() =>
      _i26.FirebasePlaceholderDatabaseFacade(get<_i11.FirebaseFirestore>()));
  gh.lazySingleton<_i27.IOnlineSeriesDatabaseFacade>(() =>
      _i28.FirebaseSeriesDatabaseFacade(
          get<_i11.FirebaseFirestore>(), get<_i12.FirebaseStorage>()));
  gh.lazySingleton<_i29.IOnlineSeriesDraftDatabaseFacade>(() =>
      _i30.FirebaseSeriesDraftDatabaseFacade(
          get<_i11.FirebaseFirestore>(), get<_i12.FirebaseStorage>()));
  gh.lazySingleton<_i31.ISessionFacade>(
      () => _i32.HiveSessionFacade(get<_i3.Box<_i5.User>>()));
  gh.lazySingleton<_i33.IUserFacade>(
      () => _i34.FirebaseUserFacade(get<_i11.FirebaseFirestore>()));
  gh.factory<_i35.LibraryDatabaseBloc>(() => _i35.LibraryDatabaseBloc(
      get<dynamic>(),
      get<_i27.IOnlineSeriesDatabaseFacade>(),
      get<_i29.IOnlineSeriesDraftDatabaseFacade>(),
      get<_i21.IOnlineChapterDatabaseFacade>(),
      get<_i23.IOnlineChapterDraftDatabaseFacade>()));
  gh.factory<_i36.LibraryNavigationBloc>(() => _i36.LibraryNavigationBloc());
  gh.factory<_i37.LogInBloc>(() => _i37.LogInBloc(
      get<_i15.IAuthenticationFacade>(),
      get<_i31.ISessionFacade>(),
      get<_i33.IUserFacade>()));
  gh.factory<_i38.SeriesDatabaseBloc>(() => _i38.SeriesDatabaseBloc(
      get<_i15.IAuthenticationFacade>(),
      get<_i17.ILocalConfigDatabaseFacade>(),
      get<dynamic>(),
      get<_i21.IOnlineChapterDatabaseFacade>(),
      get<_i27.IOnlineSeriesDatabaseFacade>()));
  gh.factory<_i39.SeriesEditorDatabaseBloc>(() => _i39.SeriesEditorDatabaseBloc(
      get<_i19.ILocalPlaceholderDatabaseFacade>(),
      get<dynamic>(),
      get<_i23.IOnlineChapterDraftDatabaseFacade>(),
      get<_i29.IOnlineSeriesDraftDatabaseFacade>()));
  gh.factory<_i40.SeriesSettingsDatabaseBloc>(() =>
      _i40.SeriesSettingsDatabaseBloc(get<_i17.ILocalConfigDatabaseFacade>()));
  gh.factory<_i41.SettingsAuthenticationBloc>(
      () => _i41.SettingsAuthenticationBloc(get<_i15.IAuthenticationFacade>()));
  gh.factory<_i42.SettingsDatabaseBloc>(() => _i42.SettingsDatabaseBloc(
      get<_i17.ILocalConfigDatabaseFacade>(), get<dynamic>()));
  gh.factory<_i43.SettingsMiscellaneousBloc>(
      () => _i43.SettingsMiscellaneousBloc());
  gh.factory<_i44.SignUpBloc>(
      () => _i44.SignUpBloc(get<_i15.IAuthenticationFacade>()));
  gh.factory<_i45.SplashAuthenticationBloc>(
      () => _i45.SplashAuthenticationBloc(get<_i15.IAuthenticationFacade>()));
  gh.factory<_i46.SplashDatabaseBloc>(() => _i46.SplashDatabaseBloc(
      get<_i17.ILocalConfigDatabaseFacade>(),
      get<dynamic>(),
      get<dynamic>(),
      get<_i19.ILocalPlaceholderDatabaseFacade>(),
      get<_i25.IOnlinePlaceholderDatabaseFacade>()));
  gh.factory<_i47.ChapterDatabaseBloc>(() => _i47.ChapterDatabaseBloc(
      get<_i15.IAuthenticationFacade>(),
      get<_i17.ILocalConfigDatabaseFacade>(),
      get<_i21.IOnlineChapterDatabaseFacade>(),
      get<dynamic>()));
  gh.factory<_i48.ChapterEditorDatabaseBloc>(() =>
      _i48.ChapterEditorDatabaseBloc(
          get<_i21.IOnlineChapterDatabaseFacade>(),
          get<_i23.IOnlineChapterDraftDatabaseFacade>(),
          get<_i27.IOnlineSeriesDatabaseFacade>(),
          get<_i29.IOnlineSeriesDraftDatabaseFacade>(),
          get<_i19.ILocalPlaceholderDatabaseFacade>(),
          get<dynamic>()));
  gh.factory<_i49.ChapterSettingsDatabaseBloc>(() =>
      _i49.ChapterSettingsDatabaseBloc(get<_i17.ILocalConfigDatabaseFacade>()));
  gh.factory<_i50.CoreAuthenticationBloc>(
      () => _i50.CoreAuthenticationBloc(get<_i15.IAuthenticationFacade>()));
  gh.factory<_i51.HomeDatabaseBloc>(
      () => _i51.HomeDatabaseBloc(get<_i27.IOnlineSeriesDatabaseFacade>()));
  return get;
}

class _$HiveInjectableModule extends _i52.HiveInjectableModule {}

class _$FirebaseInjectableModule extends _i53.FirebaseInjectableModule {}
