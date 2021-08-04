// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:wine/presentation/home/home_page.dart' as _i3;
import 'package:wine/presentation/onboarding/onboarding_page.dart' as _i4;

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
    OnboardingRoute.name: (routeData) => _i1.AdaptivePage<_i4.OnboardingPage>(
        routeData: routeData,
        builder: (_) {
          return const _i4.OnboardingPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(OnboardingRoute.name, path: '/onboarding')
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute() : super(name, path: '/onboarding');

  static const String name = 'OnboardingRoute';
}
