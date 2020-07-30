// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hive/hive.dart';
import 'package:injectable/get_it_helper.dart';

import 'application/authentication/core/core_authentication_bloc.dart';
import 'application/authentication/create_account/create_account_authentication_bloc.dart';
import 'application/authentication/settings/settings_authentication_bloc.dart';
import 'application/authentication/sign_in/sign_in_authentication_bloc.dart';
import 'application/authentication/splash/splash_authentication_bloc.dart';
import 'application/database/account/account_database_bloc.dart';
import 'application/database/chapter/chapter_database_bloc.dart';
import 'application/database/core/core_database_bloc.dart';
import 'application/database/create_account/create_account_database_bloc.dart';
import 'application/database/home/home_database_bloc.dart';
import 'application/database/new_chapter/new_chapter_database_bloc.dart';
import 'application/database/new_series/new_series_database_bloc.dart';
import 'application/database/series/series_database_bloc.dart';
import 'application/database/settings/settings_database_bloc.dart';
import 'application/database/sign_in/sign_in_database_bloc.dart';
import 'application/database/splash/splash_database_bloc.dart';
import 'application/navigation/account/account_navigation_bloc.dart';
import 'application/navigation/home/home_navigation_bloc.dart';
import 'application/outlier/core/core_outlier_bloc.dart';
import 'application/outlier/settings/settings_outlier_bloc.dart';
import 'domain/authentication/i_authentication_facade.dart';
import 'domain/database/i_local_chapter_draft_database_facade.dart';
import 'domain/database/i_local_placeholder_database_facade.dart';
import 'domain/database/i_local_series_draft_database_facade.dart';
import 'domain/database/i_local_session_database_facade.dart';
import 'domain/database/i_online_chapter_database_facade.dart';
import 'domain/database/i_online_placeholder_database_facade.dart';
import 'domain/database/i_online_series_database_facade.dart';
import 'domain/database/i_online_user_database_facade.dart';
import 'domain/models/hive/chapter_draft.dart';
import 'domain/models/hive/config.dart';
import 'domain/models/hive/series_draft.dart';
import 'domain/models/hive/session.dart';
import 'infrastructure/authentication/firebase_authentication_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'infrastructure/core/hive_injectable_module.dart';
import 'infrastructure/database/firebase_online_chapter_database_facade.dart';
import 'infrastructure/database/firebase_online_placeholder_database_facade.dart';
import 'infrastructure/database/firebase_online_series_database_facade.dart';
import 'infrastructure/database/firebase_online_user_database_facade.dart';
import 'infrastructure/database/hive_local_chapter_draft_database_facade.dart';
import 'infrastructure/database/hive_local_placeholder_database_facade.dart';
import 'infrastructure/database/hive_local_series_draft_database_facade.dart';
import 'infrastructure/database/hive_local_session_database_facade.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final gh = GetItHelper(g, environment);
  final hiveInjectableModule = _$HiveInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<AccountNavigationBloc>(() => AccountNavigationBloc());
  final box = await hiveInjectableModule.openChapterDraftsBox;
  gh.lazySingleton<Box<ChapterDraft>>(() => box);
  final box1 = await hiveInjectableModule.openConfigsBox;
  gh.lazySingleton<Box<Config>>(() => box1);
  final box2 = await hiveInjectableModule.openSeriesDraftsBox;
  gh.lazySingleton<Box<SeriesDraft>>(() => box2);
  final box3 = await hiveInjectableModule.openSessionsBox;
  gh.lazySingleton<Box<Session>>(() => box3);
  final box4 = await hiveInjectableModule.openPlaceholdersBox;
  gh.lazySingleton<Box<String>>(() => box4);
  gh.factory<CoreDatabaseBloc>(() => CoreDatabaseBloc());
  gh.factory<CoreOutlierBloc>(() => CoreOutlierBloc());
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  gh.lazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.factory<HomeNavigationBloc>(() => HomeNavigationBloc());
  gh.lazySingleton<IAuthenticationFacade>(() => FirebaseAuthenticationFacade(
        g<FirebaseAuth>(),
        g<GoogleSignIn>(),
        g<Firestore>(),
      ));
  gh.lazySingleton<ILocalChapterDraftDatabaseFacade>(
      () => HiveLocalChapterDatabaseFacade(g<Box<ChapterDraft>>()));
  gh.lazySingleton<ILocalPlaceholderDatabaseFacade>(
      () => HiveLocalPlaceholderDatabaseFacade(g<Box<String>>()));
  gh.lazySingleton<ILocalSeriesDraftDatabaseFacade>(
      () => HiveLocalSeriesDatabaseFacade(g<Box<SeriesDraft>>()));
  gh.lazySingleton<ILocalSessionDatabaseFacade>(
      () => HiveLocalSessionDatabaseFacade(g<Box<Session>>()));
  gh.lazySingleton<IOnlineChapterDatabaseFacade>(() =>
      FirebaseOnlineChapterDatabaseFacade(
          g<Firestore>(), g<FirebaseStorage>()));
  gh.lazySingleton<IOnlinePlaceholderDatabaseFacade>(
      () => FirebaseOnlinePlaceholderDatabaseFacade(g<Firestore>()));
  gh.lazySingleton<IOnlineSeriesDatabaseFacade>(() =>
      FirebaseOnlineSeriesDatabaseFacade(g<Firestore>(), g<FirebaseStorage>()));
  gh.lazySingleton<IOnlineUserDatabaseFacade>(
      () => FirebaseOnlineUserDatabaseFacade(g<Firestore>()));
  gh.factory<NewChapterDatabaseBloc>(() => NewChapterDatabaseBloc(
        g<ILocalSessionDatabaseFacade>(),
        g<ILocalChapterDraftDatabaseFacade>(),
        g<ILocalSeriesDraftDatabaseFacade>(),
        g<IOnlineChapterDatabaseFacade>(),
        g<IOnlineSeriesDatabaseFacade>(),
        g<ILocalPlaceholderDatabaseFacade>(),
      ));
  gh.factory<NewSeriesDatabaseBloc>(() => NewSeriesDatabaseBloc(
        g<ILocalSessionDatabaseFacade>(),
        g<ILocalChapterDraftDatabaseFacade>(),
        g<ILocalSeriesDraftDatabaseFacade>(),
        g<ILocalPlaceholderDatabaseFacade>(),
      ));
  gh.factory<SeriesDatabaseBloc>(() => SeriesDatabaseBloc(
        g<IAuthenticationFacade>(),
        g<ILocalSessionDatabaseFacade>(),
        g<IOnlineChapterDatabaseFacade>(),
        g<IOnlineSeriesDatabaseFacade>(),
        g<IOnlineUserDatabaseFacade>(),
      ));
  gh.factory<SettingsAuthenticationBloc>(
      () => SettingsAuthenticationBloc(g<IAuthenticationFacade>()));
  gh.factory<SettingsDatabaseBloc>(
      () => SettingsDatabaseBloc(g<ILocalSessionDatabaseFacade>()));
  gh.factory<SettingsOutlierBloc>(() => SettingsOutlierBloc());
  gh.factory<SignInAuthenticationBloc>(
      () => SignInAuthenticationBloc(g<IAuthenticationFacade>()));
  gh.factory<SignInDatabaseBloc>(() => SignInDatabaseBloc(
      g<ILocalSessionDatabaseFacade>(), g<IOnlineUserDatabaseFacade>()));
  gh.factory<SplashAuthenticationBloc>(
      () => SplashAuthenticationBloc(g<IAuthenticationFacade>()));
  gh.factory<SplashDatabaseBloc>(() => SplashDatabaseBloc(
        g<ILocalSessionDatabaseFacade>(),
        g<IOnlineUserDatabaseFacade>(),
        g<ILocalPlaceholderDatabaseFacade>(),
        g<IOnlinePlaceholderDatabaseFacade>(),
      ));
  gh.factory<AccountDatabaseBloc>(() => AccountDatabaseBloc(
        g<ILocalSessionDatabaseFacade>(),
        g<IOnlineSeriesDatabaseFacade>(),
        g<IOnlineChapterDatabaseFacade>(),
      ));
  gh.factory<ChapterDatabaseBloc>(() => ChapterDatabaseBloc(
        g<IAuthenticationFacade>(),
        g<ILocalSessionDatabaseFacade>(),
        g<IOnlineChapterDatabaseFacade>(),
        g<IOnlineSeriesDatabaseFacade>(),
        g<IOnlineUserDatabaseFacade>(),
      ));
  gh.factory<CoreAuthenticationBloc>(
      () => CoreAuthenticationBloc(g<IAuthenticationFacade>()));
  gh.factory<CreateAccountAuthenticationBloc>(
      () => CreateAccountAuthenticationBloc(g<IAuthenticationFacade>()));
  gh.factory<CreateAccountDatabaseBloc>(() => CreateAccountDatabaseBloc(
      g<ILocalSessionDatabaseFacade>(), g<IOnlineUserDatabaseFacade>()));
  gh.factory<HomeDatabaseBloc>(
      () => HomeDatabaseBloc(g<IOnlineSeriesDatabaseFacade>()));
}

class _$HiveInjectableModule extends HiveInjectableModule {}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
