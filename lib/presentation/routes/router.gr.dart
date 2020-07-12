// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wine/presentation/pages/splash/splash_page.dart';
import 'package:wine/presentation/pages/home/home_page.dart';
import 'package:wine/presentation/pages/settings/settings_page.dart';
import 'package:wine/presentation/pages/account/account_page.dart';
import 'package:wine/presentation/pages/new_series/new_series_page.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/presentation/pages/new_chapter/new_chapter_page.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/chapter.dart';

class Routes {
  static const String splashPage = '/';
  static const String homePage = '/home-page';
  static const String settingsPage = '/settings-page';
  static const String accountPage = '/account-page';
  static const String newSeriesPage = '/new-series-page';
  static const String newChapterPage = '/new-chapter-page';
  static const all = <String>{
    splashPage,
    homePage,
    settingsPage,
    accountPage,
    newSeriesPage,
    newChapterPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
    RouteDef(Routes.accountPage, page: AccountPage),
    RouteDef(Routes.newSeriesPage, page: NewSeriesPage),
    RouteDef(Routes.newChapterPage, page: NewChapterPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    HomePage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    SettingsPage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SettingsPage(),
        settings: data,
      );
    },
    AccountPage: (RouteData data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => AccountPage(),
        settings: data,
      );
    },
    NewSeriesPage: (RouteData data) {
      var args = data.getArgs<NewSeriesPageArguments>(
          orElse: () => NewSeriesPageArguments());
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) =>
            NewSeriesPage(key: args.key, seriesDraft: args.seriesDraft),
        settings: data,
      );
    },
    NewChapterPage: (RouteData data) {
      var args = data.getArgs<NewChapterPageArguments>(
          orElse: () => NewChapterPageArguments());
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
  };
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//NewSeriesPage arguments holder class
class NewSeriesPageArguments {
  final Key key;
  final SeriesDraft seriesDraft;
  NewSeriesPageArguments({this.key, this.seriesDraft});
}

//NewChapterPage arguments holder class
class NewChapterPageArguments {
  final Key key;
  final ChapterDraft chapterDraft;
  final SeriesDraft seriesDraft;
  final Chapter previousChapter;
  NewChapterPageArguments(
      {this.key, this.chapterDraft, this.seriesDraft, this.previousChapter});
}
