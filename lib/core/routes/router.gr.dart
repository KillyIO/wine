// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i15;
import 'package:flutter/material.dart' as _i16;

import '../../domain/branch/branch.dart' as _i17;
import '../../domain/core/typewriter_type.dart' as _i19;
import '../../domain/tree/tree.dart' as _i18;
import '../../features/branch/branch_page.presentation.dart' as _i1;
import '../../features/home/home_page.presentation.dart' as _i2;
import '../../features/library/library_page.presentation.dart' as _i3;
import '../../features/log_in/log_in_page.presentation.dart' as _i4;
import '../../features/plus/plus_page.presentation.dart' as _i5;
import '../../features/report/report_page.presentation.dart' as _i8;
import '../../features/settings/settings_account/settings_account_page.presentation.dart'
    as _i11;
import '../../features/settings/settings_branch/settings_branch_page.presentation.dart'
    as _i12;
import '../../features/settings/settings_page.presentation.dart' as _i14;
import '../../features/settings/settings_tree/settings_tree_page.presentation.dart'
    as _i13;
import '../../features/sign_up/sign_up_page.presentation.dart' as _i9;
import '../../features/tree/tree_page.presentation.dart' as _i6;
import '../../features/wrappers/settings_wrapper.presentation.dart' as _i7;
import '../../presentation/typewriter/typewriter_page.dart' as _i10;

class AppRouter extends _i15.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i15.PageFactory> pagesMap = {
    BranchRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BranchRouteArgs>(
          orElse: () => BranchRouteArgs(uid: pathParams.getString('id')));
      return _i15.MaterialPageX<_i1.BranchPage>(
          routeData: routeData,
          child: _i1.BranchPage(
              key: args.key, branch: args.branch, uid: args.uid));
    },
    HomeRoute.name: (routeData) {
      return _i15.MaterialPageX<_i2.HomePage>(
          routeData: routeData, child: const _i2.HomePage());
    },
    LibraryRoute.name: (routeData) {
      return _i15.MaterialPageX<_i3.LibraryPage>(
          routeData: routeData, child: const _i3.LibraryPage());
    },
    LogInRoute.name: (routeData) {
      final args = routeData.argsAs<LogInRouteArgs>();
      return _i15.MaterialPageX<_i4.LogInPage>(
          routeData: routeData,
          child: _i4.LogInPage(key: args.key, navigateTo: args.navigateTo));
    },
    PlusRoute.name: (routeData) {
      return _i15.MaterialPageX<_i5.PlusPage>(
          routeData: routeData, child: const _i5.PlusPage());
    },
    TreeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TreeRouteArgs>(
          orElse: () => TreeRouteArgs(uid: pathParams.getString('id')));
      return _i15.MaterialPageX<_i6.TreePage>(
          routeData: routeData,
          child: _i6.TreePage(key: args.key, uid: args.uid, tree: args.tree));
    },
    SettingsWrapper.name: (routeData) {
      return _i15.MaterialPageX<_i7.SettingsWrapper>(
          routeData: routeData,
          child: _i15.WrappedRoute(child: const _i7.SettingsWrapper()));
    },
    ReportRoute.name: (routeData) {
      return _i15.MaterialPageX<_i8.ReportPage>(
          routeData: routeData, child: const _i8.ReportPage());
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return _i15.MaterialPageX<_i9.SignUpPage>(
          routeData: routeData,
          child: _i9.SignUpPage(key: args.key, navigateTo: args.navigateTo));
    },
    TypewriterBranchUID.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterBranchUIDArgs>(
          orElse: () =>
              TypewriterBranchUIDArgs(uid: pathParams.optString('id')));
      return _i15.MaterialPageX<_i10.TypewriterPage>(
          routeData: routeData,
          child: _i10.TypewriterPage(
              key: args.key,
              uid: args.uid,
              branch: args.branch,
              tree: args.tree,
              type: args.type));
    },
    TypewriterTreeUID.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterTreeUIDArgs>(
          orElse: () => TypewriterTreeUIDArgs(uid: pathParams.optString('id')));
      return _i15.MaterialPageX<_i10.TypewriterPage>(
          routeData: routeData,
          child: _i10.TypewriterPage(
              key: args.key,
              uid: args.uid,
              branch: args.branch,
              tree: args.tree,
              type: args.type));
    },
    SettingsAccountRoute.name: (routeData) {
      return _i15.MaterialPageX<_i11.SettingsAccountPage>(
          routeData: routeData, child: const _i11.SettingsAccountPage());
    },
    SettingsBranchRoute.name: (routeData) {
      return _i15.MaterialPageX<_i12.SettingsBranchPage>(
          routeData: routeData, child: const _i12.SettingsBranchPage());
    },
    SettingsTreeRoute.name: (routeData) {
      return _i15.MaterialPageX<_i13.SettingsTreePage>(
          routeData: routeData, child: const _i13.SettingsTreePage());
    },
    SettingsRoute.name: (routeData) {
      return _i15.MaterialPageX<_i14.SettingsPage>(
          routeData: routeData, child: const _i14.SettingsPage());
    }
  };

  @override
  List<_i15.RouteConfig> get routes => [
        _i15.RouteConfig(BranchRoute.name, path: '/branch/:id'),
        _i15.RouteConfig(HomeRoute.name, path: '/'),
        _i15.RouteConfig(LibraryRoute.name, path: '/library'),
        _i15.RouteConfig(LogInRoute.name, path: '/log-in'),
        _i15.RouteConfig(PlusRoute.name, path: '/plus'),
        _i15.RouteConfig(TreeRoute.name, path: '/tree/:id'),
        _i15.RouteConfig(SettingsWrapper.name, path: '/settings', children: [
          _i15.RouteConfig(SettingsAccountRoute.name,
              path: 'account', parent: SettingsWrapper.name),
          _i15.RouteConfig(SettingsBranchRoute.name,
              path: 'branch', parent: SettingsWrapper.name),
          _i15.RouteConfig(SettingsTreeRoute.name,
              path: 'tree', parent: SettingsWrapper.name),
          _i15.RouteConfig(SettingsRoute.name,
              path: '', parent: SettingsWrapper.name)
        ]),
        _i15.RouteConfig(ReportRoute.name, path: '/report/:id'),
        _i15.RouteConfig(SignUpRoute.name, path: '/sign-up'),
        _i15.RouteConfig('/typewriter/branch#redirect',
            path: '/typewriter/branch',
            redirectTo: '/typewriter/branch/new',
            fullMatch: true),
        _i15.RouteConfig(TypewriterBranchUID.name,
            path: '/typewriter/branch/:id'),
        _i15.RouteConfig('/typewriter/tree#redirect',
            path: '/typewriter/tree',
            redirectTo: '/typewriter/tree/new',
            fullMatch: true),
        _i15.RouteConfig(TypewriterTreeUID.name, path: '/typewriter/tree/:id')
      ];
}

/// generated route for
/// [_i1.BranchPage]
class BranchRoute extends _i15.PageRouteInfo<BranchRouteArgs> {
  BranchRoute({_i16.Key? key, _i17.Branch? branch, required String uid})
      : super(BranchRoute.name,
            path: '/branch/:id',
            args: BranchRouteArgs(key: key, branch: branch, uid: uid),
            rawPathParams: {'id': uid});

  static const String name = 'BranchRoute';
}

class BranchRouteArgs {
  const BranchRouteArgs({this.key, this.branch, required this.uid});

  final _i16.Key? key;

  final _i17.Branch? branch;

  final String uid;

  @override
  String toString() {
    return 'BranchRouteArgs{key: $key, branch: $branch, uid: $uid}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i15.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.LibraryPage]
class LibraryRoute extends _i15.PageRouteInfo<void> {
  const LibraryRoute() : super(LibraryRoute.name, path: '/library');

  static const String name = 'LibraryRoute';
}

/// generated route for
/// [_i4.LogInPage]
class LogInRoute extends _i15.PageRouteInfo<LogInRouteArgs> {
  LogInRoute({_i16.Key? key, required _i15.PageRouteInfo<dynamic> navigateTo})
      : super(LogInRoute.name,
            path: '/log-in',
            args: LogInRouteArgs(key: key, navigateTo: navigateTo));

  static const String name = 'LogInRoute';
}

class LogInRouteArgs {
  const LogInRouteArgs({this.key, required this.navigateTo});

  final _i16.Key? key;

  final _i15.PageRouteInfo<dynamic> navigateTo;

  @override
  String toString() {
    return 'LogInRouteArgs{key: $key, navigateTo: $navigateTo}';
  }
}

/// generated route for
/// [_i5.PlusPage]
class PlusRoute extends _i15.PageRouteInfo<void> {
  const PlusRoute() : super(PlusRoute.name, path: '/plus');

  static const String name = 'PlusRoute';
}

/// generated route for
/// [_i6.TreePage]
class TreeRoute extends _i15.PageRouteInfo<TreeRouteArgs> {
  TreeRoute({_i16.Key? key, required String uid, _i18.Tree? tree})
      : super(TreeRoute.name,
            path: '/tree/:id',
            args: TreeRouteArgs(key: key, uid: uid, tree: tree),
            rawPathParams: {'id': uid});

  static const String name = 'TreeRoute';
}

class TreeRouteArgs {
  const TreeRouteArgs({this.key, required this.uid, this.tree});

  final _i16.Key? key;

  final String uid;

  final _i18.Tree? tree;

  @override
  String toString() {
    return 'TreeRouteArgs{key: $key, uid: $uid, tree: $tree}';
  }
}

/// generated route for
/// [_i7.SettingsWrapper]
class SettingsWrapper extends _i15.PageRouteInfo<void> {
  const SettingsWrapper({List<_i15.PageRouteInfo>? children})
      : super(SettingsWrapper.name,
            path: '/settings', initialChildren: children);

  static const String name = 'SettingsWrapper';
}

/// generated route for
/// [_i8.ReportPage]
class ReportRoute extends _i15.PageRouteInfo<void> {
  const ReportRoute() : super(ReportRoute.name, path: '/report/:id');

  static const String name = 'ReportRoute';
}

/// generated route for
/// [_i9.SignUpPage]
class SignUpRoute extends _i15.PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({_i16.Key? key, required _i15.PageRouteInfo<dynamic> navigateTo})
      : super(SignUpRoute.name,
            path: '/sign-up',
            args: SignUpRouteArgs(key: key, navigateTo: navigateTo));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key, required this.navigateTo});

  final _i16.Key? key;

  final _i15.PageRouteInfo<dynamic> navigateTo;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, navigateTo: $navigateTo}';
  }
}

/// generated route for
/// [_i10.TypewriterPage]
class TypewriterBranchUID extends _i15.PageRouteInfo<TypewriterBranchUIDArgs> {
  TypewriterBranchUID(
      {_i16.Key? key,
      String? uid,
      _i17.Branch? branch,
      _i18.Tree? tree,
      _i19.TypewriterType type = _i19.TypewriterType.unknown})
      : super(TypewriterBranchUID.name,
            path: '/typewriter/branch/:id',
            args: TypewriterBranchUIDArgs(
                key: key, uid: uid, branch: branch, tree: tree, type: type),
            rawPathParams: {'id': uid});

  static const String name = 'TypewriterBranchUID';
}

class TypewriterBranchUIDArgs {
  const TypewriterBranchUIDArgs(
      {this.key,
      this.uid,
      this.branch,
      this.tree,
      this.type = _i19.TypewriterType.unknown});

  final _i16.Key? key;

  final String? uid;

  final _i17.Branch? branch;

  final _i18.Tree? tree;

  final _i19.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterBranchUIDArgs{key: $key, uid: $uid, branch: $branch, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [_i10.TypewriterPage]
class TypewriterTreeUID extends _i15.PageRouteInfo<TypewriterTreeUIDArgs> {
  TypewriterTreeUID(
      {_i16.Key? key,
      String? uid,
      _i17.Branch? branch,
      _i18.Tree? tree,
      _i19.TypewriterType type = _i19.TypewriterType.unknown})
      : super(TypewriterTreeUID.name,
            path: '/typewriter/tree/:id',
            args: TypewriterTreeUIDArgs(
                key: key, uid: uid, branch: branch, tree: tree, type: type),
            rawPathParams: {'id': uid});

  static const String name = 'TypewriterTreeUID';
}

class TypewriterTreeUIDArgs {
  const TypewriterTreeUIDArgs(
      {this.key,
      this.uid,
      this.branch,
      this.tree,
      this.type = _i19.TypewriterType.unknown});

  final _i16.Key? key;

  final String? uid;

  final _i17.Branch? branch;

  final _i18.Tree? tree;

  final _i19.TypewriterType type;

  @override
  String toString() {
    return 'TypewriterTreeUIDArgs{key: $key, uid: $uid, branch: $branch, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [_i11.SettingsAccountPage]
class SettingsAccountRoute extends _i15.PageRouteInfo<void> {
  const SettingsAccountRoute()
      : super(SettingsAccountRoute.name, path: 'account');

  static const String name = 'SettingsAccountRoute';
}

/// generated route for
/// [_i12.SettingsBranchPage]
class SettingsBranchRoute extends _i15.PageRouteInfo<void> {
  const SettingsBranchRoute() : super(SettingsBranchRoute.name, path: 'branch');

  static const String name = 'SettingsBranchRoute';
}

/// generated route for
/// [_i13.SettingsTreePage]
class SettingsTreeRoute extends _i15.PageRouteInfo<void> {
  const SettingsTreeRoute() : super(SettingsTreeRoute.name, path: 'tree');

  static const String name = 'SettingsTreeRoute';
}

/// generated route for
/// [_i14.SettingsPage]
class SettingsRoute extends _i15.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '');

  static const String name = 'SettingsRoute';
}
