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

import 'application/database/account/account_database_bloc.dart';
import 'application/navigation/account/account_navigation_bloc.dart';
import 'application/database/chapter/chapter_database_bloc.dart';
import 'domain/models/hive/chapter_draft.dart';
import 'application/database/chapter_editor/chapter_editor_database_bloc.dart';
import 'application/navigation/chapter_editor/chapter_editor_navigation_bloc.dart';
import 'domain/models/hive/config.dart';
import 'application/authentication/core/core_authentication_bloc.dart';
import 'application/database/core/core_database_bloc.dart';
import 'application/other/core/core_other_bloc.dart';
import 'application/authentication/create_account/create_account_authentication_bloc.dart';
import 'application/database/create_account/create_account_database_bloc.dart';
import 'infrastructure/authentication/firebase_authentication_facade.dart';
import 'infrastructure/database/firebase_online_chapter_draft_database_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'infrastructure/database/firebase_online_chapter_database_facade.dart';
import 'infrastructure/database/firebase_online_placeholder_database_facade.dart';
import 'infrastructure/database/firebase_online_series_database_facade.dart';
import 'infrastructure/database/firebase_online_series_draft_database_facade.dart';
import 'infrastructure/database/firebase_online_user_database_facade.dart';
import 'infrastructure/core/hive_injectable_module.dart';
import 'infrastructure/database/hive_local_chapter_draft_database_facade.dart';
import 'infrastructure/database/hive_local_config_database_facade.dart';
import 'infrastructure/database/hive_local_placeholder_database_facade.dart';
import 'infrastructure/database/hive_local_series_draft_database_facade.dart';
import 'infrastructure/database/hive_local_session_database_facade.dart';
import 'application/database/home/home_database_bloc.dart';
import 'application/navigation/home/home_navigation_bloc.dart';
import 'domain/authentication/i_authentication_facade.dart';
import 'domain/database/facades/local/i_local_chapter_draft_database_facade.dart';
import 'domain/database/facades/local/i_local_config_database_facade.dart';
import 'domain/database/facades/local/i_local_placeholder_database_facade.dart';
import 'domain/database/facades/local/i_local_series_draft_database_facade.dart';
import 'domain/database/facades/local/i_local_session_database_facade.dart';
import 'domain/database/facades/online/i_online_chapter_database_facade.dart';
import 'domain/database/facades/online/i_online_chapter_draft_database_facade.dart';
import 'domain/database/facades/online/i_online_placeholder_database_facade.dart';
import 'domain/database/facades/online/i_online_series_database_facade.dart';
import 'domain/database/facades/online/i_online_series_draft_database_facade.dart';
import 'domain/database/facades/online/i_online_user_database_facade.dart';
import 'application/database/series/series_database_bloc.dart';
import 'domain/models/hive/series_draft.dart';
import 'application/database/series_editor/series_editor_database_bloc.dart';
import 'domain/models/hive/session.dart';
import 'application/authentication/settings/settings_authentication_bloc.dart';
import 'application/database/settings/settings_database_bloc.dart';
import 'application/other/settings/settings_other_bloc.dart';
import 'application/authentication/sign_in/sign_in_authentication_bloc.dart';
import 'application/database/sign_in/sign_in_database_bloc.dart';
import 'application/authentication/splash/splash_authentication_bloc.dart';
import 'application/database/splash/splash_database_bloc.dart';

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
  gh.factory<AccountNavigationBloc>(() => AccountNavigationBloc());
  final box = await hiveInjectableModule.openPlaceholdersBox;
  gh.lazySingleton<hive1.Box<String>>(() => box);
  final box1 = await hiveInjectableModule.openConfigsBox;
  gh.lazySingleton<hive1.Box<Config>>(() => box1);
  final box2 = await hiveInjectableModule.openSessionsBox;
  gh.lazySingleton<hive1.Box<Session>>(() => box2);
  final box3 = await hiveInjectableModule.openSeriesDraftsBox;
  gh.lazySingleton<hive1.Box<SeriesDraft>>(() => box3);
  final box4 = await hiveInjectableModule.openChapterDraftsBox;
  gh.lazySingleton<hive1.Box<ChapterDraft>>(() => box4);
  gh.factory<ChapterEditorNavigationBloc>(() => ChapterEditorNavigationBloc());
  gh.factory<CoreDatabaseBloc>(() => CoreDatabaseBloc());
  gh.factory<CoreOtherBloc>(() => CoreOtherBloc());
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
  gh.lazySingleton<ILocalChapterDraftDatabaseFacade>(
      () => HiveLocalChapterDatabaseFacade(get<hive1.Box<ChapterDraft>>()));
  gh.lazySingleton<ILocalConfigDatabaseFacade>(
      () => HiveLocalConfigDatabaseFacade(get<hive1.Box<Config>>()));
  gh.lazySingleton<ILocalPlaceholderDatabaseFacade>(
      () => HiveLocalPlaceholderDatabaseFacade(get<hive1.Box<String>>()));
  gh.lazySingleton<ILocalSeriesDraftDatabaseFacade>(
      () => HiveLocalSeriesDatabaseFacade(get<hive1.Box<SeriesDraft>>()));
  gh.lazySingleton<ILocalSessionDatabaseFacade>(
      () => HiveLocalSessionDatabaseFacade(get<hive1.Box<Session>>()));
  gh.lazySingleton<IOnlineChapterDatabaseFacade>(() =>
      FirebaseOnlineChapterDatabaseFacade(
          get<FirebaseFirestore>(), get<FirebaseStorage>()));
  gh.lazySingleton<IOnlineChapterDraftDatabaseFacade>(() =>
      FirebaseChapterDraftDatabaseFacade(
          get<FirebaseFirestore>(), get<FirebaseStorage>()));
  gh.lazySingleton<IOnlinePlaceholderDatabaseFacade>(
      () => FirebaseOnlinePlaceholderDatabaseFacade(get<FirebaseFirestore>()));
  gh.lazySingleton<IOnlineSeriesDatabaseFacade>(() =>
      FirebaseOnlineSeriesDatabaseFacade(
          get<FirebaseFirestore>(), get<FirebaseStorage>()));
  gh.lazySingleton<IOnlineSeriesDraftDatabaseFacade>(() =>
      FirebaseOnlineSeriesDraftDatabaseFacade(
          get<FirebaseFirestore>(), get<FirebaseStorage>()));
  gh.lazySingleton<IOnlineUserDatabaseFacade>(
      () => FirebaseOnlineUserDatabaseFacade(get<FirebaseFirestore>()));
  gh.factory<SeriesDatabaseBloc>(() => SeriesDatabaseBloc(
        get<IAuthenticationFacade>(),
        get<ILocalConfigDatabaseFacade>(),
        get<ILocalSessionDatabaseFacade>(),
        get<IOnlineChapterDatabaseFacade>(),
        get<IOnlineSeriesDatabaseFacade>(),
      ));
  gh.factory<SeriesEditorDatabaseBloc>(() => SeriesEditorDatabaseBloc(
        get<ILocalPlaceholderDatabaseFacade>(),
        get<ILocalSessionDatabaseFacade>(),
        get<IOnlineChapterDraftDatabaseFacade>(),
        get<IOnlineSeriesDraftDatabaseFacade>(),
      ));
  gh.factory<SettingsAuthenticationBloc>(
      () => SettingsAuthenticationBloc(get<IAuthenticationFacade>()));
  gh.factory<SettingsDatabaseBloc>(
      () => SettingsDatabaseBloc(get<ILocalSessionDatabaseFacade>()));
  gh.factory<SettingsOtherBloc>(() => SettingsOtherBloc());
  gh.factory<SignInAuthenticationBloc>(
      () => SignInAuthenticationBloc(get<IAuthenticationFacade>()));
  gh.factory<SignInDatabaseBloc>(() => SignInDatabaseBloc(
      get<ILocalSessionDatabaseFacade>(), get<IOnlineUserDatabaseFacade>()));
  gh.factory<SplashAuthenticationBloc>(
      () => SplashAuthenticationBloc(get<IAuthenticationFacade>()));
  gh.factory<SplashDatabaseBloc>(() => SplashDatabaseBloc(
        get<ILocalConfigDatabaseFacade>(),
        get<ILocalSessionDatabaseFacade>(),
        get<IOnlineUserDatabaseFacade>(),
        get<ILocalPlaceholderDatabaseFacade>(),
        get<IOnlinePlaceholderDatabaseFacade>(),
      ));
  gh.factory<AccountDatabaseBloc>(() => AccountDatabaseBloc(
        get<ILocalSessionDatabaseFacade>(),
        get<IOnlineSeriesDatabaseFacade>(),
        get<IOnlineSeriesDraftDatabaseFacade>(),
        get<IOnlineChapterDatabaseFacade>(),
        get<IOnlineChapterDraftDatabaseFacade>(),
      ));
  gh.factory<ChapterDatabaseBloc>(() => ChapterDatabaseBloc(
        get<IAuthenticationFacade>(),
        get<ILocalConfigDatabaseFacade>(),
        get<ILocalSessionDatabaseFacade>(),
        get<IOnlineChapterDatabaseFacade>(),
      ));
  gh.factory<ChapterEditorDatabaseBloc>(() => ChapterEditorDatabaseBloc(
        get<ILocalSessionDatabaseFacade>(),
        get<IOnlineChapterDatabaseFacade>(),
        get<IOnlineChapterDraftDatabaseFacade>(),
        get<IOnlineSeriesDatabaseFacade>(),
        get<IOnlineSeriesDraftDatabaseFacade>(),
        get<ILocalPlaceholderDatabaseFacade>(),
      ));
  gh.factory<CoreAuthenticationBloc>(
      () => CoreAuthenticationBloc(get<IAuthenticationFacade>()));
  gh.factory<CreateAccountAuthenticationBloc>(
      () => CreateAccountAuthenticationBloc(get<IAuthenticationFacade>()));
  gh.factory<CreateAccountDatabaseBloc>(() => CreateAccountDatabaseBloc(
      get<ILocalSessionDatabaseFacade>(), get<IOnlineUserDatabaseFacade>()));
  gh.factory<HomeDatabaseBloc>(
      () => HomeDatabaseBloc(get<IOnlineSeriesDatabaseFacade>()));
  return get;
}

class _$HiveInjectableModule extends HiveInjectableModule {}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
