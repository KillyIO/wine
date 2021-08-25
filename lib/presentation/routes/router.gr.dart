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
import 'package:wine/presentation/settings/account_settings/account_settings_page.dart'
    as _i10;
import 'package:wine/presentation/settings/chapter_settings/chapter_settings_page.dart'
    as _i11;
import 'package:wine/presentation/settings/series_settings/series_settings_page.dart'
    as _i12;
import 'package:wine/presentation/settings/settings_page.dart' as _i13;
import 'package:wine/presentation/sign_up/sign_up_page.dart' as _i9;
import 'package:wine/presentation/wrappers/settings_wrapper.dart' as _i8;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
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
        }),
    SettingsWrapper.name: (routeData) => _i1.AdaptivePage<_i8.SettingsWrapper>(
        routeData: routeData,
        builder: (_) {
          return const _i8.SettingsWrapper();
        }),
    SignUpRoute.name: (routeData) => _i1.AdaptivePage<_i9.SignUpPage>(
        routeData: routeData,
        builder: (_) {
          return const _i9.SignUpPage();
        }),
    AccountSettingsRoute.name: (routeData) =>
        _i1.AdaptivePage<_i10.AccountSettingsPage>(
            routeData: routeData,
            builder: (_) {
              return const _i10.AccountSettingsPage();
            }),
    ChapterSettingsRoute.name: (routeData) =>
        _i1.AdaptivePage<_i11.ChapterSettingsPage>(
            routeData: routeData,
            builder: (_) {
              return const _i11.ChapterSettingsPage();
            }),
    SeriesSettingsRoute.name: (routeData) =>
        _i1.AdaptivePage<_i12.SeriesSettingsPage>(
            routeData: routeData,
            builder: (_) {
              return const _i12.SeriesSettingsPage();
            }),
    SettingsRoute.name: (routeData) => _i1.AdaptivePage<_i13.SettingsPage>(
        routeData: routeData,
        builder: (_) {
          return const _i13.SettingsPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(LibraryRoute.name, path: '/library'),
        _i1.RouteConfig(LogInRoute.name, path: '/log-in'),
        _i1.RouteConfig(OnboardingRoute.name, path: '/onboarding'),
        _i1.RouteConfig(PlusRoute.name, path: '/plus'),
        _i1.RouteConfig(SettingsWrapper.name, path: '/settings', children: [
          _i1.RouteConfig(AccountSettingsRoute.name, path: 'account'),
          _i1.RouteConfig(ChapterSettingsRoute.name, path: 'chapter'),
          _i1.RouteConfig(SeriesSettingsRoute.name, path: 'series'),
          _i1.RouteConfig(SettingsRoute.name, path: '')
        ]),
        _i1.RouteConfig(SignUpRoute.name, path: '/sign-up')
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

class SettingsWrapper extends _i1.PageRouteInfo {
  const SettingsWrapper({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/settings', initialChildren: children);

  static const String name = 'SettingsWrapper';
}

class SignUpRoute extends _i1.PageRouteInfo {
  const SignUpRoute() : super(name, path: '/sign-up');

  static const String name = 'SignUpRoute';
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

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}
