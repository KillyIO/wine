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
import 'package:wine/domain/branch/branch.dart' as _i16;
import 'package:wine/domain/core/typewriter_type.dart' as _i17;
import 'package:wine/domain/tree/tree.dart' as _i15;
import 'package:wine/presentation/home/home_page.dart' as _i1;
import 'package:wine/presentation/library/library_page.dart' as _i2;
import 'package:wine/presentation/log_in/log_in_page.dart' as _i3;
import 'package:wine/presentation/plus/plus_page.dart' as _i4;
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart'
    as _i9;
import 'package:wine/presentation/settings/settings_branch/settings_branch_page.dart'
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
    TypewriterBranchUID.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterBranchUIDArgs>(
          orElse: () =>
              TypewriterBranchUIDArgs(uid: pathParams.optString('id')));
      return _i13.AdaptivePage<_i8.TypewriterPage>(
          routeData: routeData,
          child: _i8.TypewriterPage(
              key: args.key,
              branch: args.branch,
              uid: args.uid,
              tree: args.tree,
              type: args.type));
    },
    TypewriterBranchNew.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterBranchNewArgs>(
          orElse: () =>
              TypewriterBranchNewArgs(uid: pathParams.optString('id')));
      return _i13.AdaptivePage<_i8.TypewriterPage>(
          routeData: routeData,
          child: _i8.TypewriterPage(
              key: args.key,
              branch: args.branch,
              uid: args.uid,
              tree: args.tree,
              type: args.type));
    },
    TypewriterTreeUID.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterTreeUIDArgs>(
          orElse: () => TypewriterTreeUIDArgs(uid: pathParams.optString('id')));
      return _i13.AdaptivePage<_i8.TypewriterPage>(
          routeData: routeData,
          child: _i8.TypewriterPage(
              key: args.key,
              branch: args.branch,
              uid: args.uid,
              tree: args.tree,
              type: args.type));
    },
    TypewriterTreeNew.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterTreeNewArgs>(
          orElse: () => TypewriterTreeNewArgs(uid: pathParams.optString('id')));
      return _i13.AdaptivePage<_i8.TypewriterPage>(
          routeData: routeData,
          child: _i8.TypewriterPage(
              key: args.key,
              branch: args.branch,
              uid: args.uid,
              tree: args.tree,
              type: args.type));
    },
    SettingsAccountRoute.name: (routeData) {
      return _i13.AdaptivePage<_i9.SettingsAccountPage>(
          routeData: routeData, child: const _i9.SettingsAccountPage());
    },
    SettingsBranchRoute.name: (routeData) {
      return _i13.AdaptivePage<_i10.SettingsBranchPage>(
          routeData: routeData, child: const _i10.SettingsBranchPage());
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
          _i13.RouteConfig(SettingsBranchRoute.name,
              path: 'branch', parent: SettingsWrapper.name),
          _i13.RouteConfig(SettingsTreeRoute.name,
              path: 'tree', parent: SettingsWrapper.name),
          _i13.RouteConfig(SettingsRoute.name,
              path: '', parent: SettingsWrapper.name)
        ]),
        _i13.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i13.RouteConfig(TypewriterBranchUID.name,
            path: '/typewriter/branch/:id'),
        _i13.RouteConfig(TypewriterBranchNew.name,
            path: '/typewriter/branch/new'),
        _i13.RouteConfig(TypewriterTreeUID.name, path: '/typewriter/tree/:id'),
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
class TypewriterBranchUID extends _i13.PageRouteInfo<TypewriterBranchUIDArgs> {
  TypewriterBranchUID(
      {_i14.Key? key,
      _i16.Branch? branch,
      String? uid,
      _i15.Tree? tree,
      _i17.TypewriterType type = _i17.TypewriterType.unknown})
      : super(TypewriterBranchUID.name,
            path: '/typewriter/branch/:id',
            args: TypewriterBranchUIDArgs(
                key: key, branch: branch, uid: uid, tree: tree, type: type),
            rawPathParams: {'id': uid});

  static const String name = 'TypewriterBranchUID';
}

class TypewriterBranchUIDArgs {
  const TypewriterBranchUIDArgs(
      {this.key,
      this.branch,
      this.uid,
      this.tree,
      this.type = _i17.TypewriterType.unknown});

  final _i14.Key? key;

  final _i16.Branch? branch;

  final String? uid;

  final _i15.Tree? tree;

  final _i17.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterBranchUIDArgs{key: $key, branch: $branch, uid: $uid, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [_i8.TypewriterPage]
class TypewriterBranchNew extends _i13.PageRouteInfo<TypewriterBranchNewArgs> {
  TypewriterBranchNew(
      {_i14.Key? key,
      _i16.Branch? branch,
      String? uid,
      _i15.Tree? tree,
      _i17.TypewriterType type = _i17.TypewriterType.unknown})
      : super(TypewriterBranchNew.name,
            path: '/typewriter/branch/new',
            args: TypewriterBranchNewArgs(
                key: key, branch: branch, uid: uid, tree: tree, type: type),
            rawPathParams: {'id': uid});

  static const String name = 'TypewriterBranchNew';
}

class TypewriterBranchNewArgs {
  const TypewriterBranchNewArgs(
      {this.key,
      this.branch,
      this.uid,
      this.tree,
      this.type = _i17.TypewriterType.unknown});

  final _i14.Key? key;

  final _i16.Branch? branch;

  final String? uid;

  final _i15.Tree? tree;

  final _i17.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterBranchNewArgs{key: $key, branch: $branch, uid: $uid, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [_i8.TypewriterPage]
class TypewriterTreeUID extends _i13.PageRouteInfo<TypewriterTreeUIDArgs> {
  TypewriterTreeUID(
      {_i14.Key? key,
      _i16.Branch? branch,
      String? uid,
      _i15.Tree? tree,
      _i17.TypewriterType type = _i17.TypewriterType.unknown})
      : super(TypewriterTreeUID.name,
            path: '/typewriter/tree/:id',
            args: TypewriterTreeUIDArgs(
                key: key, branch: branch, uid: uid, tree: tree, type: type),
            rawPathParams: {'id': uid});

  static const String name = 'TypewriterTreeUID';
}

class TypewriterTreeUIDArgs {
  const TypewriterTreeUIDArgs(
      {this.key,
      this.branch,
      this.uid,
      this.tree,
      this.type = _i17.TypewriterType.unknown});

  final _i14.Key? key;

  final _i16.Branch? branch;

  final String? uid;

  final _i15.Tree? tree;

  final _i17.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterTreeUIDArgs{key: $key, branch: $branch, uid: $uid, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [_i8.TypewriterPage]
class TypewriterTreeNew extends _i13.PageRouteInfo<TypewriterTreeNewArgs> {
  TypewriterTreeNew(
      {_i14.Key? key,
      _i16.Branch? branch,
      String? uid,
      _i15.Tree? tree,
      _i17.TypewriterType type = _i17.TypewriterType.unknown})
      : super(TypewriterTreeNew.name,
            path: '/typewriter/tree/new',
            args: TypewriterTreeNewArgs(
                key: key, branch: branch, uid: uid, tree: tree, type: type),
            rawPathParams: {'id': uid});

  static const String name = 'TypewriterTreeNew';
}

class TypewriterTreeNewArgs {
  const TypewriterTreeNewArgs(
      {this.key,
      this.branch,
      this.uid,
      this.tree,
      this.type = _i17.TypewriterType.unknown});

  final _i14.Key? key;

  final _i16.Branch? branch;

  final String? uid;

  final _i15.Tree? tree;

  final _i17.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterTreeNewArgs{key: $key, branch: $branch, uid: $uid, tree: $tree, type: $type}';
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
/// [_i10.SettingsBranchPage]
class SettingsBranchRoute extends _i13.PageRouteInfo<void> {
  const SettingsBranchRoute() : super(SettingsBranchRoute.name, path: 'branch');

  static const String name = 'SettingsBranchRoute';
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
