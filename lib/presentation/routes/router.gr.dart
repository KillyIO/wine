// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;
import 'package:wine/domain/core/typewriter_type.dart' as _i14;
import 'package:wine/presentation/home/home_page.dart' as _i3;
import 'package:wine/presentation/library/library_page.dart' as _i4;
import 'package:wine/presentation/log_in/log_in_page.dart' as _i5;
import 'package:wine/presentation/plus/plus_page.dart' as _i6;
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart'
    as _i10;
import 'package:wine/presentation/settings/settings_chapter/settings_chapter_page.dart'
    as _i11;
import 'package:wine/presentation/settings/settings_page.dart' as _i13;
import 'package:wine/presentation/settings/settings_series/settings_series_page.dart'
    as _i12;
import 'package:wine/presentation/sign_up/sign_up_page.dart' as _i8;
import 'package:wine/presentation/typewriter/typewriter_page.dart' as _i9;
import 'package:wine/presentation/wrappers/settings_wrapper.dart' as _i7;

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
    PlusRoute.name: (routeData) {
      return _i1.AdaptivePage<_i6.PlusPage>(
          routeData: routeData, child: const _i6.PlusPage());
    },
    SettingsWrapper.name: (routeData) {
      return _i1.AdaptivePage<_i7.SettingsWrapper>(
          routeData: routeData, child: const _i7.SettingsWrapper());
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return _i1.AdaptivePage<_i8.SignUpPage>(
          routeData: routeData,
          child: _i8.SignUpPage(key: args.key, navigateTo: args.navigateTo));
    },
    TypewriterSeriesId.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<TypewriterSeriesIdArgs>(
          orElse: () => TypewriterSeriesIdArgs(id: pathParams.optString('id')));
      return _i1.AdaptivePage<_i9.TypewriterPage>(
          routeData: routeData,
          child:
              _i9.TypewriterPage(key: args.key, id: args.id, type: args.type));
    },
    TypewriterSeriesNew.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<TypewriterSeriesNewArgs>(
          orElse: () =>
              TypewriterSeriesNewArgs(id: pathParams.optString('id')));
      return _i1.AdaptivePage<_i9.TypewriterPage>(
          routeData: routeData,
          child:
              _i9.TypewriterPage(key: args.key, id: args.id, type: args.type));
    },
    SettingsAccountRoute.name: (routeData) {
      return _i1.AdaptivePage<_i10.SettingsAccountPage>(
          routeData: routeData, child: const _i10.SettingsAccountPage());
    },
    SettingsChapterRoute.name: (routeData) {
      return _i1.AdaptivePage<_i11.SettingsChapterPage>(
          routeData: routeData, child: const _i11.SettingsChapterPage());
    },
    SettingsSeriesRoute.name: (routeData) {
      return _i1.AdaptivePage<_i12.SettingsSeriesPage>(
          routeData: routeData, child: const _i12.SettingsSeriesPage());
    },
    SettingsRoute.name: (routeData) {
      return _i1.AdaptivePage<_i13.SettingsPage>(
          routeData: routeData, child: const _i13.SettingsPage());
    }
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(LibraryRoute.name, path: '/library'),
        _i1.RouteConfig(LogInRoute.name, path: '/log-in'),
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
  TypewriterSeriesId(
      {_i2.Key? key,
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

  final _i2.Key? key;

  final String? id;

  final _i14.TypewriterType type;
}

class TypewriterSeriesNew extends _i1.PageRouteInfo<TypewriterSeriesNewArgs> {
  TypewriterSeriesNew(
      {_i2.Key? key,
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

  final _i2.Key? key;

  final String? id;

  final _i14.TypewriterType type;
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
