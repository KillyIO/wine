// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:hive/hive.dart';
import 'package:wine/infrastructure/core/hive_injectable_module.dart';
import 'package:wine/domain/models/hive/config.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wine/infrastructure/core/firebase_injectable_module.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/infrastructure/authentication/firebase_authentication_facade.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/infrastructure/database/hive_local_session_database_facade.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/infrastructure/database/firebase_online_user_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/application/database/series/series_database_bloc.dart';
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
import 'package:wine/application/database/home/home_database_bloc.dart';
import 'package:get_it/get_it.dart';

Future<void> $initGetIt(GetIt g, {String environment}) async {
  final hiveInjectableModule = _$HiveInjectableModule();
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  final box = await hiveInjectableModule.openChapterDraftsBoxes;
  g.registerLazySingleton<Box<ChapterDraft>>(() => box);
  final box1 = await hiveInjectableModule.openConfigsBoxes;
  g.registerLazySingleton<Box<Config>>(() => box1);
  final box2 = await hiveInjectableModule.openSeriesDraftsBoxes;
  g.registerLazySingleton<Box<SeriesDraft>>(() => box2);
  final box3 = await hiveInjectableModule.openSessionsBoxes;
  g.registerLazySingleton<Box<Session>>(() => box3);
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
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
  g.registerLazySingleton<ILocalSessionDatabaseFacade>(() =>
      HiveLocalSessionDatabaseFacade(g<Box<Session>>(), g<Box<SeriesDraft>>()));
  g.registerLazySingleton<IOnlineUserDatabaseFacade>(
      () => FirebaseOnlineUserDatabaseFacade(g<Firestore>()));
  g.registerFactory<NewChapterDatabaseBloc>(() => NewChapterDatabaseBloc(
      g<ILocalSessionDatabaseFacade>(), g<IOnlineUserDatabaseFacade>()));
  g.registerFactory<NewSeriesDatabaseBloc>(() => NewSeriesDatabaseBloc(
      g<ILocalSessionDatabaseFacade>(), g<IOnlineUserDatabaseFacade>()));
  g.registerFactory<SeriesDatabaseBloc>(() => SeriesDatabaseBloc(
      g<ILocalSessionDatabaseFacade>(), g<IOnlineUserDatabaseFacade>()));
  g.registerFactory<SettingsAuthenticationBloc>(
      () => SettingsAuthenticationBloc(g<IAuthenticationFacade>()));
  g.registerFactory<SettingsDatabaseBloc>(() => SettingsDatabaseBloc(
      g<ILocalSessionDatabaseFacade>(), g<IOnlineUserDatabaseFacade>()));
  g.registerFactory<SettingsOutlierBloc>(() => SettingsOutlierBloc());
  g.registerFactory<SignInAuthenticationBloc>(
      () => SignInAuthenticationBloc(g<IAuthenticationFacade>()));
  g.registerFactory<SignInDatabaseBloc>(() => SignInDatabaseBloc(
      g<ILocalSessionDatabaseFacade>(), g<IOnlineUserDatabaseFacade>()));
  g.registerFactory<SplashAuthenticationBloc>(
      () => SplashAuthenticationBloc(g<IAuthenticationFacade>()));
  g.registerFactory<SplashDatabaseBloc>(() => SplashDatabaseBloc(
      g<ILocalSessionDatabaseFacade>(), g<IOnlineUserDatabaseFacade>()));
  g.registerFactory<CoreAuthenticationBloc>(
      () => CoreAuthenticationBloc(g<IAuthenticationFacade>()));
  g.registerFactory<CreateAccountAuthenticationBloc>(
      () => CreateAccountAuthenticationBloc(g<IAuthenticationFacade>()));
  g.registerFactory<CreateAccountDatabaseBloc>(() => CreateAccountDatabaseBloc(
      g<ILocalSessionDatabaseFacade>(), g<IOnlineUserDatabaseFacade>()));
  g.registerFactory<HomeDatabaseBloc>(() => HomeDatabaseBloc(
      g<ILocalSessionDatabaseFacade>(), g<IOnlineUserDatabaseFacade>()));
}

class _$HiveInjectableModule extends HiveInjectableModule {}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
