// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';

import '../home/home_page.dart';
import '../log_in/log_in_page.dart';
import '../onboarding/onboarding_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String homePage = '/home-page';
  static const String logInPage = '/log-in-page';
  static const String onboardingPage = '/onboarding-page';
  static const String splashPage = '/';
  static const all = <String>{
    homePage,
    logInPage,
    onboardingPage,
    splashPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.logInPage, page: LogInPage),
    RouteDef(Routes.onboardingPage, page: OnboardingPage),
    RouteDef(Routes.splashPage, page: SplashPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    LogInPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LogInPage(),
        settings: data,
      );
    },
    OnboardingPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnboardingPage(),
        settings: data,
      );
    },
    SplashPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushHomePage() => push<dynamic>(Routes.homePage);

  Future<dynamic> pushLogInPage() => push<dynamic>(Routes.logInPage);

  Future<dynamic> pushOnboardingPage() => push<dynamic>(Routes.onboardingPage);

  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);
}
