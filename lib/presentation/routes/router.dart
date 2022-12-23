import 'package:auto_route/annotations.dart';
import 'package:wine/presentation/branch/branch_page.dart';
import 'package:wine/presentation/home/home_page.dart';
import 'package:wine/presentation/library/library_page.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/plus/plus_page.dart';
import 'package:wine/presentation/report/report_page.presentation.dart';
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart';
import 'package:wine/presentation/settings/settings_branch/settings_branch_page.dart';
import 'package:wine/presentation/settings/settings_page.dart';
import 'package:wine/presentation/settings/settings_tree/settings_tree_page.dart';
import 'package:wine/presentation/sign_up/sign_up_page.dart';
import 'package:wine/presentation/tree/tree_page.dart';
import 'package:wine/presentation/typewriter/typewriter_page.dart';
import 'package:wine/presentation/wrappers/settings_wrapper.dart';
import 'package:wine/utils/constants/paths/router.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<BranchPage>(
      page: BranchPage,
      path: branchPagePath,
    ),
    AutoRoute<HomePage>(
      page: HomePage,
      path: homePagePath,
      initial: true,
    ),
    AutoRoute<LibraryPage>(
      page: LibraryPage,
      path: libraryPagePath,
    ),
    AutoRoute<LogInPage>(
      page: LogInPage,
      path: logInPagePath,
    ),
    AutoRoute<PlusPage>(
      page: PlusPage,
      path: plusPagePath,
    ),
    AutoRoute<TreePage>(
      page: TreePage,
      path: treePagePath,
    ),
    AutoRoute<SettingsWrapper>(
      page: SettingsWrapper,
      path: settingsPagePath,
      children: <AutoRoute>[
        AutoRoute<SettingsAccountPage>(
          page: SettingsAccountPage,
          path: settingsAccountPagePath,
        ),
        AutoRoute<SettingsBranchPage>(
          page: SettingsBranchPage,
          path: settingsBranchPagePath,
        ),
        AutoRoute<SettingsTreePage>(
          page: SettingsTreePage,
          path: settingsTreePagePath,
        ),
        AutoRoute<SettingsPage>(
          page: SettingsPage,
          path: '',
        ),
      ],
    ),
    AutoRoute<ReportPage>(
      page: ReportPage,
      path: reportPagePath,
    ),
    AutoRoute<SignUpPage>(
      page: SignUpPage,
      path: signUpPagePath,
    ),
    RedirectRoute(
      path: typewriterPageBranchPath,
      redirectTo: '$typewriterPagePath$typewriterPageBranchNewPath',
    ),
    AutoRoute<TypewriterPage>(
      name: 'TypewriterBranchUID',
      page: TypewriterPage,
      path: '$typewriterPagePath$typewriterPageBranchUIDPath',
    ),
    RedirectRoute(
      path: typewriterPageTreePath,
      redirectTo: '$typewriterPagePath$typewriterPageTreeNewPath',
    ),
    AutoRoute<TypewriterPage>(
      name: 'TypewriterTreeUID',
      page: TypewriterPage,
      path: '$typewriterPagePath$typewriterPageTreeUIDPath',
    ),
  ],
)

/// @nodoc
class $AppRouter {}
