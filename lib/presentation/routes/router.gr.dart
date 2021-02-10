// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/enums/editor_content_origin.dart';
import '../pages/chapter_editor_page.dart';
import '../pages/chapter_page.dart';
import '../pages/chapter_settings_page.dart';
import '../pages/copyrights_page.dart';
import '../pages/create_account_page.dart';
import '../pages/genres_page.dart';
import '../pages/home_page.dart';
import '../pages/library_page.dart';
import '../pages/onboarding_page.dart';
import '../pages/plus_page.dart';
import '../pages/series_editor_page.dart';
import '../pages/series_page.dart';
import '../pages/series_settings_page.dart';
import '../pages/settings_page.dart';
import '../pages/sign_in_page.dart';
import '../pages/splash_page.dart';
import '../pages/verify_email_page.dart';

class Routes {
  static const String chapterEditorPage = '/chapter-editor-page';
  static const String chapterPage = '/chapter-page';
  static const String chapterSettingsPage = '/chapter-settings-page';
  static const String copyrightsPage = '/copyrights-page';
  static const String createAccountPage = '/create-account-page';
  static const String genresPage = '/genres-page';
  static const String homePage = '/home-page';
  static const String libraryPage = '/library-page';
  static const String seriesEditorPage = '/series-editor-page';
  static const String onboardingPage = '/onboarding-page';
  static const String plusPage = '/plus-page';
  static const String seriesPage = '/series-page';
  static const String seriesSettingsPage = '/series-settings-page';
  static const String settingsPage = '/settings-page';
  static const String signInPage = '/sign-in-page';
  static const String splashPage = '/';
  static const String verifyEmailPage = '/verify-email-page';
  static const all = <String>{
    chapterEditorPage,
    chapterPage,
    chapterSettingsPage,
    copyrightsPage,
    createAccountPage,
    genresPage,
    homePage,
    libraryPage,
    seriesEditorPage,
    onboardingPage,
    plusPage,
    seriesPage,
    seriesSettingsPage,
    settingsPage,
    signInPage,
    splashPage,
    verifyEmailPage,
  };
}

class WINERouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.chapterEditorPage, page: ChapterEditorPage),
    RouteDef(Routes.chapterPage, page: ChapterPage),
    RouteDef(Routes.chapterSettingsPage, page: ChapterSettingsPage),
    RouteDef(Routes.copyrightsPage, page: CopyrightsPage),
    RouteDef(Routes.createAccountPage, page: CreateAccountPage),
    RouteDef(Routes.genresPage, page: GenresPage),
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.libraryPage, page: LibraryPage),
    RouteDef(Routes.seriesEditorPage, page: SeriesEditorPage),
    RouteDef(Routes.onboardingPage, page: OnboardingPage),
    RouteDef(Routes.plusPage, page: PlusPage),
    RouteDef(Routes.seriesPage, page: SeriesPage),
    RouteDef(Routes.seriesSettingsPage, page: SeriesSettingsPage),
    RouteDef(Routes.settingsPage, page: SettingsPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.verifyEmailPage, page: VerifyEmailPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    ChapterEditorPage: (data) {
      final args = data.getArgs<ChapterEditorPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChapterEditorPage(
          key: args.key,
          chapterDraft: args.chapterDraft,
          editorContentOrigin: args.editorContentOrigin,
          previousChapter: args.previousChapter,
          seriesDraft: args.seriesDraft,
        ),
        settings: data,
      );
    },
    ChapterPage: (data) {
      final args = data.getArgs<ChapterPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChapterPage(
          key: args.key,
          chapter: args.chapter,
        ),
        settings: data,
      );
    },
    ChapterSettingsPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => ChapterSettingsPage(),
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
    LibraryPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LibraryPage(),
        settings: data,
      );
    },
    SeriesEditorPage: (data) {
      final args = data.getArgs<SeriesEditorPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SeriesEditorPage(
          key: args.key,
          editorContentOrigin: args.editorContentOrigin,
          seriesDraft: args.seriesDraft,
        ),
        settings: data,
      );
    },
    OnboardingPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnboardingPage(),
        settings: data,
      );
    },
    PlusPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => PlusPage(),
        settings: data,
      );
    },
    SeriesPage: (data) {
      final args = data.getArgs<SeriesPageArguments>(nullOk: false);
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SeriesPage(
          key: args.key,
          series: args.series,
        ),
        settings: data,
      );
    },
    SeriesSettingsPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SeriesSettingsPage(),
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

/// ChapterEditorPage arguments holder class
class ChapterEditorPageArguments {
  final Key key;
  final dynamic chapterDraft;
  final EditorContentOrigin editorContentOrigin;
  final dynamic previousChapter;
  final dynamic seriesDraft;
  ChapterEditorPageArguments(
      {this.key,
      this.chapterDraft,
      @required this.editorContentOrigin,
      this.previousChapter,
      this.seriesDraft});
}

/// ChapterPage arguments holder class
class ChapterPageArguments {
  final Key key;
  final dynamic chapter;
  ChapterPageArguments({this.key, @required this.chapter});
}

/// SeriesEditorPage arguments holder class
class SeriesEditorPageArguments {
  final Key key;
  final EditorContentOrigin editorContentOrigin;
  final dynamic seriesDraft;
  SeriesEditorPageArguments(
      {this.key, @required this.editorContentOrigin, this.seriesDraft});
}

/// SeriesPage arguments holder class
class SeriesPageArguments {
  final Key key;
  final dynamic series;
  SeriesPageArguments({this.key, @required this.series});
}
