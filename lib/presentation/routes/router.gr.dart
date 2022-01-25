// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:wine/domain/chapter/chapter.dart' as _i16;
import 'package:wine/domain/core/typewriter_type.dart' as _i17;
import 'package:wine/domain/tree/tree.dart' as _i15;
import 'package:wine/presentation/home/home_page.dart' as _i1;
import 'package:wine/presentation/library/library_page.dart' as _i2;
import 'package:wine/presentation/log_in/log_in_page.dart' as _i3;
import 'package:wine/presentation/plus/plus_page.dart' as _i4;
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart'
    as _i9;
import 'package:wine/presentation/settings/settings_chapter/settings_chapter_page.dart'
    as _i10;
import 'package:wine/presentation/settings/settings_page.dart' as _i12;
import 'package:wine/presentation/settings/settings_tree/settings_tree_page.dart'
    as _i11;
import 'package:wine/presentation/sign_up/sign_up_page.dart' as _i7;
import 'package:wine/presentation/tree/tree_page.dart' as _i5;
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
    TreeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TreeRouteArgs>(
          orElse: () => TreeRouteArgs(id: pathParams.getString('id')));
      return _i13.AdaptivePage<_i5.TreePage>(
          routeData: routeData,
          child: _i5.TreePage(key: args.key, id: args.id, tree: args.tree));
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
    TypewriterChapterId.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterChapterIdArgs>(
          orElse: () =>
              TypewriterChapterIdArgs(id: pathParams.optString('id')));
      return _i13.AdaptivePage<_i8.TypewriterPage>(
          routeData: routeData,
          child: _i8.TypewriterPage(
              key: args.key,
              chapter: args.chapter,
              id: args.id,
              tree: args.tree,
              type: args.type));
    },
    TypewriterChapterNew.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterChapterNewArgs>(
          orElse: () =>
              TypewriterChapterNewArgs(id: pathParams.optString('id')));
      return _i13.AdaptivePage<_i8.TypewriterPage>(
          routeData: routeData,
          child: _i8.TypewriterPage(
              key: args.key,
              chapter: args.chapter,
              id: args.id,
              tree: args.tree,
              type: args.type));
    },
    TypewriterTreeId.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterTreeIdArgs>(
          orElse: () => TypewriterTreeIdArgs(id: pathParams.optString('id')));
      return _i13.AdaptivePage<_i8.TypewriterPage>(
          routeData: routeData,
          child: _i8.TypewriterPage(
              key: args.key,
              chapter: args.chapter,
              id: args.id,
              tree: args.tree,
              type: args.type));
    },
    TypewriterTreeNew.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterTreeNewArgs>(
          orElse: () => TypewriterTreeNewArgs(id: pathParams.optString('id')));
      return _i13.AdaptivePage<_i8.TypewriterPage>(
          routeData: routeData,
          child: _i8.TypewriterPage(
              key: args.key,
              chapter: args.chapter,
              id: args.id,
              tree: args.tree,
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
    SettingsTreeRoute.name: (routeData) {
      return _i13.AdaptivePage<_i11.SettingsTreePage>(
          routeData: routeData, child: const _i11.SettingsTreePage());
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
        _i13.RouteConfig(TreeRoute.name, path: '/tree/:id'),
        _i13.RouteConfig(SettingsWrapper.name, path: '/settings', children: [
          _i13.RouteConfig(SettingsAccountRoute.name,
              path: 'account', parent: SettingsWrapper.name),
          _i13.RouteConfig(SettingsChapterRoute.name,
              path: 'chapter', parent: SettingsWrapper.name),
          _i13.RouteConfig(SettingsTreeRoute.name,
              path: 'tree', parent: SettingsWrapper.name),
          _i13.RouteConfig(SettingsRoute.name,
              path: '', parent: SettingsWrapper.name)
        ]),
        _i13.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i13.RouteConfig(TypewriterChapterId.name,
            path: '/typewriter/chapter/:id'),
        _i13.RouteConfig(TypewriterChapterNew.name,
            path: '/typewriter/chapter/new'),
        _i13.RouteConfig(TypewriterTreeId.name, path: '/typewriter/tree/:id'),
        _i13.RouteConfig(TypewriterTreeNew.name, path: '/typewriter/tree/new')
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
/// [_i5.TreePage]
class TreeRoute extends _i13.PageRouteInfo<TreeRouteArgs> {
  TreeRoute({_i14.Key? key, required String id, _i15.Tree? tree})
      : super(TreeRoute.name,
            path: '/tree/:id',
            args: TreeRouteArgs(key: key, id: id, tree: tree),
            rawPathParams: {'id': id});

  static const String name = 'TreeRoute';
}

class TreeRouteArgs {
  const TreeRouteArgs({this.key, required this.id, this.tree});

  final _i14.Key? key;

  final String id;

  final _i15.Tree? tree;

  @override
  String toString() {
    return 'TreeRouteArgs{key: $key, id: $id, tree: $tree}';
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
class TypewriterChapterId extends _i13.PageRouteInfo<TypewriterChapterIdArgs> {
  TypewriterChapterId(
      {_i14.Key? key,
      _i16.Chapter? chapter,
      String? id,
      _i15.Tree? tree,
      _i17.TypewriterType type = _i17.TypewriterType.unknown})
      : super(TypewriterChapterId.name,
            path: '/typewriter/chapter/:id',
            args: TypewriterChapterIdArgs(
                key: key, chapter: chapter, id: id, tree: tree, type: type),
            rawPathParams: {'id': id});

  static const String name = 'TypewriterChapterId';
}

class TypewriterChapterIdArgs {
  const TypewriterChapterIdArgs(
      {this.key,
      this.chapter,
      this.id,
      this.tree,
      this.type = _i17.TypewriterType.unknown});

  final _i14.Key? key;

  final _i16.Chapter? chapter;

  final String? id;

  final _i15.Tree? tree;

  final _i17.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterChapterIdArgs{key: $key, chapter: $chapter, id: $id, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [_i8.TypewriterPage]
class TypewriterChapterNew
    extends _i13.PageRouteInfo<TypewriterChapterNewArgs> {
  TypewriterChapterNew(
      {_i14.Key? key,
      _i16.Chapter? chapter,
      String? id,
      _i15.Tree? tree,
      _i17.TypewriterType type = _i17.TypewriterType.unknown})
      : super(TypewriterChapterNew.name,
            path: '/typewriter/chapter/new',
            args: TypewriterChapterNewArgs(
                key: key, chapter: chapter, id: id, tree: tree, type: type),
            rawPathParams: {'id': id});

  static const String name = 'TypewriterChapterNew';
}

class TypewriterChapterNewArgs {
  const TypewriterChapterNewArgs(
      {this.key,
      this.chapter,
      this.id,
      this.tree,
      this.type = _i17.TypewriterType.unknown});

  final _i14.Key? key;

  final _i16.Chapter? chapter;

  final String? id;

  final _i15.Tree? tree;

  final _i17.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterChapterNewArgs{key: $key, chapter: $chapter, id: $id, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [_i8.TypewriterPage]
class TypewriterTreeId extends _i13.PageRouteInfo<TypewriterTreeIdArgs> {
  TypewriterTreeId(
      {_i14.Key? key,
      _i16.Chapter? chapter,
      String? id,
      _i15.Tree? tree,
      _i17.TypewriterType type = _i17.TypewriterType.unknown})
      : super(TypewriterTreeId.name,
            path: '/typewriter/tree/:id',
            args: TypewriterTreeIdArgs(
                key: key, chapter: chapter, id: id, tree: tree, type: type),
            rawPathParams: {'id': id});

  static const String name = 'TypewriterTreeId';
}

class TypewriterTreeIdArgs {
  const TypewriterTreeIdArgs(
      {this.key,
      this.chapter,
      this.id,
      this.tree,
      this.type = _i17.TypewriterType.unknown});

  final _i14.Key? key;

  final _i16.Chapter? chapter;

  final String? id;

  final _i15.Tree? tree;

  final _i17.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterTreeIdArgs{key: $key, chapter: $chapter, id: $id, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [_i8.TypewriterPage]
class TypewriterTreeNew extends _i13.PageRouteInfo<TypewriterTreeNewArgs> {
  TypewriterTreeNew(
      {_i14.Key? key,
      _i16.Chapter? chapter,
      String? id,
      _i15.Tree? tree,
      _i17.TypewriterType type = _i17.TypewriterType.unknown})
      : super(TypewriterTreeNew.name,
            path: '/typewriter/tree/new',
            args: TypewriterTreeNewArgs(
                key: key, chapter: chapter, id: id, tree: tree, type: type),
            rawPathParams: {'id': id});

  static const String name = 'TypewriterTreeNew';
}

class TypewriterTreeNewArgs {
  const TypewriterTreeNewArgs(
      {this.key,
      this.chapter,
      this.id,
      this.tree,
      this.type = _i17.TypewriterType.unknown});

  final _i14.Key? key;

  final _i16.Chapter? chapter;

  final String? id;

  final _i15.Tree? tree;

  final _i17.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterTreeNewArgs{key: $key, chapter: $chapter, id: $id, tree: $tree, type: $type}';
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
/// [_i11.SettingsTreePage]
class SettingsTreeRoute extends _i13.PageRouteInfo<void> {
  const SettingsTreeRoute() : super(SettingsTreeRoute.name, path: 'tree');

  static const String name = 'SettingsTreeRoute';
}

/// generated route for
/// [_i12.SettingsPage]
class SettingsRoute extends _i13.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '');

  static const String name = 'SettingsRoute';
}
