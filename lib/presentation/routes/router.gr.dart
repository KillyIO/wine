// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    BranchRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<BranchRouteArgs>(
          orElse: () => BranchRouteArgs(uid: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: BranchPage(
          uid: args.uid,
          key: args.key,
          branch: args.branch,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomePage(),
      );
    },
    LibraryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LibraryPage(),
      );
    },
    LogInRoute.name: (routeData) {
      final args = routeData.argsAs<LogInRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: LogInPage(
          navigateTo: args.navigateTo,
          key: args.key,
        ),
      );
    },
    PlusRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const PlusPage(),
      );
    },
    ReportRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const ReportPage(),
      );
    },
    SettingsAccountRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsAccountPage(),
      );
    },
    SettingsBranchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsBranchPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsPage(),
      );
    },
    SettingsTreeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const SettingsTreePage(),
      );
    },
    SettingsWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const SettingsWrapper()),
      );
    },
    SignUpRoute.name: (routeData) {
      final args = routeData.argsAs<SignUpRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: SignUpPage(
          navigateTo: args.navigateTo,
          key: args.key,
        ),
      );
    },
    TreeRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TreeRouteArgs>(
          orElse: () => TreeRouteArgs(uid: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TreePage(
          uid: args.uid,
          key: args.key,
          tree: args.tree,
        ),
      );
    },
    TypewriterBranchNewRoute.name: (routeData) {
      final args = routeData.argsAs<TypewriterBranchNewRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TypewriterBranchNewPage(
          tree: args.tree,
          key: args.key,
          previousBranch: args.previousBranch,
        ),
      );
    },
    TypewriterBranchUIDRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterBranchUIDRouteArgs>(
          orElse: () =>
              TypewriterBranchUIDRouteArgs(uid: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TypewriterBranchUIDPage(
          uid: args.uid,
          key: args.key,
          branch: args.branch,
        ),
      );
    },
    TypewriterTreeNewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const TypewriterTreeNewPage(),
      );
    },
    TypewriterTreeUIDRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<TypewriterTreeUIDRouteArgs>(
          orElse: () =>
              TypewriterTreeUIDRouteArgs(uid: pathParams.getString('id')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: TypewriterTreeUIDPage(
          uid: args.uid,
          key: args.key,
          tree: args.tree,
        ),
      );
    },
    TypewriterWrapperRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const TypewriterWrapper()),
      );
    },
  };
}

/// generated route for
/// [BranchPage]
class BranchRoute extends PageRouteInfo<BranchRouteArgs> {
  BranchRoute({
    required String uid,
    Key? key,
    Branch? branch,
    List<PageRouteInfo>? children,
  }) : super(
          BranchRoute.name,
          args: BranchRouteArgs(
            uid: uid,
            key: key,
            branch: branch,
          ),
          rawPathParams: {'id': uid},
          initialChildren: children,
        );

  static const String name = 'BranchRoute';

  static const PageInfo<BranchRouteArgs> page = PageInfo<BranchRouteArgs>(name);
}

class BranchRouteArgs {
  const BranchRouteArgs({
    required this.uid,
    this.key,
    this.branch,
  });

  final String uid;

  final Key? key;

  final Branch? branch;

  @override
  String toString() {
    return 'BranchRouteArgs{uid: $uid, key: $key, branch: $branch}';
  }
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LibraryPage]
class LibraryRoute extends PageRouteInfo<void> {
  const LibraryRoute({List<PageRouteInfo>? children})
      : super(
          LibraryRoute.name,
          initialChildren: children,
        );

  static const String name = 'LibraryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [LogInPage]
class LogInRoute extends PageRouteInfo<LogInRouteArgs> {
  LogInRoute({
    required PageRouteInfo<dynamic> navigateTo,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          LogInRoute.name,
          args: LogInRouteArgs(
            navigateTo: navigateTo,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'LogInRoute';

  static const PageInfo<LogInRouteArgs> page = PageInfo<LogInRouteArgs>(name);
}

class LogInRouteArgs {
  const LogInRouteArgs({
    required this.navigateTo,
    this.key,
  });

  final PageRouteInfo<dynamic> navigateTo;

  final Key? key;

  @override
  String toString() {
    return 'LogInRouteArgs{navigateTo: $navigateTo, key: $key}';
  }
}

/// generated route for
/// [PlusPage]
class PlusRoute extends PageRouteInfo<void> {
  const PlusRoute({List<PageRouteInfo>? children})
      : super(
          PlusRoute.name,
          initialChildren: children,
        );

  static const String name = 'PlusRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ReportPage]
class ReportRoute extends PageRouteInfo<void> {
  const ReportRoute({List<PageRouteInfo>? children})
      : super(
          ReportRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReportRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsAccountPage]
class SettingsAccountRoute extends PageRouteInfo<void> {
  const SettingsAccountRoute({List<PageRouteInfo>? children})
      : super(
          SettingsAccountRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsAccountRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsBranchPage]
class SettingsBranchRoute extends PageRouteInfo<void> {
  const SettingsBranchRoute({List<PageRouteInfo>? children})
      : super(
          SettingsBranchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsBranchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsPage]
class SettingsRoute extends PageRouteInfo<void> {
  const SettingsRoute({List<PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsTreePage]
class SettingsTreeRoute extends PageRouteInfo<void> {
  const SettingsTreeRoute({List<PageRouteInfo>? children})
      : super(
          SettingsTreeRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsTreeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SettingsWrapper]
class SettingsWrapperRoute extends PageRouteInfo<void> {
  const SettingsWrapperRoute({List<PageRouteInfo>? children})
      : super(
          SettingsWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [SignUpPage]
class SignUpRoute extends PageRouteInfo<SignUpRouteArgs> {
  SignUpRoute({
    required PageRouteInfo<dynamic> navigateTo,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
          SignUpRoute.name,
          args: SignUpRouteArgs(
            navigateTo: navigateTo,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static const PageInfo<SignUpRouteArgs> page = PageInfo<SignUpRouteArgs>(name);
}

class SignUpRouteArgs {
  const SignUpRouteArgs({
    required this.navigateTo,
    this.key,
  });

  final PageRouteInfo<dynamic> navigateTo;

  final Key? key;

  @override
  String toString() {
    return 'SignUpRouteArgs{navigateTo: $navigateTo, key: $key}';
  }
}

/// generated route for
/// [TreePage]
class TreeRoute extends PageRouteInfo<TreeRouteArgs> {
  TreeRoute({
    required String uid,
    Key? key,
    Tree? tree,
    List<PageRouteInfo>? children,
  }) : super(
          TreeRoute.name,
          args: TreeRouteArgs(
            uid: uid,
            key: key,
            tree: tree,
          ),
          rawPathParams: {'id': uid},
          initialChildren: children,
        );

  static const String name = 'TreeRoute';

  static const PageInfo<TreeRouteArgs> page = PageInfo<TreeRouteArgs>(name);
}

class TreeRouteArgs {
  const TreeRouteArgs({
    required this.uid,
    this.key,
    this.tree,
  });

  final String uid;

  final Key? key;

  final Tree? tree;

  @override
  String toString() {
    return 'TreeRouteArgs{uid: $uid, key: $key, tree: $tree}';
  }
}

/// generated route for
/// [TypewriterBranchNewPage]
class TypewriterBranchNewRoute
    extends PageRouteInfo<TypewriterBranchNewRouteArgs> {
  TypewriterBranchNewRoute({
    required Tree? tree,
    Key? key,
    Branch? previousBranch,
    List<PageRouteInfo>? children,
  }) : super(
          TypewriterBranchNewRoute.name,
          args: TypewriterBranchNewRouteArgs(
            tree: tree,
            key: key,
            previousBranch: previousBranch,
          ),
          initialChildren: children,
        );

  static const String name = 'TypewriterBranchNewRoute';

  static const PageInfo<TypewriterBranchNewRouteArgs> page =
      PageInfo<TypewriterBranchNewRouteArgs>(name);
}

class TypewriterBranchNewRouteArgs {
  const TypewriterBranchNewRouteArgs({
    required this.tree,
    this.key,
    this.previousBranch,
  });

  final Tree? tree;

  final Key? key;

  final Branch? previousBranch;

  @override
  String toString() {
    return 'TypewriterBranchNewRouteArgs{tree: $tree, key: $key, previousBranch: $previousBranch}';
  }
}

/// generated route for
/// [TypewriterBranchUIDPage]
class TypewriterBranchUIDRoute
    extends PageRouteInfo<TypewriterBranchUIDRouteArgs> {
  TypewriterBranchUIDRoute({
    required String uid,
    Key? key,
    Branch? branch,
    List<PageRouteInfo>? children,
  }) : super(
          TypewriterBranchUIDRoute.name,
          args: TypewriterBranchUIDRouteArgs(
            uid: uid,
            key: key,
            branch: branch,
          ),
          rawPathParams: {'id': uid},
          initialChildren: children,
        );

  static const String name = 'TypewriterBranchUIDRoute';

  static const PageInfo<TypewriterBranchUIDRouteArgs> page =
      PageInfo<TypewriterBranchUIDRouteArgs>(name);
}

class TypewriterBranchUIDRouteArgs {
  const TypewriterBranchUIDRouteArgs({
    required this.uid,
    this.key,
    this.branch,
  });

  final String uid;

  final Key? key;

  final Branch? branch;

  @override
  String toString() {
    return 'TypewriterBranchUIDRouteArgs{uid: $uid, key: $key, branch: $branch}';
  }
}

/// generated route for
/// [TypewriterTreeNewPage]
class TypewriterTreeNewRoute extends PageRouteInfo<void> {
  const TypewriterTreeNewRoute({List<PageRouteInfo>? children})
      : super(
          TypewriterTreeNewRoute.name,
          initialChildren: children,
        );

  static const String name = 'TypewriterTreeNewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [TypewriterTreeUIDPage]
class TypewriterTreeUIDRoute extends PageRouteInfo<TypewriterTreeUIDRouteArgs> {
  TypewriterTreeUIDRoute({
    required String uid,
    Key? key,
    Tree? tree,
    List<PageRouteInfo>? children,
  }) : super(
          TypewriterTreeUIDRoute.name,
          args: TypewriterTreeUIDRouteArgs(
            uid: uid,
            key: key,
            tree: tree,
          ),
          rawPathParams: {'id': uid},
          initialChildren: children,
        );

  static const String name = 'TypewriterTreeUIDRoute';

  static const PageInfo<TypewriterTreeUIDRouteArgs> page =
      PageInfo<TypewriterTreeUIDRouteArgs>(name);
}

class TypewriterTreeUIDRouteArgs {
  const TypewriterTreeUIDRouteArgs({
    required this.uid,
    this.key,
    this.tree,
  });

  final String uid;

  final Key? key;

  final Tree? tree;

  @override
  String toString() {
    return 'TypewriterTreeUIDRouteArgs{uid: $uid, key: $key, tree: $tree}';
  }
}

/// generated route for
/// [TypewriterWrapper]
class TypewriterWrapperRoute extends PageRouteInfo<void> {
  const TypewriterWrapperRoute({List<PageRouteInfo>? children})
      : super(
          TypewriterWrapperRoute.name,
          initialChildren: children,
        );

  static const String name = 'TypewriterWrapperRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
