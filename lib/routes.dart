import 'package:flutter/animation.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/presentation/pages/account/index.dart';
import 'package:wine/presentation/pages/copyrights/copyrights_page.dart';
import 'package:wine/presentation/pages/genres/genres_page.dart';
import 'package:wine/presentation/pages/home/index.dart';
import 'package:wine/presentation/pages/new_series/new_series_page.dart';
import 'package:wine/presentation/pages/settings/settings_page.dart';
import 'package:wine/presentation/pages/splash/splash_page.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';

final Sailor sailor = Sailor();

void createRoutes() {
  sailor.addRoutes([
    SailorRoute(
      name: Constants.splashRoute,
      builder: (context, args, params) {
        return SplashPage();
      },
    ),
    // SECTION HOME
    SailorRoute(
      name: Constants.homeRoute,
      builder: (context, args, params) {
        return HomePage();
      },
      defaultTransitions: [
        SailorTransition.fade_in,
      ],
    ),
    SailorRoute(
      name: Constants.homeMenuRoute,
      builder: (context, args, params) {
        return HomeMenuPage();
      },
      defaultTransitionCurve: Curves.linearToEaseOut,
      defaultTransitions: [
        SailorTransition.slide_from_right,
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
    // SECTION ACCOUNT
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
    // SECTION NEW SERIES
    SailorRoute(
      name: Constants.newSeriesRoute,
      builder: (context, args, params) => NewSeriesPage(
        args: args as NewSeriesPageArgs,
      ),
      defaultTransitions: [
        SailorTransition.slide_from_bottom,
      ],
    ),
    // SECTION DETAILS PAGES
    SailorRoute(
      name: Constants.genresRoute,
      builder: (context, args, params) => GenresPage(),
      defaultTransitions: [
        SailorTransition.slide_from_right,
      ],
    ),
    SailorRoute(
      name: Constants.copyrightsRoute,
      builder: (context, args, params) => CopyrightsPage(),
      defaultTransitions: [
        SailorTransition.slide_from_right,
      ],
    ),
  ]);
}
