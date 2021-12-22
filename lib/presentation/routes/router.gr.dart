// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:wine/domain/core/typewriter_type.dart' as _i16;
import 'package:wine/domain/series/series.dart' as _i15;
import 'package:wine/presentation/home/home_page.dart' as _i1;
import 'package:wine/presentation/library/library_page.dart' as _i2;
import 'package:wine/presentation/log_in/log_in_page.dart' as _i3;
import 'package:wine/presentation/plus/plus_page.dart' as _i4;
import 'package:wine/presentation/series/series_page.dart' as _i5;
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart'
    as _i9;
import 'package:wine/presentation/settings/settings_chapter/settings_chapter_page.dart'
    as _i10;
import 'package:wine/presentation/settings/settings_page.dart' as _i12;
import 'package:wine/presentation/settings/settings_series/settings_series_page.dart'
    as _i11;
import 'package:wine/presentation/sign_up/sign_up_page.dart' as _i7;
import 'package:wine/presentation/typewriter/typewriter_page.dart' as _i8;
import 'package:wine/presentation/wrappers/settings_wrapper.dart' as _i6;

class AppRouter extends _i13.RootStackRouter {
  AppRouter([_i14.GlobalKey<_i14.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i13.AdaptivePage<_i1.HomePage>(
          routeData: routeData, child: const _i1.HomePage());
    },
    LibraryRoute.name: (routeData) {
      return _i13.AdaptivePage<_i2.LibraryPage>(
          routeData: routeData, child: const _i2.LibraryPage());
    },
    LogInRoute.name: (routeData) {
      final args = routeData.argsAs<LogInRouteArgs>();
      return _i13.AdaptivePage<_i3.LogInPage>(
          routeData: routeData,
          child: _i3.LogInPage(key: args.key, navigateTo: args.navigateTo));
    },
    PlusRoute.name: (routeData) {
      return _i13.AdaptivePage<_i4.PlusPage>(
          routeData: routeData, child: const _i4.PlusPage());
    },
    SeriesRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<SeriesRouteArgs>(
          orElse: () => SeriesRouteArgs(id: pathParams.getString('id')));
      return _i13.AdaptivePage<_i5.SeriesPage>(
          routeData: routeData,
          child:
              _i5.SeriesPage(key: args.key, id: args.id, series: args.series));
    },
    SettingsWrapper.name: (routeData) {
      return _i13.AdaptivePage<_i6.SettingsWrapper>(
          routeData: routeData, child: const _i6.SettingsWrapper());
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return _i13.AdaptivePage<_i7.SignUpPage>(
          routeData: routeData,
          child: _i7.SignUpPage(key: args.key, navigateTo: args.navigateTo));
    },
    TypewriterSeriesId.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterSeriesIdArgs>(
          orElse: () => TypewriterSeriesIdArgs(id: pathParams.optString('id')));
      return _i13.AdaptivePage<_i8.TypewriterPage>(
          routeData: routeData,
          child: _i8.TypewriterPage(
              key: args.key,
              series: args.series,
              id: args.id,
              type: args.type));
    },
    TypewriterSeriesNew.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterSeriesNewArgs>(
          orElse: () =>
              TypewriterSeriesNewArgs(id: pathParams.optString('id')));
      return _i13.AdaptivePage<_i8.TypewriterPage>(
          routeData: routeData,
          child: _i8.TypewriterPage(
              key: args.key,
              series: args.series,
              id: args.id,
              type: args.type));
    },
    SettingsAccountRoute.name: (routeData) {
      return _i13.AdaptivePage<_i9.SettingsAccountPage>(
          routeData: routeData, child: const _i9.SettingsAccountPage());
    },
    SettingsChapterRoute.name: (routeData) {
      return _i13.AdaptivePage<_i10.SettingsChapterPage>(
          routeData: routeData, child: const _i10.SettingsChapterPage());
    },
    SettingsSeriesRoute.name: (routeData) {
      return _i13.AdaptivePage<_i11.SettingsSeriesPage>(
          routeData: routeData, child: const _i11.SettingsSeriesPage());
    },
    SettingsRoute.name: (routeData) {
      return _i13.AdaptivePage<_i12.SettingsPage>(
          routeData: routeData, child: const _i12.SettingsPage());
    }
  };

  @override
  List<_i13.RouteConfig> get routes => [
        _i13.RouteConfig(HomeRoute.name, path: '/'),
        _i13.RouteConfig(LibraryRoute.name, path: '/library'),
        _i13.RouteConfig(LogInRoute.name, path: '/log-in'),
        _i13.RouteConfig(PlusRoute.name, path: '/plus'),
        _i13.RouteConfig(SeriesRoute.name, path: '/series/:id'),
        _i13.RouteConfig(SettingsWrapper.name, path: '/settings', children: [
          _i13.RouteConfig(SettingsAccountRoute.name,
              path: 'account', parent: SettingsWrapper.name),
          _i13.RouteConfig(SettingsChapterRoute.name,
              path: 'chapter', parent: SettingsWrapper.name),
          _i13.RouteConfig(SettingsSeriesRoute.name,
              path: 'series', parent: SettingsWrapper.name),
          _i13.RouteConfig(SettingsRoute.name,
              path: '', parent: SettingsWrapper.name)
        ]),
        _i13.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i13.RouteConfig(TypewriterSeriesId.name,
            path: '/typewriter/series/:id'),
        _i13.RouteConfig(TypewriterSeriesNew.name,
            path: '/typewriter/series/new')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.LibraryPage]
class LibraryRoute extends _i13.PageRouteInfo<void> {
  const LibraryRoute() : super(LibraryRoute.name, path: '/library');

  static const String name = 'LibraryRoute';
}

/// generated route for
/// [_i3.LogInPage]
class LogInRoute extends _i13.PageRouteInfo<LogInRouteArgs> {
  LogInRoute({_i14.Key? key, required _i13.PageRouteInfo<dynamic> navigateTo})
      : super(LogInRoute.name,
            path: '/log-in',
            args: LogInRouteArgs(key: key, navigateTo: navigateTo));

  static const String name = 'LogInRoute';
}

class LogInRouteArgs {
  const LogInRouteArgs({this.key, required this.navigateTo});

  final _i14.Key? key;

  final _i13.PageRouteInfo<dynamic> navigateTo;

  @override
  String toString() {
    return 'LogInRouteArgs{key: $key, navigateTo: $navigateTo}';
  }
}

/// generated route for
/// [_i4.PlusPage]
class PlusRoute extends _i13.PageRouteInfo<void> {
  const PlusRoute() : super(PlusRoute.name, path: '/plus');

  static const String name = 'PlusRoute';
}

/// generated route for
/// [_i5.SeriesPage]
class SeriesRoute extends _i13.PageRouteInfo<SeriesRouteArgs> {
  SeriesRoute({_i14.Key? key, required String id, _i15.Series? series})
      : super(SeriesRoute.name,
            path: '/series/:id',
            args: SeriesRouteArgs(key: key, id: id, series: series),
            rawPathParams: {'id': id});

  static const String name = 'SeriesRoute';
}

class SeriesRouteArgs {
  const SeriesRouteArgs({this.key, required this.id, this.series});

  final _i14.Key? key;

  final String id;

  final _i15.Series? series;

  @override
  String toString() {
    return 'SeriesRouteArgs{key: $key, id: $id, series: $series}';
  }
}

/// generated route for
/// [_i6.SettingsWrapper]
class SettingsWrapper extends _i13.PageRouteInfo<void> {
  const SettingsWrapper({List<_i13.PageRouteInfo>? children})
      : super(SettingsWrapper.name,
            path: '/settings', initialChildren: children);

  static const String name = 'SettingsWrapper';
}

/// generated route for
/// [_i7.SignUpPage]
class SignUpRoute extends _i13.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i14.Key? key, required _i13.PageRouteInfo<dynamic> navigateTo})
      : super(SignUpRoute.name,
            path: '/sign-up',
            args: SignUpRouteArgs(key: key, navigateTo: navigateTo));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key, required this.navigateTo});

  final _i14.Key? key;

  final _i13.PageRouteInfo<dynamic> navigateTo;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, navigateTo: $navigateTo}';
  }
}

/// generated route for
/// [_i8.TypewriterPage]
class TypewriterSeriesId extends _i13.PageRouteInfo<TypewriterSeriesIdArgs> {
  TypewriterSeriesId(
      {_i14.Key? key,
      _i15.Series? series,
      String? id,
      _i16.TypewriterType type = _i16.TypewriterType.unknown})
      : super(TypewriterSeriesId.name,
            path: '/typewriter/series/:id',
            args: TypewriterSeriesIdArgs(
                key: key, series: series, id: id, type: type),
            rawPathParams: {'id': id});

  static const String name = 'TypewriterSeriesId';
}

class TypewriterSeriesIdArgs {
  const TypewriterSeriesIdArgs(
      {this.key,
      this.series,
      this.id,
      this.type = _i16.TypewriterType.unknown});

  final _i14.Key? key;

  final _i15.Series? series;

  final String? id;

  final _i16.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterSeriesIdArgs{key: $key, series: $series, id: $id, type: $type}';
  }
}

/// generated route for
/// [_i8.TypewriterPage]
class TypewriterSeriesNew extends _i13.PageRouteInfo<TypewriterSeriesNewArgs> {
  TypewriterSeriesNew(
      {_i14.Key? key,
      _i15.Series? series,
      String? id,
      _i16.TypewriterType type = _i16.TypewriterType.unknown})
      : super(TypewriterSeriesNew.name,
            path: '/typewriter/series/new',
            args: TypewriterSeriesNewArgs(
                key: key, series: series, id: id, type: type),
            rawPathParams: {'id': id});

  static const String name = 'TypewriterSeriesNew';
}

class TypewriterSeriesNewArgs {
  const TypewriterSeriesNewArgs(
      {this.key,
      this.series,
      this.id,
      this.type = _i16.TypewriterType.unknown});

  final _i14.Key? key;

  final _i15.Series? series;

  final String? id;

  final _i16.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterSeriesNewArgs{key: $key, series: $series, id: $id, type: $type}';
  }
}

/// generated route for
/// [_i9.SettingsAccountPage]
class SettingsAccountRoute extends _i13.PageRouteInfo<void> {
  const SettingsAccountRoute()
      : super(SettingsAccountRoute.name, path: 'account');

  static const String name = 'SettingsAccountRoute';
}

/// generated route for
/// [_i10.SettingsChapterPage]
class SettingsChapterRoute extends _i13.PageRouteInfo<void> {
  const SettingsChapterRoute()
      : super(SettingsChapterRoute.name, path: 'chapter');

  static const String name = 'SettingsChapterRoute';
}

/// generated route for
/// [_i11.SettingsSeriesPage]
class SettingsSeriesRoute extends _i13.PageRouteInfo<void> {
  const SettingsSeriesRoute() : super(SettingsSeriesRoute.name, path: 'series');

  static const String name = 'SettingsSeriesRoute';
}

/// generated route for
/// [_i12.SettingsPage]
class SettingsRoute extends _i13.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '');

  static const String name = 'SettingsRoute';
}
