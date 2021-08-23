// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:wine/presentation/home/home_page.dart' as _i3;
import 'package:wine/presentation/library/library_page.dart' as _i4;
import 'package:wine/presentation/log_in/log_in_page.dart' as _i5;
import 'package:wine/presentation/onboarding/onboarding_page.dart' as _i6;
import 'package:wine/presentation/plus/plus_page.dart' as _i7;

class HomeTestRouter extends _i1.RootStackRouter {
  HomeTestRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.AdaptivePage<_i3.HomePage>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
        }),
    LibraryRoute.name: (routeData) => _i1.AdaptivePage<_i4.LibraryPage>(
        routeData: routeData,
        builder: (_) {
          return const _i4.LibraryPage();
        }),
    LogInRoute.name: (routeData) => _i1.AdaptivePage<_i5.LogInPage>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<LogInRouteArgs>();
          return _i5.LogInPage(key: args.key, navigateTo: args.navigateTo);
        }),
    OnboardingRoute.name: (routeData) => _i1.AdaptivePage<_i6.OnboardingPage>(
        routeData: routeData,
        builder: (_) {
          return const _i6.OnboardingPage();
        }),
    PlusRoute.name: (routeData) => _i1.AdaptivePage<_i7.PlusPage>(
        routeData: routeData,
        builder: (_) {
          return const _i7.PlusPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(LibraryRoute.name, path: '/library'),
        _i1.RouteConfig(LogInRoute.name, path: '/log-in'),
        _i1.RouteConfig(OnboardingRoute.name, path: '/onboarding'),
        _i1.RouteConfig(PlusRoute.name, path: '/plus')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class LibraryRoute extends _i1.PageRouteInfo {
  const LibraryRoute() : super(name, path: '/library');

  static const String name = 'LibraryRoute';
}

class LogInRoute extends _i1.PageRouteInfo<LogInRouteArgs> {
  LogInRoute({_i2.Key? key, required _i1.PageRouteInfo<dynamic> navigateTo})
      : super(name,
            path: '/log-in',
            args: LogInRouteArgs(key: key, navigateTo: navigateTo));

  static const String name = 'LogInRoute';
}

class LogInRouteArgs {
  const LogInRouteArgs({this.key, required this.navigateTo});

  final _i2.Key? key;

  final _i1.PageRouteInfo<dynamic> navigateTo;
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute() : super(name, path: '/onboarding');

  static const String name = 'OnboardingRoute';
}

class PlusRoute extends _i1.PageRouteInfo {
  const PlusRoute() : super(name, path: '/plus');

  static const String name = 'PlusRoute';
}
