// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:wine/presentation/home/home_page.dart' as _i3;
import 'package:wine/presentation/log_in/log_in_page.dart' as _i4;
import 'package:wine/presentation/onboarding/onboarding_page.dart' as _i5;
import 'package:wine/presentation/plus/plus_page.dart' as _i6;
import 'package:wine/presentation/splash/splash_page.dart' as _i7;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i3.HomePage(key: args.key));
    },
    LogInRoute.name: (routeData) {
      final args = routeData.argsAs<LogInRouteArgs>(
          orElse: () => const LogInRouteArgs());
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i4.LogInPage(key: args.key));
    },
    OnboardingRoute.name: (routeData) {
      final args = routeData.argsAs<OnboardingRouteArgs>(
          orElse: () => const OnboardingRouteArgs());
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i5.OnboardingPage(key: args.key));
    },
    PlusRoute.name: (routeData) {
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: const _i6.PlusPage());
    },
    SplashRoute.name: (routeData) {
      final args = routeData.argsAs<SplashRouteArgs>(
          orElse: () => const SplashRouteArgs());
      return _i1.AdaptivePage<dynamic>(
          routeData: routeData, child: _i7.SplashPage(key: args.key));
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/home-page'),
        _i1.RouteConfig(LogInRoute.name, path: '/log-in-page'),
        _i1.RouteConfig(OnboardingRoute.name, path: '/onboarding-page'),
        _i1.RouteConfig(PlusRoute.name, path: '/plus-page'),
        _i1.RouteConfig(SplashRoute.name, path: '/')
      ];
}

class HomeRoute extends _i1.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({_i2.Key key})
      : super(name, path: '/home-page', args: HomeRouteArgs(key: key));

  static const String name = 'HomeRoute';
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i2.Key key;
}

class LogInRoute extends _i1.PageRouteInfo<LogInRouteArgs> {
  LogInRoute({_i2.Key key})
      : super(name, path: '/log-in-page', args: LogInRouteArgs(key: key));

  static const String name = 'LogInRoute';
}

class LogInRouteArgs {
  const LogInRouteArgs({this.key});

  final _i2.Key key;
}

class OnboardingRoute extends _i1.PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({_i2.Key key})
      : super(name,
            path: '/onboarding-page', args: OnboardingRouteArgs(key: key));

  static const String name = 'OnboardingRoute';
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final _i2.Key key;
}

class PlusRoute extends _i1.PageRouteInfo {
  const PlusRoute() : super(name, path: '/plus-page');

  static const String name = 'PlusRoute';
}

class SplashRoute extends _i1.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({_i2.Key key})
      : super(name, path: '/', args: SplashRouteArgs(key: key));

  static const String name = 'SplashRoute';
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key});

  final _i2.Key key;
}
