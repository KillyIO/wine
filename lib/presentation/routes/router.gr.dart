// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/models/chapter.dart';
import '../../domain/models/hive/chapter_draft.dart';
import '../../domain/models/hive/series_draft.dart';
import '../pages/account/index.dart';
import '../pages/chapter/index.dart';
import '../pages/copyrights/index.dart';
import '../pages/create_account/index.dart';
import '../pages/genres/index.dart';
import '../pages/home/index.dart';
import '../pages/new_chapter/index.dart';
import '../pages/new_series/index.dart';
import '../pages/series/index.dart';
import '../pages/settings/index.dart';
import '../pages/sign_in/index.dart';
import '../pages/splash/index.dart';
import '../pages/verify_email/index.dart';

class Routes {
  static const String accountPage = '/account-page';
  static const String chapterPage = '/chapter-page';
  static const String copyrightsPage = '/copyrights-page';
  static const String createAccountPage = '/create-account-page';
  static const String genresPage = '/genres-page';
  static const String homePage = '/home-page';
  static const String newChapterPage = '/new-chapter-page';
  static const String newSeriesPage = '/new-series-page';
  static const String seriesPage = '/series-page';
  static const String settingsPage = '/settings-page';
  static const String signInPage = '/sign-in-page';
  static const String splashPage = '/';
  static const String verifyEmailPage = '/verify-email-page';
  static const all = <String>{
    accountPage,
    chapterPage,
    copyrightsPage,
    createAccountPage,
    genresPage,
    homePage,
    newChapterPage,
    newSeriesPage,
    seriesPage,
    settingsPage,
    signInPage,
    splashPage,
    verifyEmailPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.accountPage, page: AccountPage),
    RouteDef(Routes.chapterPage, page: ChapterPage),
    RouteDef(Routes.copyrightsPage, page: CopyrightsPage),
    RouteDef(Routes.createAccountPage, page: CreateAccountPage),
    RouteDef(Routes.genresPage, page: GenresPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.newChapterPage, page: NewChapterPage),
    RouteDef(Routes.newSeriesPage, page: NewSeriesPage),
    RouteDef(Routes.seriesPage, page: SeriesPage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.verifyEmailPage, page: VerifyEmailPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    AccountPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AccountPage(),
        settings: data,
      );
    },
    ChapterPage: (data) {
      var args = data.getArgs<ChapterPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChapterPage(
          key: args.key,
          chapterUid: args.chapterUid,
        ),
        settings: data,
      );
    },
    CopyrightsPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CopyrightsPage(),
        settings: data,
      );
    },
    CreateAccountPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => CreateAccountPage(),
        settings: data,
      );
    },
    GenresPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => GenresPage(),
        settings: data,
      );
    },
    HomePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    NewChapterPage: (data) {
      var args = data.getArgs<NewChapterPageArguments>(
        orElse: () => NewChapterPageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NewChapterPage(
          key: args.key,
          chapterDraft: args.chapterDraft,
          seriesDraft: args.seriesDraft,
          previousChapter: args.previousChapter,
        ),
        settings: data,
      );
    },
    NewSeriesPage: (data) {
      var args = data.getArgs<NewSeriesPageArguments>(
        orElse: () => NewSeriesPageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => NewSeriesPage(
          key: args.key,
          seriesDraft: args.seriesDraft,
        ),
        settings: data,
      );
    },
    SeriesPage: (data) {
      var args = data.getArgs<SeriesPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SeriesPage(
          key: args.key,
          seriesUid: args.seriesUid,
        ),
        settings: data,
      );
    },
    SettingsPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SettingsPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    SplashPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    VerifyEmailPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => VerifyEmailPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// ChapterPage arguments holder class
class ChapterPageArguments {
  final Key key;
  final String chapterUid;
  ChapterPageArguments({this.key, @required this.chapterUid});
}

/// NewChapterPage arguments holder class
class NewChapterPageArguments {
  final Key key;
  final ChapterDraft chapterDraft;
  final SeriesDraft seriesDraft;
  final Chapter previousChapter;
  NewChapterPageArguments(
      {this.key, this.chapterDraft, this.seriesDraft, this.previousChapter});
}

/// NewSeriesPage arguments holder class
class NewSeriesPageArguments {
  final Key key;
  final SeriesDraft seriesDraft;
  NewSeriesPageArguments({this.key, this.seriesDraft});
}

/// SeriesPage arguments holder class
class SeriesPageArguments {
  final Key key;
  final String seriesUid;
  SeriesPageArguments({this.key, @required this.seriesUid});
}
