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
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart'
    as _i11;
import 'package:wine/presentation/settings/settings_chapter/settings_chapter_page.dart'
    as _i12;
import 'package:wine/presentation/settings/settings_page.dart' as _i14;
import 'package:wine/presentation/settings/settings_series/settings_series_page.dart'
    as _i13;
import 'package:wine/presentation/sign_up/sign_up_page.dart' as _i9;
import 'package:wine/presentation/typewriter/typewriter_page.dart' as _i10;
import 'package:wine/presentation/wrappers/settings_wrapper.dart' as _i8;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i1.AdaptivePage<_i3.HomePage>(
          routeData: routeData, child: const _i3.HomePage());
    },
    LibraryRoute.name: (routeData) {
      return _i1.AdaptivePage<_i4.LibraryPage>(
          routeData: routeData, child: const _i4.LibraryPage());
    },
    LogInRoute.name: (routeData) {
      final args = routeData.argsAs<LogInRouteArgs>();
      return _i1.AdaptivePage<_i5.LogInPage>(
          routeData: routeData,
          child: _i5.LogInPage(key: args.key, navigateTo: args.navigateTo));
    },
    OnboardingRoute.name: (routeData) {
      return _i1.AdaptivePage<_i6.OnboardingPage>(
          routeData: routeData, child: const _i6.OnboardingPage());
    },
    PlusRoute.name: (routeData) {
      return _i1.AdaptivePage<_i7.PlusPage>(
          routeData: routeData, child: const _i7.PlusPage());
    },
    SettingsWrapper.name: (routeData) {
      return _i1.AdaptivePage<_i8.SettingsWrapper>(
          routeData: routeData, child: const _i8.SettingsWrapper());
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return _i1.AdaptivePage<_i9.SignUpPage>(
          routeData: routeData,
          child: _i9.SignUpPage(key: args.key, navigateTo: args.navigateTo));
    },
    TypewriterSeriesId.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<TypewriterSeriesIdArgs>(
          orElse: () => TypewriterSeriesIdArgs(id: pathParams.optString('id')));
      return _i1.AdaptivePage<_i10.TypewriterPage>(
          routeData: routeData,
          child: _i10.TypewriterPage(
              key: args.key, id: args.id, isSeries: args.isSeries));
    },
    TypewriterSeriesNew.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<TypewriterSeriesNewArgs>(
          orElse: () =>
              TypewriterSeriesNewArgs(id: pathParams.optString('id')));
      return _i1.AdaptivePage<_i10.TypewriterPage>(
          routeData: routeData,
          child: _i10.TypewriterPage(
              key: args.key, id: args.id, isSeries: args.isSeries));
    },
    SettingsAccountRoute.name: (routeData) {
      return _i1.AdaptivePage<_i11.SettingsAccountPage>(
          routeData: routeData, child: const _i11.SettingsAccountPage());
    },
    SettingsChapterRoute.name: (routeData) {
      return _i1.AdaptivePage<_i12.SettingsChapterPage>(
          routeData: routeData, child: const _i12.SettingsChapterPage());
    },
    SettingsSeriesRoute.name: (routeData) {
      return _i1.AdaptivePage<_i13.SettingsSeriesPage>(
          routeData: routeData, child: const _i13.SettingsSeriesPage());
    },
    SettingsRoute.name: (routeData) {
      return _i1.AdaptivePage<_i14.SettingsPage>(
          routeData: routeData, child: const _i14.SettingsPage());
    }
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
        _i1.RouteConfig(TypewriterSeriesId.name,
            path: '/typewriter/series/:id'),
        _i1.RouteConfig(TypewriterSeriesNew.name,
            path: '/typewriter/series/new')
      ];
}

class HomeRoute extends _i1.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class LibraryRoute extends _i1.PageRouteInfo<void> {
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

class OnboardingRoute extends _i1.PageRouteInfo<void> {
  const OnboardingRoute() : super(name, path: '/onboarding');

  static const String name = 'OnboardingRoute';
}

class PlusRoute extends _i1.PageRouteInfo<void> {
  const PlusRoute() : super(name, path: '/plus');

  static const String name = 'PlusRoute';
}

class SettingsWrapper extends _i1.PageRouteInfo<void> {
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

class TypewriterSeriesId extends _i1.PageRouteInfo<TypewriterSeriesIdArgs> {
  TypewriterSeriesId({_i2.Key? key, String? id, bool isSeries = true})
      : super(name,
            path: '/typewriter/series/:id',
            args: TypewriterSeriesIdArgs(key: key, id: id, isSeries: isSeries),
            rawPathParams: {'id': id});

  static const String name = 'TypewriterSeriesId';
}

class TypewriterSeriesIdArgs {
  const TypewriterSeriesIdArgs({this.key, this.id, this.isSeries = true});

  final _i2.Key? key;

  final String? id;

  final bool isSeries;
}

class TypewriterSeriesNew extends _i1.PageRouteInfo<TypewriterSeriesNewArgs> {
  TypewriterSeriesNew({_i2.Key? key, String? id, bool isSeries = true})
      : super(name,
            path: '/typewriter/series/new',
            args:
                TypewriterSeriesNewArgs(key: key, id: id, isSeries: isSeries));

  static const String name = 'TypewriterSeriesNew';
}

class TypewriterSeriesNewArgs {
  const TypewriterSeriesNewArgs({this.key, this.id, this.isSeries = true});

  final _i2.Key? key;

  final String? id;

  final bool isSeries;
}

class SettingsAccountRoute extends _i1.PageRouteInfo<void> {
  const SettingsAccountRoute() : super(name, path: 'account');

  static const String name = 'SettingsAccountRoute';
}

class SettingsChapterRoute extends _i1.PageRouteInfo<void> {
  const SettingsChapterRoute() : super(name, path: 'chapter');

  static const String name = 'SettingsChapterRoute';
}

class SettingsSeriesRoute extends _i1.PageRouteInfo<void> {
  const SettingsSeriesRoute() : super(name, path: 'series');

  static const String name = 'SettingsSeriesRoute';
}

class SettingsRoute extends _i1.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}
