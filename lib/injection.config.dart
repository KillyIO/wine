// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:hive/hive.dart' as hive1;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/database/chapter/chapter_database_bloc.dart';
import 'application/database/chapter_editor/chapter_editor_database_bloc.dart';
import 'application/navigation/chapter_editor/chapter_editor_navigation_bloc.dart';
import 'application/database/chapter_settings/chapter_settings_database_bloc.dart';
import 'domain/models/config.dart';
import 'application/authentication/core/core_authentication_bloc.dart';
import 'application/database/core/core_database_bloc.dart';
import 'application/miscellaneous/core/core_miscellaneous_bloc.dart';
import 'application/database/create_account/create_account_database_bloc.dart';
import 'infrastructure/authentication/firebase_authentication_facade.dart';
import 'infrastructure/database/firebase_chapter_draft_database_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'infrastructure/database/firebase_chapter_database_facade.dart';
import 'infrastructure/database/firebase_placeholder_database_facade.dart';
import 'infrastructure/database/firebase_series_database_facade.dart';
import 'infrastructure/database/firebase_series_draft_database_facade.dart';
import 'infrastructure/user/firebase_user_database_facade.dart';
import 'infrastructure/database/hive_config_database_facade.dart';
import 'infrastructure/core/hive_injectable_module.dart';
import 'infrastructure/database/hive_placeholder_database_facade.dart';
import 'infrastructure/session/hive_session_facade.dart';
import 'application/database/home/home_database_bloc.dart';
import 'application/navigation/home/home_navigation_bloc.dart';
import 'domain/authentication/i_authentication_facade.dart';
import 'domain/database/facades/local/i_local_config_database_facade.dart';
import 'domain/database/facades/local/i_local_placeholder_database_facade.dart';
import 'domain/database/facades/online/i_online_chapter_database_facade.dart';
import 'domain/database/facades/online/i_online_chapter_draft_database_facade.dart';
import 'domain/database/facades/online/i_online_placeholder_database_facade.dart';
import 'domain/database/facades/online/i_online_series_database_facade.dart';
import 'domain/database/facades/online/i_online_series_draft_database_facade.dart';
import 'domain/session/i_session_facade.dart';
import 'domain/user/i_user_facade.dart';
import 'application/database/library/library_database_bloc.dart';
import 'application/navigation/library/library_navigation_bloc.dart';
import 'application/authentication/log_in/log_in_bloc.dart';
import 'application/database/series/series_database_bloc.dart';
import 'application/database/series_editor/series_editor_database_bloc.dart';
import 'application/database/series_settings/series_settings_database_bloc.dart';
import 'application/authentication/settings/settings_authentication_bloc.dart';
import 'application/database/settings/settings_database_bloc.dart';
import 'application/miscellaneous/settings/settings_miscellaneous_bloc.dart';
import 'application/authentication/sign_up/sign_up_bloc.dart';
import 'application/authentication/splash/splash_authentication_bloc.dart';
import 'application/database/splash/splash_database_bloc.dart';
import 'domain/models/user.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final hiveInjectableModule = _$HiveInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final resolvedBox = await hiveInjectableModule.openConfigsBox;
  gh.lazySingleton<hive1.Box<Config>>(() => resolvedBox);
  final resolvedBox1 = await hiveInjectableModule.openSessionsBox;
  gh.lazySingleton<hive1.Box<User>>(() => resolvedBox1);
  final resolvedBox2 = await hiveInjectableModule.openPlaceholdersBox;
  gh.lazySingleton<hive1.Box<String>>(() => resolvedBox2);
  gh.factory<ChapterEditorNavigationBloc>(() => ChapterEditorNavigationBloc());
  gh.factory<CoreDatabaseBloc>(() => CoreDatabaseBloc());
  gh.factory<CoreMiscellaneousBloc>(() => CoreMiscellaneousBloc());
  gh.factory<CreateAccountDatabaseBloc>(
      () => CreateAccountDatabaseBloc(get(), get()));
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.factory<HomeNavigationBloc>(() => HomeNavigationBloc());
  gh.lazySingleton<IAuthenticationFacade>(() => FirebaseAuthenticationFacade(
        get<FirebaseAuth>(),
        get<GoogleSignIn>(),
        get<FirebaseFirestore>(),
      ));
  gh.lazySingleton<ILocalConfigDatabaseFacade>(
      () => HiveConfigDatabaseFacade(get<hive1.Box<Config>>()));
  gh.lazySingleton<ILocalPlaceholderDatabaseFacade>(
      () => HivePlaceholderDatabaseFacade(get<hive1.Box<String>>()));
  gh.lazySingleton<IOnlineChapterDatabaseFacade>(() =>
      FirebaseOnlineChapterDatabaseFacade(
          get<FirebaseFirestore>(), get<FirebaseStorage>()));
  gh.lazySingleton<IOnlineChapterDraftDatabaseFacade>(() =>
      FirebaseChapterDraftDatabaseFacade(
          get<FirebaseFirestore>(), get<FirebaseStorage>()));
  gh.lazySingleton<IOnlinePlaceholderDatabaseFacade>(
      () => FirebasePlaceholderDatabaseFacade(get<FirebaseFirestore>()));
  gh.lazySingleton<IOnlineSeriesDatabaseFacade>(() =>
      FirebaseSeriesDatabaseFacade(
          get<FirebaseFirestore>(), get<FirebaseStorage>()));
  gh.lazySingleton<IOnlineSeriesDraftDatabaseFacade>(() =>
      FirebaseSeriesDraftDatabaseFacade(
          get<FirebaseFirestore>(), get<FirebaseStorage>()));
  gh.lazySingleton<ISessionFacade>(
      () => HiveSessionFacade(get<hive1.Box<User>>()));
  gh.lazySingleton<IUserFacade>(
      () => FirebaseUserFacade(get<FirebaseFirestore>()));
  gh.factory<LibraryDatabaseBloc>(() => LibraryDatabaseBloc(
        get(),
        get<IOnlineSeriesDatabaseFacade>(),
        get<IOnlineSeriesDraftDatabaseFacade>(),
        get<IOnlineChapterDatabaseFacade>(),
        get<IOnlineChapterDraftDatabaseFacade>(),
      ));
  gh.factory<LibraryNavigationBloc>(() => LibraryNavigationBloc());
  gh.factory<LogInBloc>(() => LogInBloc(
        get<IAuthenticationFacade>(),
        get<ISessionFacade>(),
        get<IUserFacade>(),
      ));
  gh.factory<SeriesDatabaseBloc>(() => SeriesDatabaseBloc(
        get<IAuthenticationFacade>(),
        get<ILocalConfigDatabaseFacade>(),
        get(),
        get<IOnlineChapterDatabaseFacade>(),
        get<IOnlineSeriesDatabaseFacade>(),
      ));
  gh.factory<SeriesEditorDatabaseBloc>(() => SeriesEditorDatabaseBloc(
        get<ILocalPlaceholderDatabaseFacade>(),
        get(),
        get<IOnlineChapterDraftDatabaseFacade>(),
        get<IOnlineSeriesDraftDatabaseFacade>(),
      ));
  gh.factory<SeriesSettingsDatabaseBloc>(
      () => SeriesSettingsDatabaseBloc(get<ILocalConfigDatabaseFacade>()));
  gh.factory<SettingsAuthenticationBloc>(
      () => SettingsAuthenticationBloc(get<IAuthenticationFacade>()));
  gh.factory<SettingsDatabaseBloc>(
      () => SettingsDatabaseBloc(get<ILocalConfigDatabaseFacade>(), get()));
  gh.factory<SettingsMiscellaneousBloc>(() => SettingsMiscellaneousBloc());
  gh.factory<SignUpBloc>(() => SignUpBloc(get<IAuthenticationFacade>()));
  gh.factory<SplashAuthenticationBloc>(
      () => SplashAuthenticationBloc(get<IAuthenticationFacade>()));
  gh.factory<SplashDatabaseBloc>(() => SplashDatabaseBloc(
        get<ILocalConfigDatabaseFacade>(),
        get(),
        get(),
        get<ILocalPlaceholderDatabaseFacade>(),
        get<IOnlinePlaceholderDatabaseFacade>(),
      ));
  gh.factory<ChapterDatabaseBloc>(() => ChapterDatabaseBloc(
        get<IAuthenticationFacade>(),
        get<ILocalConfigDatabaseFacade>(),
        get<IOnlineChapterDatabaseFacade>(),
        get(),
      ));
  gh.factory<ChapterEditorDatabaseBloc>(() => ChapterEditorDatabaseBloc(
        get<IOnlineChapterDatabaseFacade>(),
        get<IOnlineChapterDraftDatabaseFacade>(),
        get<IOnlineSeriesDatabaseFacade>(),
        get<IOnlineSeriesDraftDatabaseFacade>(),
        get<ILocalPlaceholderDatabaseFacade>(),
        get(),
      ));
  gh.factory<ChapterSettingsDatabaseBloc>(
      () => ChapterSettingsDatabaseBloc(get<ILocalConfigDatabaseFacade>()));
  gh.factory<CoreAuthenticationBloc>(
      () => CoreAuthenticationBloc(get<IAuthenticationFacade>()));
  gh.factory<HomeDatabaseBloc>(
      () => HomeDatabaseBloc(get<IOnlineSeriesDatabaseFacade>()));
  return get;
}

class _$HiveInjectableModule extends HiveInjectableModule {}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
