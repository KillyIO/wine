// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:wine/application/navigation/account/account_navigation_bloc.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:hive/hive.dart';
import 'package:wine/infrastructure/core/hive_injectable_module.dart';
import 'package:wine/domain/models/hive/config.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/application/outlier/core/core_outlier_bloc.dart';
import 'package:wine/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/infrastructure/authentication/firebase_authentication_facade.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/infrastructure/database/hive_local_chapter_draft_database_facade.dart';
import 'package:wine/domain/database/i_local_chapter_draft_database_facade.dart';
import 'package:wine/infrastructure/database/hive_local_placeholder_database_facade.dart';
import 'package:wine/domain/database/i_local_placeholder_database_facade.dart';
import 'package:wine/infrastructure/database/hive_local_series_draft_database_facade.dart';
import 'package:wine/domain/database/i_local_series_draft_database_facade.dart';
import 'package:wine/infrastructure/database/hive_local_session_database_facade.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/infrastructure/database/firebase_online_placeholder_database_facade.dart';
import 'package:wine/domain/database/i_online_placeholder_database_facade.dart';
import 'package:wine/infrastructure/database/firebase_online_user_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/application/authentication/settings/settings_authentication_bloc.dart';
import 'package:wine/application/database/settings/settings_database_bloc.dart';
import 'package:wine/application/outlier/settings/settings_outlier_bloc.dart';
import 'package:wine/application/authentication/sign_in/sign_in_authentication_bloc.dart';
import 'package:wine/application/database/sign_in/sign_in_database_bloc.dart';
import 'package:wine/application/authentication/splash/splash_authentication_bloc.dart';
import 'package:wine/application/database/splash/splash_database_bloc.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';
import 'package:wine/application/authentication/create_account/create_account_authentication_bloc.dart';
import 'package:wine/application/database/create_account/create_account_database_bloc.dart';
import 'package:wine/infrastructure/database/firebase_online_series_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:wine/infrastructure/database/firebase_online_chapter_database_facade.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/application/database/series/series_database_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final hiveInjectableModule = _$HiveInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerFactory<AccountNavigationBloc>(() => AccountNavigationBloc());
  final box = await hiveInjectableModule.openChapterDraftsBox;
  g.registerLazySingleton<Box<ChapterDraft>>(() => box);
  final box1 = await hiveInjectableModule.openConfigsBox;
  g.registerLazySingleton<Box<Config>>(() => box1);
  final box2 = await hiveInjectableModule.openSeriesDraftsBox;
  g.registerLazySingleton<Box<SeriesDraft>>(() => box2);
  final box3 = await hiveInjectableModule.openSessionsBox;
  g.registerLazySingleton<Box<Session>>(() => box3);
  final box4 = await hiveInjectableModule.openPlaceholdersBox;
  g.registerLazySingleton<Box<String>>(() => box4);
  g.registerFactory<CoreOutlierBloc>(() => CoreOutlierBloc());
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<FirebaseStorage>(
      () => firebaseInjectableModule.firebaseStorage);
  g.registerLazySingleton<Firestore>(() => firebaseInjectableModule.firestore);
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerFactory<HomeNavigationBloc>(() => HomeNavigationBloc());
  g.registerLazySingleton<IAuthenticationFacade>(
      () => FirebaseAuthenticationFacade(
            g<FirebaseAuth>(),
            g<GoogleSignIn>(),
            g<Firestore>(),
          ));
  g.registerLazySingleton<ILocalChapterDraftDatabaseFacade>(
      () => HiveLocalChapterDatabaseFacade(g<Box<ChapterDraft>>()));
  g.registerLazySingleton<ILocalPlaceholderDatabaseFacade>(
      () => HiveLocalPlaceholderDatabaseFacade(g<Box<String>>()));
  g.registerLazySingleton<ILocalSeriesDraftDatabaseFacade>(
      () => HiveLocalSeriesDatabaseFacade(g<Box<SeriesDraft>>()));
  g.registerLazySingleton<ILocalSessionDatabaseFacade>(
      () => HiveLocalSessionDatabaseFacade(g<Box<Session>>()));
  g.registerLazySingleton<IOnlinePlaceholderDatabaseFacade>(
      () => FirebaseOnlinePlaceholderDatabaseFacade(g<Firestore>()));
  g.registerLazySingleton<IOnlineUserDatabaseFacade>(
      () => FirebaseOnlineUserDatabaseFacade(g<Firestore>()));
  g.registerFactory<NewSeriesDatabaseBloc>(() => NewSeriesDatabaseBloc(
        g<ILocalSessionDatabaseFacade>(),
        g<ILocalChapterDraftDatabaseFacade>(),
        g<ILocalSeriesDraftDatabaseFacade>(),
        g<ILocalPlaceholderDatabaseFacade>(),
      ));
  g.registerFactory<SettingsAuthenticationBloc>(
      () => SettingsAuthenticationBloc(g<IAuthenticationFacade>()));
  g.registerFactory<SettingsDatabaseBloc>(
      () => SettingsDatabaseBloc(g<ILocalSessionDatabaseFacade>()));
  g.registerFactory<SettingsOutlierBloc>(() => SettingsOutlierBloc());
  g.registerFactory<SignInAuthenticationBloc>(
      () => SignInAuthenticationBloc(g<IAuthenticationFacade>()));
  g.registerFactory<SignInDatabaseBloc>(() => SignInDatabaseBloc(
      g<ILocalSessionDatabaseFacade>(), g<IOnlineUserDatabaseFacade>()));
  g.registerFactory<SplashAuthenticationBloc>(
      () => SplashAuthenticationBloc(g<IAuthenticationFacade>()));
  g.registerFactory<SplashDatabaseBloc>(() => SplashDatabaseBloc(
        g<ILocalSessionDatabaseFacade>(),
        g<IOnlineUserDatabaseFacade>(),
        g<ILocalPlaceholderDatabaseFacade>(),
        g<IOnlinePlaceholderDatabaseFacade>(),
      ));
  g.registerFactory<CoreAuthenticationBloc>(
      () => CoreAuthenticationBloc(g<IAuthenticationFacade>()));
  g.registerFactory<CreateAccountAuthenticationBloc>(
      () => CreateAccountAuthenticationBloc(g<IAuthenticationFacade>()));
  g.registerFactory<CreateAccountDatabaseBloc>(() => CreateAccountDatabaseBloc(
      g<ILocalSessionDatabaseFacade>(), g<IOnlineUserDatabaseFacade>()));
  g.registerLazySingleton<IOnlineSeriesDatabaseFacade>(
      () => FirebaseOnlineSeriesDatabaseFacade(
            g<Firestore>(),
            g<FirebaseStorage>(),
            g<IOnlineUserDatabaseFacade>(),
          ));
  g.registerFactory<HomeDatabaseBloc>(
      () => HomeDatabaseBloc(g<IOnlineSeriesDatabaseFacade>()));
  g.registerLazySingleton<IOnlineChapterDatabaseFacade>(
      () => FirebaseOnlineChapterDatabaseFacade(
            g<Firestore>(),
            g<FirebaseStorage>(),
            g<IOnlineSeriesDatabaseFacade>(),
            g<IOnlineUserDatabaseFacade>(),
          ));
  g.registerFactory<NewChapterDatabaseBloc>(() => NewChapterDatabaseBloc(
        g<ILocalSessionDatabaseFacade>(),
        g<ILocalChapterDraftDatabaseFacade>(),
        g<ILocalSeriesDraftDatabaseFacade>(),
        g<IOnlineChapterDatabaseFacade>(),
        g<IOnlineSeriesDatabaseFacade>(),
        g<ILocalPlaceholderDatabaseFacade>(),
      ));
  g.registerFactory<SeriesDatabaseBloc>(() => SeriesDatabaseBloc(
        g<IAuthenticationFacade>(),
        g<ILocalSessionDatabaseFacade>(),
        g<IOnlineChapterDatabaseFacade>(),
        g<IOnlineSeriesDatabaseFacade>(),
      ));
  g.registerFactory<AccountDatabaseBloc>(() => AccountDatabaseBloc(
        g<ILocalSessionDatabaseFacade>(),
        g<IOnlineSeriesDatabaseFacade>(),
        g<IOnlineChapterDatabaseFacade>(),
      ));
  g.registerFactory<ChapterDatabaseBloc>(() => ChapterDatabaseBloc(
        g<IAuthenticationFacade>(),
        g<ILocalSessionDatabaseFacade>(),
        g<IOnlineChapterDatabaseFacade>(),
      ));
}

class _$HiveInjectableModule extends HiveInjectableModule {}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
