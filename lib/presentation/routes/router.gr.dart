// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:wine/domain/series/series.dart' as _i17;
import 'package:wine/presentation/home/home_page.dart' as _i3;
import 'package:wine/presentation/library/library_page.dart' as _i4;
import 'package:wine/presentation/log_in/log_in_page.dart' as _i5;
import 'package:wine/presentation/onboarding/onboarding_page.dart' as _i6;
import 'package:wine/presentation/plus/plus_page.dart' as _i7;
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart'
    as _i11;
import 'package:wine/presentation/settings/settings_chapter/settings_chapter_page.dart'
    as _i12;
import 'package:wine/presentation/settings/settings_page.dart' as _i14;
import 'package:wine/presentation/settings/settings_series/settings_series_page.dart'
    as _i13;
import 'package:wine/presentation/sign_up/sign_up_page.dart' as _i9;
import 'package:wine/presentation/typewriter/typewriter_series/typewriter_series_id_page.dart'
    as _i15;
import 'package:wine/presentation/typewriter/typewriter_series/typewriter_series_new_page.dart'
    as _i16;
import 'package:wine/presentation/wrappers/settings_wrapper.dart' as _i8;
import 'package:wine/presentation/wrappers/typewiter_wrapper.dart' as _i10;

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
        builder: (data) {
          final args = data.argsAs<SignUpRouteArgs>();
          return _i9.SignUpPage(key: args.key, navigateTo: args.navigateTo);
        }),
    TypewriterWrapper.name: (routeData) =>
        _i1.AdaptivePage<_i10.TypewriterWrapper>(
            routeData: routeData,
            builder: (_) {
              return const _i10.TypewriterWrapper();
            }),
    SettingsAccountRoute.name: (routeData) =>
        _i1.AdaptivePage<_i11.SettingsAccountPage>(
            routeData: routeData,
            builder: (_) {
              return const _i11.SettingsAccountPage();
            }),
    SettingsChapterRoute.name: (routeData) =>
        _i1.AdaptivePage<_i12.SettingsChapterPage>(
            routeData: routeData,
            builder: (_) {
              return const _i12.SettingsChapterPage();
            }),
    SettingsSeriesRoute.name: (routeData) =>
        _i1.AdaptivePage<_i13.SettingsSeriesPage>(
            routeData: routeData,
            builder: (_) {
              return const _i13.SettingsSeriesPage();
            }),
    SettingsRoute.name: (routeData) => _i1.AdaptivePage<_i14.SettingsPage>(
        routeData: routeData,
        builder: (_) {
          return const _i14.SettingsPage();
        }),
    TypewriterSeriesIDRoute.name: (routeData) =>
        _i1.AdaptivePage<_i15.TypewriterSeriesIDPage>(
            routeData: routeData,
            builder: (data) {
              final pathParams = data.pathParams;
              final args = data.argsAs<TypewriterSeriesIDRouteArgs>(
                  orElse: () => TypewriterSeriesIDRouteArgs(
                      seriesId: pathParams.getString('id')));
              return _i15.TypewriterSeriesIDPage(
                  key: args.key, seriesId: args.seriesId, series: args.series);
            }),
    TypewriterSeriesNewRoute.name: (routeData) =>
        _i1.AdaptivePage<_i16.TypewriterSeriesNewPage>(
            routeData: routeData,
            builder: (_) {
              return const _i16.TypewriterSeriesNewPage();
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
          _i1.RouteConfig(SettingsAccountRoute.name, path: 'account'),
          _i1.RouteConfig(SettingsChapterRoute.name, path: 'chapter'),
          _i1.RouteConfig(SettingsSeriesRoute.name, path: 'series'),
          _i1.RouteConfig(SettingsRoute.name, path: '')
        ]),
        _i1.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i1.RouteConfig(TypewriterWrapper.name, path: '/typewriter', children: [
          _i1.RouteConfig(TypewriterSeriesIDRoute.name, path: 'series/:id'),
          _i1.RouteConfig(TypewriterSeriesNewRoute.name, path: 'series/new'),
          _i1.RouteConfig('#redirect',
              path: '', redirectTo: 'series/new', fullMatch: true)
        ])
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

class SignUpRoute extends _i1.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i2.Key? key, required _i1.PageRouteInfo<dynamic> navigateTo})
      : super(name,
            path: '/sign-up',
            args: SignUpRouteArgs(key: key, navigateTo: navigateTo));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key, required this.navigateTo});

  final _i2.Key? key;

  final _i1.PageRouteInfo<dynamic> navigateTo;
}

class TypewriterWrapper extends _i1.PageRouteInfo {
  const TypewriterWrapper({List<_i1.PageRouteInfo>? children})
      : super(name, path: '/typewriter', initialChildren: children);

  static const String name = 'TypewriterWrapper';
}

class SettingsAccountRoute extends _i1.PageRouteInfo {
  const SettingsAccountRoute() : super(name, path: 'account');

  static const String name = 'SettingsAccountRoute';
}

class SettingsChapterRoute extends _i1.PageRouteInfo {
  const SettingsChapterRoute() : super(name, path: 'chapter');

  static const String name = 'SettingsChapterRoute';
}

class SettingsSeriesRoute extends _i1.PageRouteInfo {
  const SettingsSeriesRoute() : super(name, path: 'series');

  static const String name = 'SettingsSeriesRoute';
}

class SettingsRoute extends _i1.PageRouteInfo {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}

class TypewriterSeriesIDRoute
    extends _i1.PageRouteInfo<TypewriterSeriesIDRouteArgs> {
  TypewriterSeriesIDRoute(
      {_i2.Key? key, required String seriesId, _i17.Series? series})
      : super(name,
            path: 'series/:id',
            args: TypewriterSeriesIDRouteArgs(
                key: key, seriesId: seriesId, series: series),
            rawPathParams: {'id': seriesId});

  static const String name = 'TypewriterSeriesIDRoute';
}

class TypewriterSeriesIDRouteArgs {
  const TypewriterSeriesIDRouteArgs(
      {this.key, required this.seriesId, this.series});

  final _i2.Key? key;

  final String seriesId;

  final _i17.Series? series;
}

class TypewriterSeriesNewRoute extends _i1.PageRouteInfo {
  const TypewriterSeriesNewRoute() : super(name, path: 'series/new');

  static const String name = 'TypewriterSeriesNewRoute';
}
