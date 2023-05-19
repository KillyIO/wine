import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/auth/dialog/auth_dialog_cubit.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/application/sign_up/sign_up_bloc.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/branch/branch_page.dart';
import 'package:wine/presentation/home/home_page.dart';
import 'package:wine/presentation/library/library_page.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/plus/plus_page.dart';
import 'package:wine/presentation/report/report_page.dart';
import 'package:wine/presentation/routes/guards/auth_guard.dart';
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart';
import 'package:wine/presentation/settings/settings_branch/settings_branch_page.dart';
import 'package:wine/presentation/settings/settings_page.dart';
import 'package:wine/presentation/settings/settings_tree/settings_tree_page.dart';
import 'package:wine/presentation/sign_up/sign_up_page.dart';
import 'package:wine/presentation/tree/tree_page.dart';
import 'package:wine/presentation/typewriter/branch/typewriter_branch_new_page.dart';
import 'package:wine/presentation/typewriter/branch/typewriter_branch_uid_page.dart';
import 'package:wine/presentation/typewriter/tree/typewriter_tree_new_page.dart';
import 'package:wine/presentation/typewriter/tree/typewriter_tree_uid_page.dart';
import 'package:wine/presentation/web/auth_dialog.dart';
import 'package:wine/utils/constants/paths/router.dart';

part 'router.gr.dart';

/// @nodoc
@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: BranchRoute.page,
      path: branchPagePath,
    ),
    AutoRoute(
      page: HomeRoute.page,
      path: homePagePath,
    ),
    AutoRoute(
      page: LibraryRoute.page,
      path: libraryPagePath,
      guards: [getIt<AuthGuard>()],
    ),
    CustomRoute(
      page: LogInRoute.page,
      path: logInPagePath,
      customRouteBuilder: _customLoginRouteBuilder,
    ),
    AutoRoute(
      page: PlusRoute.page,
      path: plusPagePath,
    ),
    AutoRoute(
      page: ReportRoute.page,
      path: reportPagePath,
    ),
    AutoRoute(
      page: SettingsWrapper.page,
      path: settingsPagePath,
      children: <AutoRoute>[
        AutoRoute(
          page: SettingsAccountRoute.page,
          path: settingsAccountPagePath,
          guards: [getIt<AuthGuard>()],
        ),
        AutoRoute(
          page: SettingsBranchRoute.page,
          path: settingsBranchPagePath,
        ),
        AutoRoute(
          page: SettingsTreeRoute.page,
          path: settingsTreePagePath,
        ),
        AutoRoute(
          page: SettingsRoute.page,
          path: '',
        ),
      ],
    ),
    AutoRoute(
      page: SignUpRoute.page,
      path: signUpPagePath,
    ),
    AutoRoute(
      page: TreeRoute.page,
      path: treePagePath,
    ),
    AutoRoute(
      page: TypewriterWrapper.page,
      path: typewriterPagePath,
      guards: [getIt<AuthGuard>()],
      children: [
        AutoRoute(
          page: TypewriterBranchUIDRoute.page,
          path: typewriterPageBranchUIDPath,
        ),
        AutoRoute(
          page: TypewriterBranchNewRoute.page,
          path: typewriterPageBranchNewPath,
        ),
        AutoRoute(
          page: TypewriterTreeUIDRoute.page,
          path: typewriterPageTreeUIDPath,
        ),
        AutoRoute(
          page: TypewriterTreeNewRoute.page,
          path: typewriterPageTreeNewPath,
        ),
      ],
    ),
  ];
}

Route<T> _customLoginRouteBuilder<T>(
  BuildContext context,
  Widget child,
  AutoRoutePage<T> page,
) {
  if (kIsWeb) {
    return DialogRoute(
      context: context,
      builder: (context) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => getIt<AuthDialogCubit>(),
          ),
          BlocProvider(
            create: (context) => getIt<LogInBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<SignUpBloc>(),
          ),
        ],
        child: AuthDialog(
          navigateTo: context.routeData.topMatch.toPageRouteInfo(),
        ),
      ),
    );
  }
  return PageRouteBuilder(
    settings: page,
    pageBuilder: (_, __, ___) => child,
  );
}
