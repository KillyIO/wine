// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i12;
import 'package:firebase_auth/firebase_auth.dart' as _i11;
import 'package:firebase_storage/firebase_storage.dart' as _i14;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i15;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;

import 'application/authentication/core/core_authentication_bloc.dart' as _i50;
import 'application/authentication/settings/settings_authentication_bloc.dart'
    as _i40;
import 'application/database/chapter/chapter_database_bloc.dart' as _i48;
import 'application/database/chapter_editor/chapter_editor_database_bloc.dart'
    as _i49;
import 'application/database/chapter_settings/chapter_settings_database_bloc.dart'
    as _i7;
import 'application/database/core/core_database_bloc.dart' as _i8;
import 'application/database/create_account/create_account_database_bloc.dart'
    as _i10;
import 'application/database/home/home_database_bloc.dart' as _i51;
import 'application/database/library/library_database_bloc.dart' as _i34;
import 'application/database/series/series_database_bloc.dart' as _i37;
import 'application/database/series_editor/series_editor_database_bloc.dart'
    as _i38;
import 'application/database/series_settings/series_settings_database_bloc.dart'
    as _i39;
import 'application/database/settings/settings_database_bloc.dart' as _i41;
import 'application/database/splash/splash_database_bloc.dart' as _i47;
import 'application/log_in/log_in_bloc.dart' as _i36;
import 'application/miscellaneous/core/core_miscellaneous_bloc.dart' as _i9;
import 'application/miscellaneous/settings/settings_miscellaneous_bloc.dart'
    as _i42;
import 'application/navigation/chapter_editor/chapter_editor_navigation_bloc.dart'
    as _i6;
import 'application/navigation/home/home_navigation_bloc.dart' as _i17;
import 'application/navigation/library/library_navigation_bloc.dart' as _i35;
import 'application/sign_up/sign_up_bloc.dart' as _i43;
import 'application/splash/splash_bloc.dart' as _i44;
import 'domain/authentication/i_authentication_facade.dart' as _i18;
import 'domain/database/facades/online/i_online_chapter_database_facade.dart'
    as _i20;
import 'domain/database/facades/online/i_online_chapter_draft_database_facade.dart'
    as _i22;
import 'domain/database/facades/online/i_online_series_database_facade.dart'
    as _i24;
import 'domain/database/facades/online/i_online_series_draft_database_facade.dart'
    as _i26;
import 'domain/default_cover/i_local_default_cover_repository.dart' as _i45;
import 'domain/default_cover/i_online_default_cover_repository.dart' as _i46;
import 'domain/models/settings.dart' as _i4;
import 'domain/models/user.dart' as _i5;
import 'domain/session/i_session_repository.dart' as _i28;
import 'domain/settings/i_settings_repository.dart' as _i30;
import 'domain/user/i_user_repository.dart' as _i32;
import 'infrastructure/authentication/firebase_authentication_facade.dart'
    as _i19;
import 'infrastructure/core/firebase_injectable_module.dart' as _i53;
import 'infrastructure/core/hive_injectable_module.dart' as _i52;
import 'infrastructure/database/firebase_chapter_database_facade.dart' as _i21;
import 'infrastructure/database/firebase_chapter_draft_database_facade.dart'
    as _i23;
import 'infrastructure/database/firebase_placeholder_database_facade.dart'
    as _i13;
import 'infrastructure/database/firebase_series_database_facade.dart' as _i25;
import 'infrastructure/database/firebase_series_draft_database_facade.dart'
    as _i27;
import 'infrastructure/database/hive_placeholder_database_facade.dart' as _i16;
import 'infrastructure/session/hive_session_repository.dart' as _i29;
import 'infrastructure/settings/hive_settings_repository.dart' as _i31;
import 'infrastructure/user/firebase_user_repository.dart'
    as _i33; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final hiveInjectableModule = _$HiveInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  await gh.lazySingletonAsync<_i3.Box<_i4.Settings>>(
      () => hiveInjectableModule.openSettingsBox,
      preResolve: true);
  await gh.lazySingletonAsync<_i3.Box<_i5.User>>(
      () => hiveInjectableModule.openSessionsBox,
      preResolve: true);
  await gh.lazySingletonAsync<_i3.Box<String>>(
      () => hiveInjectableModule.openPlaceholdersBox,
      preResolve: true);
  gh.factory<_i6.ChapterEditorNavigationBloc>(
      () => _i6.ChapterEditorNavigationBloc());
  gh.factory<_i7.ChapterSettingsDatabaseBloc>(
      () => _i7.ChapterSettingsDatabaseBloc(get<dynamic>()));
  gh.factory<_i8.CoreDatabaseBloc>(() => _i8.CoreDatabaseBloc());
  gh.factory<_i9.CoreMiscellaneousBloc>(() => _i9.CoreMiscellaneousBloc());
  gh.factory<_i10.CreateAccountDatabaseBloc>(
      () => _i10.CreateAccountDatabaseBloc(get<dynamic>(), get<dynamic>()));
  gh.lazySingleton<_i11.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i12.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i13.FirebasePlaceholderDatabaseFacade>(() =>
      _i13.FirebasePlaceholderDatabaseFacade(get<_i12.FirebaseFirestore>()));
  gh.lazySingleton<_i14.FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<_i15.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i16.HivePlaceholderDatabaseFacade>(
      () => _i16.HivePlaceholderDatabaseFacade(get<_i3.Box<String>>()));
  gh.factory<_i17.HomeNavigationBloc>(() => _i17.HomeNavigationBloc());
  gh.lazySingleton<_i18.IAuthenticationFacade>(() =>
      _i19.FirebaseAuthenticationFacade(get<_i11.FirebaseAuth>(),
          get<_i15.GoogleSignIn>(), get<_i12.FirebaseFirestore>()));
  gh.lazySingleton<_i20.IOnlineChapterDatabaseFacade>(() =>
      _i21.FirebaseOnlineChapterDatabaseFacade(
          get<_i12.FirebaseFirestore>(), get<_i14.FirebaseStorage>()));
  gh.lazySingleton<_i22.IOnlineChapterDraftDatabaseFacade>(() =>
      _i23.FirebaseChapterDraftDatabaseFacade(
          get<_i12.FirebaseFirestore>(), get<_i14.FirebaseStorage>()));
  gh.lazySingleton<_i24.IOnlineSeriesDatabaseFacade>(() =>
      _i25.FirebaseSeriesDatabaseFacade(
          get<_i12.FirebaseFirestore>(), get<_i14.FirebaseStorage>()));
  gh.lazySingleton<_i26.IOnlineSeriesDraftDatabaseFacade>(() =>
      _i27.FirebaseSeriesDraftDatabaseFacade(
          get<_i12.FirebaseFirestore>(), get<_i14.FirebaseStorage>()));
  gh.lazySingleton<_i28.ISessionRepository>(
      () => _i29.HiveSessionRepository(get<_i3.Box<_i5.User>>()));
  gh.lazySingleton<_i30.ISettingsRepository>(
      () => _i31.HiveSettingsRepository(get<_i3.Box<_i4.Settings>>()));
  gh.lazySingleton<_i32.IUserRepository>(
      () => _i33.FirebaseUserRepository(get<_i12.FirebaseFirestore>()));
  gh.factory<_i34.LibraryDatabaseBloc>(() => _i34.LibraryDatabaseBloc(
      get<dynamic>(),
      get<_i24.IOnlineSeriesDatabaseFacade>(),
      get<_i26.IOnlineSeriesDraftDatabaseFacade>(),
      get<_i20.IOnlineChapterDatabaseFacade>(),
      get<_i22.IOnlineChapterDraftDatabaseFacade>()));
  gh.factory<_i35.LibraryNavigationBloc>(() => _i35.LibraryNavigationBloc());
  gh.factory<_i36.LogInBloc>(() => _i36.LogInBloc(
      get<_i18.IAuthenticationFacade>(), get<dynamic>(), get<dynamic>()));
  gh.factory<_i37.SeriesDatabaseBloc>(() => _i37.SeriesDatabaseBloc(
      get<_i18.IAuthenticationFacade>(),
      get<dynamic>(),
      get<dynamic>(),
      get<_i20.IOnlineChapterDatabaseFacade>(),
      get<_i24.IOnlineSeriesDatabaseFacade>()));
  gh.factory<_i38.SeriesEditorDatabaseBloc>(() => _i38.SeriesEditorDatabaseBloc(
      get<dynamic>(),
      get<dynamic>(),
      get<_i22.IOnlineChapterDraftDatabaseFacade>(),
      get<_i26.IOnlineSeriesDraftDatabaseFacade>()));
  gh.factory<_i39.SeriesSettingsDatabaseBloc>(
      () => _i39.SeriesSettingsDatabaseBloc(get<dynamic>()));
  gh.factory<_i40.SettingsAuthenticationBloc>(
      () => _i40.SettingsAuthenticationBloc(get<_i18.IAuthenticationFacade>()));
  gh.factory<_i41.SettingsDatabaseBloc>(
      () => _i41.SettingsDatabaseBloc(get<dynamic>(), get<dynamic>()));
  gh.factory<_i42.SettingsMiscellaneousBloc>(
      () => _i42.SettingsMiscellaneousBloc());
  gh.factory<_i43.SignUpBloc>(
      () => _i43.SignUpBloc(get<_i18.IAuthenticationFacade>()));
  gh.factory<_i44.SplashBloc>(() => _i44.SplashBloc(
      get<_i18.IAuthenticationFacade>(),
      get<_i45.ILocalDefaultCoverRepository>(),
      get<_i46.IOnlineDefaultCoverRepository>(),
      get<_i28.ISessionRepository>(),
      get<_i30.ISettingsRepository>(),
      get<_i32.IUserRepository>()));
  gh.factory<_i47.SplashDatabaseBloc>(() => _i47.SplashDatabaseBloc(
      get<dynamic>(),
      get<dynamic>(),
      get<dynamic>(),
      get<dynamic>(),
      get<dynamic>()));
  gh.factory<_i48.ChapterDatabaseBloc>(() => _i48.ChapterDatabaseBloc(
      get<_i18.IAuthenticationFacade>(),
      get<dynamic>(),
      get<_i20.IOnlineChapterDatabaseFacade>(),
      get<dynamic>()));
  gh.factory<_i49.ChapterEditorDatabaseBloc>(() =>
      _i49.ChapterEditorDatabaseBloc(
          get<_i20.IOnlineChapterDatabaseFacade>(),
          get<_i22.IOnlineChapterDraftDatabaseFacade>(),
          get<_i24.IOnlineSeriesDatabaseFacade>(),
          get<_i26.IOnlineSeriesDraftDatabaseFacade>(),
          get<dynamic>(),
          get<dynamic>()));
  gh.factory<_i50.CoreAuthenticationBloc>(
      () => _i50.CoreAuthenticationBloc(get<_i18.IAuthenticationFacade>()));
  gh.factory<_i51.HomeDatabaseBloc>(
      () => _i51.HomeDatabaseBloc(get<_i24.IOnlineSeriesDatabaseFacade>()));
  return get;
}

class _$HiveInjectableModule extends _i52.HiveInjectableModule {}

class _$FirebaseInjectableModule extends _i53.FirebaseInjectableModule {}
