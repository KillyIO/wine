// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:wine/domain/core/typewriter_type.dart' as _i14;
import 'package:wine/presentation/home/home_page.dart' as _i1;
import 'package:wine/presentation/library/library_page.dart' as _i2;
import 'package:wine/presentation/log_in/log_in_page.dart' as _i3;
import 'package:wine/presentation/plus/plus_page.dart' as _i4;
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart'
    as _i8;
import 'package:wine/presentation/settings/settings_chapter/settings_chapter_page.dart'
    as _i9;
import 'package:wine/presentation/settings/settings_page.dart' as _i11;
import 'package:wine/presentation/settings/settings_series/settings_series_page.dart'
    as _i10;
import 'package:wine/presentation/sign_up/sign_up_page.dart' as _i6;
import 'package:wine/presentation/typewriter/typewriter_page.dart' as _i7;
import 'package:wine/presentation/wrappers/settings_wrapper.dart' as _i5;

class AppRouter extends _i12.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i12.AdaptivePage<_i1.HomePage>(
          routeData: routeData, child: const _i1.HomePage());
    },
    LibraryRoute.name: (routeData) {
      return _i12.AdaptivePage<_i2.LibraryPage>(
          routeData: routeData, child: const _i2.LibraryPage());
    },
    LogInRoute.name: (routeData) {
      final args = routeData.argsAs<LogInRouteArgs>();
      return _i12.AdaptivePage<_i3.LogInPage>(
          routeData: routeData,
          child: _i3.LogInPage(key: args.key, navigateTo: args.navigateTo));
    },
    PlusRoute.name: (routeData) {
      return _i12.AdaptivePage<_i4.PlusPage>(
          routeData: routeData, child: const _i4.PlusPage());
    },
    SettingsWrapper.name: (routeData) {
      return _i12.AdaptivePage<_i5.SettingsWrapper>(
          routeData: routeData, child: const _i5.SettingsWrapper());
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return _i12.AdaptivePage<_i6.SignUpPage>(
          routeData: routeData,
          child: _i6.SignUpPage(key: args.key, navigateTo: args.navigateTo));
    },
    TypewriterSeriesId.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<TypewriterSeriesIdArgs>(
          orElse: () => TypewriterSeriesIdArgs(id: pathParams.optString('id')));
      return _i12.AdaptivePage<_i7.TypewriterPage>(
          routeData: routeData,
          child:
              _i7.TypewriterPage(key: args.key, id: args.id, type: args.type));
    },
    TypewriterSeriesNew.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<TypewriterSeriesNewArgs>(
          orElse: () =>
              TypewriterSeriesNewArgs(id: pathParams.optString('id')));
      return _i12.AdaptivePage<_i7.TypewriterPage>(
          routeData: routeData,
          child:
              _i7.TypewriterPage(key: args.key, id: args.id, type: args.type));
    },
    SettingsAccountRoute.name: (routeData) {
      return _i12.AdaptivePage<_i8.SettingsAccountPage>(
          routeData: routeData, child: const _i8.SettingsAccountPage());
    },
    SettingsChapterRoute.name: (routeData) {
      return _i12.AdaptivePage<_i9.SettingsChapterPage>(
          routeData: routeData, child: const _i9.SettingsChapterPage());
    },
    SettingsSeriesRoute.name: (routeData) {
      return _i12.AdaptivePage<_i10.SettingsSeriesPage>(
          routeData: routeData, child: const _i10.SettingsSeriesPage());
    },
    SettingsRoute.name: (routeData) {
      return _i12.AdaptivePage<_i11.SettingsPage>(
          routeData: routeData, child: const _i11.SettingsPage());
    }
  };

  @override
  List<_i12.RouteConfig> get routes => [
        _i12.RouteConfig(HomeRoute.name, path: '/'),
        _i12.RouteConfig(LibraryRoute.name, path: '/library'),
        _i12.RouteConfig(LogInRoute.name, path: '/log-in'),
        _i12.RouteConfig(PlusRoute.name, path: '/plus'),
        _i12.RouteConfig(SettingsWrapper.name, path: '/settings', children: [
          _i12.RouteConfig(SettingsAccountRoute.name,
              path: 'account', parent: SettingsWrapper.name),
          _i12.RouteConfig(SettingsChapterRoute.name,
              path: 'chapter', parent: SettingsWrapper.name),
          _i12.RouteConfig(SettingsSeriesRoute.name,
              path: 'series', parent: SettingsWrapper.name),
          _i12.RouteConfig(SettingsRoute.name,
              path: '', parent: SettingsWrapper.name)
        ]),
        _i12.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i12.RouteConfig(TypewriterSeriesId.name,
            path: '/typewriter/series/:id'),
        _i12.RouteConfig(TypewriterSeriesNew.name,
            path: '/typewriter/series/new')
      ];
}

/// generated route for [_i1.HomePage]
class HomeRoute extends _i12.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for [_i2.LibraryPage]
class LibraryRoute extends _i12.PageRouteInfo<void> {
  const LibraryRoute() : super(name, path: '/library');

  static const String name = 'LibraryRoute';
}

/// generated route for [_i3.LogInPage]
class LogInRoute extends _i12.PageRouteInfo<LogInRouteArgs> {
  LogInRoute({_i13.Key? key, required _i12.PageRouteInfo<dynamic> navigateTo})
      : super(name,
            path: '/log-in',
            args: LogInRouteArgs(key: key, navigateTo: navigateTo));

  static const String name = 'LogInRoute';
}

class LogInRouteArgs {
  const LogInRouteArgs({this.key, required this.navigateTo});

  final _i13.Key? key;

  final _i12.PageRouteInfo<dynamic> navigateTo;
}

/// generated route for [_i4.PlusPage]
class PlusRoute extends _i12.PageRouteInfo<void> {
  const PlusRoute() : super(name, path: '/plus');

  static const String name = 'PlusRoute';
}

/// generated route for [_i5.SettingsWrapper]
class SettingsWrapper extends _i12.PageRouteInfo<void> {
  const SettingsWrapper({List<_i12.PageRouteInfo>? children})
      : super(name, path: '/settings', initialChildren: children);

  static const String name = 'SettingsWrapper';
}

/// generated route for [_i6.SignUpPage]
class SignUpRoute extends _i12.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i13.Key? key, required _i12.PageRouteInfo<dynamic> navigateTo})
      : super(name,
            path: '/sign-up',
            args: SignUpRouteArgs(key: key, navigateTo: navigateTo));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key, required this.navigateTo});

  final _i13.Key? key;

  final _i12.PageRouteInfo<dynamic> navigateTo;
}

/// generated route for [_i7.TypewriterPage]
class TypewriterSeriesId extends _i12.PageRouteInfo<TypewriterSeriesIdArgs> {
  TypewriterSeriesId(
      {_i13.Key? key,
      String? id,
      _i14.TypewriterType type = _i14.TypewriterType.unknown})
      : super(name,
            path: '/typewriter/series/:id',
            args: TypewriterSeriesIdArgs(key: key, id: id, type: type),
            rawPathParams: {'id': id});

  static const String name = 'TypewriterSeriesId';
}

class TypewriterSeriesIdArgs {
  const TypewriterSeriesIdArgs(
      {this.key, this.id, this.type = _i14.TypewriterType.unknown});

  final _i13.Key? key;

  final String? id;

  final _i14.TypewriterType type;
}

/// generated route for [_i7.TypewriterPage]
class TypewriterSeriesNew extends _i12.PageRouteInfo<TypewriterSeriesNewArgs> {
  TypewriterSeriesNew(
      {_i13.Key? key,
      String? id,
      _i14.TypewriterType type = _i14.TypewriterType.unknown})
      : super(name,
            path: '/typewriter/series/new',
            args: TypewriterSeriesNewArgs(key: key, id: id, type: type));

  static const String name = 'TypewriterSeriesNew';
}

class TypewriterSeriesNewArgs {
  const TypewriterSeriesNewArgs(
      {this.key, this.id, this.type = _i14.TypewriterType.unknown});

  final _i13.Key? key;

  final String? id;

  final _i14.TypewriterType type;
}

/// generated route for [_i8.SettingsAccountPage]
class SettingsAccountRoute extends _i12.PageRouteInfo<void> {
  const SettingsAccountRoute() : super(name, path: 'account');

  static const String name = 'SettingsAccountRoute';
}

/// generated route for [_i9.SettingsChapterPage]
class SettingsChapterRoute extends _i12.PageRouteInfo<void> {
  const SettingsChapterRoute() : super(name, path: 'chapter');

  static const String name = 'SettingsChapterRoute';
}

/// generated route for [_i10.SettingsSeriesPage]
class SettingsSeriesRoute extends _i12.PageRouteInfo<void> {
  const SettingsSeriesRoute() : super(name, path: 'series');

  static const String name = 'SettingsSeriesRoute';
}

/// generated route for [_i11.SettingsPage]
class SettingsRoute extends _i12.PageRouteInfo<void> {
  const SettingsRoute() : super(name, path: '');

  static const String name = 'SettingsRoute';
}
