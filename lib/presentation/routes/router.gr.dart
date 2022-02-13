// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;
import 'package:wine/domain/branch/branch.dart' as _i16;
import 'package:wine/domain/core/typewriter_type.dart' as _i18;
import 'package:wine/domain/tree/tree.dart' as _i17;
import 'package:wine/presentation/branch/branch_page.dart' as _i1;
import 'package:wine/presentation/home/home_page.dart' as _i2;
import 'package:wine/presentation/library/library_page.dart' as _i3;
import 'package:wine/presentation/log_in/log_in_page.dart' as _i4;
import 'package:wine/presentation/plus/plus_page.dart' as _i5;
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart'
    as _i10;
import 'package:wine/presentation/settings/settings_branch/settings_branch_page.dart'
    as _i11;
import 'package:wine/presentation/settings/settings_page.dart' as _i13;
import 'package:wine/presentation/settings/settings_tree/settings_tree_page.dart'
    as _i12;
import 'package:wine/presentation/sign_up/sign_up_page.dart' as _i8;
import 'package:wine/presentation/tree/tree_page.dart' as _i6;
import 'package:wine/presentation/typewriter/typewriter_page.dart' as _i9;
import 'package:wine/presentation/wrappers/settings_wrapper.dart' as _i7;

class AppRouter extends _i14.RootStackRouter {
  AppRouter([_i15.GlobalKey<_i15.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    BranchRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BranchRouteArgs>(
          orElse: () => BranchRouteArgs(uid: pathParams.getString('id')));
      return _i14.AdaptivePage<_i1.BranchPage>(
          routeData: routeData,
          child: _i1.BranchPage(
              key: args.key, branch: args.branch, uid: args.uid));
    },
    HomeRoute.name: (routeData) {
      return _i14.AdaptivePage<_i2.HomePage>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LibraryRoute.name: (routeData) {
      return _i14.AdaptivePage<_i3.LibraryPage>(
          routeData: routeData, child: const _i3.LibraryPage());
    },
    LogInRoute.name: (routeData) {
      final args = routeData.argsAs<LogInRouteArgs>();
      return _i14.AdaptivePage<_i4.LogInPage>(
          routeData: routeData,
          child: _i4.LogInPage(key: args.key, navigateTo: args.navigateTo));
    },
    PlusRoute.name: (routeData) {
      return _i14.AdaptivePage<_i5.PlusPage>(
          routeData: routeData, child: const _i5.PlusPage());
    },
    TreeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TreeRouteArgs>(
          orElse: () => TreeRouteArgs(uid: pathParams.getString('id')));
      return _i14.AdaptivePage<_i6.TreePage>(
          routeData: routeData,
          child: _i6.TreePage(key: args.key, uid: args.uid, tree: args.tree));
    },
    SettingsWrapper.name: (routeData) {
      return _i14.AdaptivePage<_i7.SettingsWrapper>(
          routeData: routeData, child: const _i7.SettingsWrapper());
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return _i14.AdaptivePage<_i8.SignUpPage>(
          routeData: routeData,
          child: _i8.SignUpPage(key: args.key, navigateTo: args.navigateTo));
    },
    TypewriterBranchUID.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterBranchUIDArgs>(
          orElse: () =>
              TypewriterBranchUIDArgs(uid: pathParams.optString('id')));
      return _i14.AdaptivePage<_i9.TypewriterPage>(
          routeData: routeData,
          child: _i9.TypewriterPage(
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
      return _i14.AdaptivePage<_i9.TypewriterPage>(
          routeData: routeData,
          child: _i9.TypewriterPage(
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
      return _i14.AdaptivePage<_i9.TypewriterPage>(
          routeData: routeData,
          child: _i9.TypewriterPage(
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
      return _i14.AdaptivePage<_i9.TypewriterPage>(
          routeData: routeData,
          child: _i9.TypewriterPage(
              key: args.key,
              branch: args.branch,
              uid: args.uid,
              tree: args.tree,
              type: args.type));
    },
    SettingsAccountRoute.name: (routeData) {
      return _i14.AdaptivePage<_i10.SettingsAccountPage>(
          routeData: routeData, child: const _i10.SettingsAccountPage());
    },
    SettingsBranchRoute.name: (routeData) {
      return _i14.AdaptivePage<_i11.SettingsBranchPage>(
          routeData: routeData, child: const _i11.SettingsBranchPage());
    },
    SettingsTreeRoute.name: (routeData) {
      return _i14.AdaptivePage<_i12.SettingsTreePage>(
          routeData: routeData, child: const _i12.SettingsTreePage());
    },
    SettingsRoute.name: (routeData) {
      return _i14.AdaptivePage<_i13.SettingsPage>(
          routeData: routeData, child: const _i13.SettingsPage());
    }
  };

  @override
  List<_i14.RouteConfig> get routes => [
        _i14.RouteConfig(BranchRoute.name, path: '/branch/:id'),
        _i14.RouteConfig(HomeRoute.name, path: '/'),
        _i14.RouteConfig(LibraryRoute.name, path: '/library'),
        _i14.RouteConfig(LogInRoute.name, path: '/log-in'),
        _i14.RouteConfig(PlusRoute.name, path: '/plus'),
        _i14.RouteConfig(TreeRoute.name, path: '/tree/:id'),
        _i14.RouteConfig(SettingsWrapper.name, path: '/settings', children: [
          _i14.RouteConfig(SettingsAccountRoute.name,
              path: 'account', parent: SettingsWrapper.name),
          _i14.RouteConfig(SettingsBranchRoute.name,
              path: 'branch', parent: SettingsWrapper.name),
          _i14.RouteConfig(SettingsTreeRoute.name,
              path: 'tree', parent: SettingsWrapper.name),
          _i14.RouteConfig(SettingsRoute.name,
              path: '', parent: SettingsWrapper.name)
        ]),
        _i14.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i14.RouteConfig(TypewriterBranchUID.name,
            path: '/typewriter/branch/:id'),
        _i14.RouteConfig(TypewriterBranchNew.name,
            path: '/typewriter/branch/new'),
        _i14.RouteConfig(TypewriterTreeUID.name, path: '/typewriter/tree/:id'),
        _i14.RouteConfig(TypewriterTreeNew.name, path: '/typewriter/tree/new')
      ];
}

/// generated route for
/// [_i1.BranchPage]
class BranchRoute extends _i14.PageRouteInfo<BranchRouteArgs> {
  BranchRoute({_i15.Key? key, _i16.Branch? branch, required String uid})
      : super(BranchRoute.name,
            path: '/branch/:id',
            args: BranchRouteArgs(key: key, branch: branch, uid: uid),
            rawPathParams: {'id': uid});

  static const String name = 'BranchRoute';
}

class BranchRouteArgs {
  const BranchRouteArgs({this.key, this.branch, required this.uid});

  final _i15.Key? key;

  final _i16.Branch? branch;

  final String uid;

  @override
  String toString() {
    return 'BranchRouteArgs{key: $key, branch: $branch, uid: $uid}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i14.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.LibraryPage]
class LibraryRoute extends _i14.PageRouteInfo<void> {
  const LibraryRoute() : super(LibraryRoute.name, path: '/library');

  static const String name = 'LibraryRoute';
}

/// generated route for
/// [_i4.LogInPage]
class LogInRoute extends _i14.PageRouteInfo<LogInRouteArgs> {
  LogInRoute({_i15.Key? key, required _i14.PageRouteInfo<dynamic> navigateTo})
      : super(LogInRoute.name,
            path: '/log-in',
            args: LogInRouteArgs(key: key, navigateTo: navigateTo));

  static const String name = 'LogInRoute';
}

class LogInRouteArgs {
  const LogInRouteArgs({this.key, required this.navigateTo});

  final _i15.Key? key;

  final _i14.PageRouteInfo<dynamic> navigateTo;

  @override
  String toString() {
    return 'LogInRouteArgs{key: $key, navigateTo: $navigateTo}';
  }
}

/// generated route for
/// [_i5.PlusPage]
class PlusRoute extends _i14.PageRouteInfo<void> {
  const PlusRoute() : super(PlusRoute.name, path: '/plus');

  static const String name = 'PlusRoute';
}

/// generated route for
/// [_i6.TreePage]
class TreeRoute extends _i14.PageRouteInfo<TreeRouteArgs> {
  TreeRoute({_i15.Key? key, required String uid, _i17.Tree? tree})
      : super(TreeRoute.name,
            path: '/tree/:id',
            args: TreeRouteArgs(key: key, uid: uid, tree: tree),
            rawPathParams: {'id': uid});

  static const String name = 'TreeRoute';
}

class TreeRouteArgs {
  const TreeRouteArgs({this.key, required this.uid, this.tree});

  final _i15.Key? key;

  final String uid;

  final _i17.Tree? tree;

  @override
  String toString() {
    return 'TreeRouteArgs{key: $key, uid: $uid, tree: $tree}';
  }
}

/// generated route for
/// [_i7.SettingsWrapper]
class SettingsWrapper extends _i14.PageRouteInfo<void> {
  const SettingsWrapper({List<_i14.PageRouteInfo>? children})
      : super(SettingsWrapper.name,
            path: '/settings', initialChildren: children);

  static const String name = 'SettingsWrapper';
}

/// generated route for
/// [_i8.SignUpPage]
class SignUpRoute extends _i14.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i15.Key? key, required _i14.PageRouteInfo<dynamic> navigateTo})
      : super(SignUpRoute.name,
            path: '/sign-up',
            args: SignUpRouteArgs(key: key, navigateTo: navigateTo));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key, required this.navigateTo});

  final _i15.Key? key;

  final _i14.PageRouteInfo<dynamic> navigateTo;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, navigateTo: $navigateTo}';
  }
}

/// generated route for
/// [_i9.TypewriterPage]
class TypewriterBranchUID extends _i14.PageRouteInfo<TypewriterBranchUIDArgs> {
  TypewriterBranchUID(
      {_i15.Key? key,
      _i16.Branch? branch,
      String? uid,
      _i17.Tree? tree,
      _i18.TypewriterType type = _i18.TypewriterType.unknown})
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
      this.type = _i18.TypewriterType.unknown});

  final _i15.Key? key;

  final _i16.Branch? branch;

  final String? uid;

  final _i17.Tree? tree;

  final _i18.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterBranchUIDArgs{key: $key, branch: $branch, uid: $uid, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [_i9.TypewriterPage]
class TypewriterBranchNew extends _i14.PageRouteInfo<TypewriterBranchNewArgs> {
  TypewriterBranchNew(
      {_i15.Key? key,
      _i16.Branch? branch,
      String? uid,
      _i17.Tree? tree,
      _i18.TypewriterType type = _i18.TypewriterType.unknown})
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
      this.type = _i18.TypewriterType.unknown});

  final _i15.Key? key;

  final _i16.Branch? branch;

  final String? uid;

  final _i17.Tree? tree;

  final _i18.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterBranchNewArgs{key: $key, branch: $branch, uid: $uid, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [_i9.TypewriterPage]
class TypewriterTreeUID extends _i14.PageRouteInfo<TypewriterTreeUIDArgs> {
  TypewriterTreeUID(
      {_i15.Key? key,
      _i16.Branch? branch,
      String? uid,
      _i17.Tree? tree,
      _i18.TypewriterType type = _i18.TypewriterType.unknown})
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
      this.type = _i18.TypewriterType.unknown});

  final _i15.Key? key;

  final _i16.Branch? branch;

  final String? uid;

  final _i17.Tree? tree;

  final _i18.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterTreeUIDArgs{key: $key, branch: $branch, uid: $uid, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [_i9.TypewriterPage]
class TypewriterTreeNew extends _i14.PageRouteInfo<TypewriterTreeNewArgs> {
  TypewriterTreeNew(
      {_i15.Key? key,
      _i16.Branch? branch,
      String? uid,
      _i17.Tree? tree,
      _i18.TypewriterType type = _i18.TypewriterType.unknown})
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
      this.type = _i18.TypewriterType.unknown});

  final _i15.Key? key;

  final _i16.Branch? branch;

  final String? uid;

  final _i17.Tree? tree;

  final _i18.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterTreeNewArgs{key: $key, branch: $branch, uid: $uid, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [_i10.SettingsAccountPage]
class SettingsAccountRoute extends _i14.PageRouteInfo<void> {
  const SettingsAccountRoute()
      : super(SettingsAccountRoute.name, path: 'account');

  static const String name = 'SettingsAccountRoute';
}

/// generated route for
/// [_i11.SettingsBranchPage]
class SettingsBranchRoute extends _i14.PageRouteInfo<void> {
  const SettingsBranchRoute() : super(SettingsBranchRoute.name, path: 'branch');

  static const String name = 'SettingsBranchRoute';
}

/// generated route for
/// [_i12.SettingsTreePage]
class SettingsTreeRoute extends _i14.PageRouteInfo<void> {
  const SettingsTreeRoute() : super(SettingsTreeRoute.name, path: 'tree');

  static const String name = 'SettingsTreeRoute';
}

/// generated route for
/// [_i13.SettingsPage]
class SettingsRoute extends _i14.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '');

  static const String name = 'SettingsRoute';
}
