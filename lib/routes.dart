import 'package:flutter/animation.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/presentation/pages/account/index.dart';
import 'package:wine/presentation/pages/chapter/chapter_page.dart';
import 'package:wine/presentation/pages/copyrights/copyrights_page.dart';
import 'package:wine/presentation/pages/create_account/create_account_page.dart';
import 'package:wine/presentation/pages/genres/genres_page.dart';
import 'package:wine/presentation/pages/home/index.dart';
import 'package:wine/presentation/pages/new_chapter/new_chapter_page.dart';
import 'package:wine/presentation/pages/new_series/new_series_page.dart';
import 'package:wine/presentation/pages/series/series_page.dart';
import 'package:wine/presentation/pages/settings/settings_page.dart';
import 'package:wine/presentation/pages/sign_in/sign_in_page.dart';
import 'package:wine/presentation/pages/splash/splash_page.dart';
import 'package:wine/presentation/pages/verify_email/verify_email_page.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';

final Sailor sailor = Sailor();

void createRoutes() {
  sailor.addRoutes([
    SailorRoute(
      name: Constants.splashRoute,
      builder: (context, args, params) => SplashPage(),
    ),
    // SECTION HOME
    SailorRoute(
      name: Constants.homeRoute,
      builder: (context, args, params) => HomePage(),
      defaultTransitions: [
        SailorTransition.fade_in,
      ],
    ),
    // SECTION SETTINGS
    SailorRoute(
      name: Constants.settingsRoute,
      builder: (context, args, params) => SettingsPage(),
      defaultTransitions: [
        SailorTransition.slide_from_bottom,
      ],
    ),
    // SECTION AUTHENTICATION
    SailorRoute(
      name: Constants.signInRoute,
      builder: (context, args, params) => SignInPage(),
    ),
    SailorRoute(
      name: Constants.createAccountRoute,
      builder: (context, args, params) => CreateAccountPage(),
      defaultTransitions: [
        SailorTransition.slide_from_bottom,
      ],
    ),
    SailorRoute(
      name: Constants.verifyEmailRoute,
      builder: (context, args, params) => VerifyEmailPage(),
    ),
    // SECTION ACCOUNT
    SailorRoute(
      name: Constants.accountRoute,
      builder: (context, args, params) => AccountPage(),
    ),
    // SECTION SERIES
    SailorRoute(
      name: Constants.seriesRoute,
      builder: (context, args, params) => SeriesPage(
        args: args as SeriesPageArgs,
      ),
      defaultTransitions: [
        SailorTransition.fade_in,
      ],
    ),
    SailorRoute(
      name: Constants.newSeriesRoute,
      builder: (context, args, params) => NewSeriesPage(
        args: args as NewSeriesPageArgs,
      ),
    ),
    // SECTION NEW CHAPTER
    SailorRoute(
      name: Constants.newChapterRoute,
      builder: (context, args, params) => NewChapterPage(
        args: args as NewChapterPageArgs,
      ),
      defaultTransitions: [
        SailorTransition.slide_from_right,
      ],
    ),
    SailorRoute(
      name: Constants.chapterRoute,
      builder: (context, args, params) => ChapterPage(
        args: args as ChapterPageArgs,
      ),
      defaultTransitions: [
        SailorTransition.fade_in,
      ],
    ),
    // SECTION DETAILS PAGES
    SailorRoute(
      name: Constants.genresRoute,
      builder: (context, args, params) => GenresPage(),
    ),
    SailorRoute(
      name: Constants.copyrightsRoute,
      builder: (context, args, params) => CopyrightsPage(),
    ),
  ]);
}
