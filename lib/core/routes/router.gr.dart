// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    BranchRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BranchRouteArgs>(
          orElse: () => BranchRouteArgs(uid: pathParams.getString('id')));
      return AdaptivePage<BranchPage>(
          routeData: routeData,
          child: BranchPage(key: args.key, branch: args.branch, uid: args.uid));
    },
    HomeRoute.name: (routeData) {
      return AdaptivePage<HomePage>(
          routeData: routeData, child: const HomePage());
    },
    LibraryRoute.name: (routeData) {
      return AdaptivePage<LibraryPage>(
          routeData: routeData, child: const LibraryPage());
    },
    LogInRoute.name: (routeData) {
      final args = routeData.argsAs<LogInRouteArgs>();
      return AdaptivePage<LogInPage>(
          routeData: routeData,
          child: LogInPage(key: args.key, navigateTo: args.navigateTo));
    },
    PlusRoute.name: (routeData) {
      return AdaptivePage<PlusPage>(
          routeData: routeData, child: const PlusPage());
    },
    TreeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TreeRouteArgs>(
          orElse: () => TreeRouteArgs(uid: pathParams.getString('id')));
      return AdaptivePage<TreePage>(
          routeData: routeData,
          child: TreePage(key: args.key, uid: args.uid, tree: args.tree));
    },
    SettingsWrapper.name: (routeData) {
      return AdaptivePage<SettingsWrapper>(
          routeData: routeData,
          child: WrappedRoute(child: const SettingsWrapper()));
    },
    ReportRoute.name: (routeData) {
      return AdaptivePage<ReportPage>(
          routeData: routeData, child: const ReportPage());
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return AdaptivePage<SignUpPage>(
          routeData: routeData,
          child: SignUpPage(key: args.key, navigateTo: args.navigateTo));
    },
    TypewriterBranchUID.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterBranchUIDArgs>(
          orElse: () =>
              TypewriterBranchUIDArgs(uid: pathParams.optString('id')));
      return AdaptivePage<TypewriterPage>(
          routeData: routeData,
          child: TypewriterPage(
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
      return AdaptivePage<TypewriterPage>(
          routeData: routeData,
          child: TypewriterPage(
              key: args.key,
              uid: args.uid,
              branch: args.branch,
              tree: args.tree,
              type: args.type));
    },
    SettingsAccountRoute.name: (routeData) {
      return AdaptivePage<SettingsAccountPage>(
          routeData: routeData, child: const SettingsAccountPage());
    },
    SettingsBranchRoute.name: (routeData) {
      return AdaptivePage<SettingsBranchPage>(
          routeData: routeData, child: const SettingsBranchPage());
    },
    SettingsTreeRoute.name: (routeData) {
      return AdaptivePage<SettingsTreePage>(
          routeData: routeData, child: const SettingsTreePage());
    },
    SettingsRoute.name: (routeData) {
      return AdaptivePage<SettingsPage>(
          routeData: routeData, child: const SettingsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(BranchRoute.name, path: '/branch/:id'),
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(LibraryRoute.name, path: '/library'),
        RouteConfig(LogInRoute.name, path: '/log-in'),
        RouteConfig(PlusRoute.name, path: '/plus'),
        RouteConfig(TreeRoute.name, path: '/tree/:id'),
        RouteConfig(SettingsWrapper.name, path: '/settings', children: [
          RouteConfig(SettingsAccountRoute.name,
              path: 'account', parent: SettingsWrapper.name),
          RouteConfig(SettingsBranchRoute.name,
              path: 'branch', parent: SettingsWrapper.name),
          RouteConfig(SettingsTreeRoute.name,
              path: 'tree', parent: SettingsWrapper.name),
          RouteConfig(SettingsRoute.name,
              path: '', parent: SettingsWrapper.name)
        ]),
        RouteConfig(ReportRoute.name, path: '/report/:id'),
        RouteConfig(SignUpRoute.name, path: '/sign-up'),
        RouteConfig('/typewriter/branch#redirect',
            path: '/typewriter/branch',
            redirectTo: '/typewriter/branch/new',
            fullMatch: true),
        RouteConfig(TypewriterBranchUID.name, path: '/typewriter/branch/:id'),
        RouteConfig('/typewriter/tree#redirect',
            path: '/typewriter/tree',
            redirectTo: '/typewriter/tree/new',
            fullMatch: true),
        RouteConfig(TypewriterTreeUID.name, path: '/typewriter/tree/:id')
      ];
}

/// generated route for
/// [BranchPage]
class BranchRoute extends PageRouteInfo<BranchRouteArgs> {
  BranchRoute({Key? key, Branch? branch, required String uid})
      : super(BranchRoute.name,
            path: '/branch/:id',
            args: BranchRouteArgs(key: key, branch: branch, uid: uid),
            rawPathParams: {'id': uid});

  static const String name = 'BranchRoute';
}

class BranchRouteArgs {
  const BranchRouteArgs({this.key, this.branch, required this.uid});

  final Key? key;

  final Branch? branch;

  final String uid;

  @override
  String toString() {
    return 'BranchRouteArgs{key: $key, branch: $branch, uid: $uid}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [LibraryPage]
class LibraryRoute extends PageRouteInfo<void> {
  const LibraryRoute() : super(LibraryRoute.name, path: '/library');

  static const String name = 'LibraryRoute';
}

/// generated route for
/// [LogInPage]
class LogInRoute extends PageRouteInfo<LogInRouteArgs> {
  LogInRoute({Key? key, required PageRouteInfo<dynamic> navigateTo})
      : super(LogInRoute.name,
            path: '/log-in',
            args: LogInRouteArgs(key: key, navigateTo: navigateTo));

  static const String name = 'LogInRoute';
}

class LogInRouteArgs {
  const LogInRouteArgs({this.key, required this.navigateTo});

  final Key? key;

  final PageRouteInfo<dynamic> navigateTo;

  @override
  String toString() {
    return 'LogInRouteArgs{key: $key, navigateTo: $navigateTo}';
  }
}

/// generated route for
/// [PlusPage]
class PlusRoute extends PageRouteInfo<void> {
  const PlusRoute() : super(PlusRoute.name, path: '/plus');

  static const String name = 'PlusRoute';
}

/// generated route for
/// [TreePage]
class TreeRoute extends PageRouteInfo<TreeRouteArgs> {
  TreeRoute({Key? key, required String uid, Tree? tree})
      : super(TreeRoute.name,
            path: '/tree/:id',
            args: TreeRouteArgs(key: key, uid: uid, tree: tree),
            rawPathParams: {'id': uid});

  static const String name = 'TreeRoute';
}

class TreeRouteArgs {
  const TreeRouteArgs({this.key, required this.uid, this.tree});

  final Key? key;

  final String uid;

  final Tree? tree;

  @override
  String toString() {
    return 'TreeRouteArgs{key: $key, uid: $uid, tree: $tree}';
  }
}

/// generated route for
/// [SettingsWrapper]
class SettingsWrapper extends PageRouteInfo<void> {
  const SettingsWrapper({List<PageRouteInfo>? children})
      : super(SettingsWrapper.name,
            path: '/settings', initialChildren: children);

  static const String name = 'SettingsWrapper';
}

/// generated route for
/// [ReportPage]
class ReportRoute extends PageRouteInfo<void> {
  const ReportRoute() : super(ReportRoute.name, path: '/report/:id');

  static const String name = 'ReportRoute';
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({Key? key, required PageRouteInfo<dynamic> navigateTo})
      : super(SignUpRoute.name,
            path: '/sign-up',
            args: SignUpRouteArgs(key: key, navigateTo: navigateTo));

  static const String name = 'SignUpRoute';
}

class SignUpRouteArgs {
  const SignUpRouteArgs({this.key, required this.navigateTo});

  final Key? key;

  final PageRouteInfo<dynamic> navigateTo;

  @override
  String toString() {
    return 'SignUpRouteArgs{key: $key, navigateTo: $navigateTo}';
  }
}

/// generated route for
/// [TypewriterPage]
class TypewriterBranchUID extends PageRouteInfo<TypewriterBranchUIDArgs> {
  TypewriterBranchUID(
      {Key? key,
      String? uid,
      Branch? branch,
      Tree? tree,
      TypewriterType type = TypewriterType.unknown})
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
      this.type = TypewriterType.unknown});

  final Key? key;

  final String? uid;

  final Branch? branch;

  final Tree? tree;

  final TypewriterType type;

  @override
  String toString() {
    return 'TypewriterBranchUIDArgs{key: $key, uid: $uid, branch: $branch, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [TypewriterPage]
class TypewriterTreeUID extends PageRouteInfo<TypewriterTreeUIDArgs> {
  TypewriterTreeUID(
      {Key? key,
      String? uid,
      Branch? branch,
      Tree? tree,
      TypewriterType type = TypewriterType.unknown})
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
      this.type = TypewriterType.unknown});

  final Key? key;

  final String? uid;

  final Branch? branch;

  final Tree? tree;

  final TypewriterType type;

  @override
  String toString() {
    return 'TypewriterTreeUIDArgs{key: $key, uid: $uid, branch: $branch, tree: $tree, type: $type}';
  }
}

/// generated route for
/// [SettingsAccountPage]
class SettingsAccountRoute extends PageRouteInfo<void> {
  const SettingsAccountRoute()
      : super(SettingsAccountRoute.name, path: 'account');

  static const String name = 'SettingsAccountRoute';
}

/// generated route for
/// [SettingsBranchPage]
class SettingsBranchRoute extends PageRouteInfo<void> {
  const SettingsBranchRoute() : super(SettingsBranchRoute.name, path: 'branch');

  static const String name = 'SettingsBranchRoute';
}

/// generated route for
/// [SettingsTreePage]
class SettingsTreeRoute extends PageRouteInfo<void> {
  const SettingsTreeRoute() : super(SettingsTreeRoute.name, path: 'tree');

  static const String name = 'SettingsTreeRoute';
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: '');

  static const String name = 'SettingsRoute';
}
