// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../home/home_page.dart';
import '../log_in/log_in_page.dart';
import '../onboarding/onboarding_page.dart';
import '../plus/plus_page.dart';
import '../splash/splash_page.dart';

class Routes {
  static const String homePage = '/home-page';
  static const String logInPage = '/log-in-page';
  static const String onboardingPage = '/onboarding-page';
  static const String plusPage = '/plus-page';
  static const String splashPage = '/';
  static const all = <String>{
    homePage,
    logInPage,
    onboardingPage,
    plusPage,
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
    RouteDef(Routes.plusPage, page: PlusPage),
    RouteDef(Routes.splashPage, page: SplashPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (data) {
      final args = data.getArgs<HomePageArguments>(
        orElse: () => HomePageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => HomePage(key: args.key),
        settings: data,
      );
    },
    LogInPage: (data) {
      final args = data.getArgs<LogInPageArguments>(
        orElse: () => LogInPageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => LogInPage(key: args.key),
        settings: data,
      );
    },
    OnboardingPage: (data) {
      final args = data.getArgs<OnboardingPageArguments>(
        orElse: () => OnboardingPageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => OnboardingPage(key: args.key),
        settings: data,
      );
    },
    PlusPage: (data) {
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => const PlusPage(),
        settings: data,
      );
    },
    SplashPage: (data) {
      final args = data.getArgs<SplashPageArguments>(
        orElse: () => SplashPageArguments(),
      );
      return buildAdaptivePageRoute<dynamic>(
        builder: (context) => SplashPage(key: args.key),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushHomePage({
    Key key,
  }) =>
      push<dynamic>(
        Routes.homePage,
        arguments: HomePageArguments(key: key),
      );

  Future<dynamic> pushLogInPage({
    Key key,
  }) =>
      push<dynamic>(
        Routes.logInPage,
        arguments: LogInPageArguments(key: key),
      );

  Future<dynamic> pushOnboardingPage({
    Key key,
  }) =>
      push<dynamic>(
        Routes.onboardingPage,
        arguments: OnboardingPageArguments(key: key),
      );

  Future<dynamic> pushPlusPage() => push<dynamic>(Routes.plusPage);

  Future<dynamic> pushSplashPage({
    Key key,
  }) =>
      push<dynamic>(
        Routes.splashPage,
        arguments: SplashPageArguments(key: key),
      );
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HomePage arguments holder class
class HomePageArguments {
  final Key key;
  HomePageArguments({this.key});
}

/// LogInPage arguments holder class
class LogInPageArguments {
  final Key key;
  LogInPageArguments({this.key});
}

/// OnboardingPage arguments holder class
class OnboardingPageArguments {
  final Key key;
  OnboardingPageArguments({this.key});
}

/// SplashPage arguments holder class
class SplashPageArguments {
  final Key key;
  SplashPageArguments({this.key});
}
