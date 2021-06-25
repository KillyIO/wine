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
import 'package:wine/presentation/settings/account_settings/account_settings_page.dart'
    as _i8;
import 'package:wine/presentation/settings/chapter_settings/chapter_settings_page.dart'
    as _i9;
import 'package:wine/presentation/settings/series_settings/series_settings_page.dart'
    as _i10;
import 'package:wine/presentation/settings/settings_page.dart' as _i7;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i3.HomePage();
        }),
    LogInRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.LogInPage();
        }),
    OnboardingRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i5.OnboardingPage();
        }),
    PlusRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.PlusPage();
        }),
    SettingsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i7.SettingsPage();
        }),
    AccountSettingsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i8.AccountSettingsPage();
        }),
    ChapterSettingsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i9.ChapterSettingsPage();
        }),
    SeriesSettingsRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i10.SeriesSettingsPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(LogInRoute.name, path: '/log-in'),
        _i1.RouteConfig(OnboardingRoute.name, path: '/onboarding'),
        _i1.RouteConfig(PlusRoute.name, path: '/plus'),
        _i1.RouteConfig(SettingsRoute.name, path: '/settings', children: [
          _i1.RouteConfig(AccountSettingsRoute.name, path: 'account'),
          _i1.RouteConfig(ChapterSettingsRoute.name, path: 'chapter'),
          _i1.RouteConfig(SeriesSettingsRoute.name, path: 'series')
        ])
      ];
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class LogInRoute extends _i1.PageRouteInfo {
  const LogInRoute() : super(name, path: '/log-in');

  static const String name = 'LogInRoute';
}

class OnboardingRoute extends _i1.PageRouteInfo {
  const OnboardingRoute() : super(name, path: '/onboarding');

  static const String name = 'OnboardingRoute';
}

class PlusRoute extends _i1.PageRouteInfo {
  const PlusRoute() : super(name, path: '/plus');

  static const String name = 'PlusRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/settings', initialChildren: children);

  static const String name = 'SettingsRoute';
}

class AccountSettingsRoute extends _i1.PageRouteInfo {
  const AccountSettingsRoute() : super(name, path: 'account');

  static const String name = 'AccountSettingsRoute';
}

class ChapterSettingsRoute extends _i1.PageRouteInfo {
  const ChapterSettingsRoute() : super(name, path: 'chapter');

  static const String name = 'ChapterSettingsRoute';
}

class SeriesSettingsRoute extends _i1.PageRouteInfo {
  const SeriesSettingsRoute() : super(name, path: 'series');

  static const String name = 'SeriesSettingsRoute';
}
