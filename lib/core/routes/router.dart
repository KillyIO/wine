import 'package:auto_route/annotations.dart';
import 'package:wine/features/branch/branch_page.presentation.dart';
import 'package:wine/features/home/home_page.presentation.dart';
import 'package:wine/features/library/library_page.presentation.dart';
import 'package:wine/features/log_in/log_in_page.presentation.dart';
import 'package:wine/features/plus/plus_page.presentation.dart';
import 'package:wine/features/settings/settings_account/settings_account_page.presentation.dart';
import 'package:wine/features/settings/settings_branch/settings_branch_page.presentation.dart';
import 'package:wine/features/settings/settings_page.presentation.dart';
import 'package:wine/features/settings/settings_tree/settings_tree_page.presentation.dart';
import 'package:wine/features/sign_up/sign_up_page.presentation.dart';
import 'package:wine/features/tree/tree_page.presentation.dart';
import 'package:wine/features/typewriter/typewriter_page.presentation.dart';
import 'package:wine/features/wrappers/settings_wrapper.presentation.dart';
import 'package:wine/utils/constants/paths/router.dart';

export 'router.gr.dart';

@AdaptiveAutoRouter(
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
    AutoRoute<SignUpPage>(
      page: SignUpPage,
      path: signUpPagePath,
    ),
    AutoRoute<TypewriterPage>(
      name: 'TypewriterBranchUID',
      page: TypewriterPage,
      path: '$typewriterPagePath$typewriterPageBranchUIDPath',
    ),
    AutoRoute<TypewriterPage>(
      name: 'TypewriterBranchNew',
      page: TypewriterPage,
      path: '$typewriterPagePath$typewriterPageBranchNewPath',
    ),
    AutoRoute<TypewriterPage>(
      name: 'TypewriterTreeUID',
      page: TypewriterPage,
      path: '$typewriterPagePath$typewriterPageTreeUIDPath',
    ),
    AutoRoute<TypewriterPage>(
      name: 'TypewriterTreeNew',
      page: TypewriterPage,
      path: '$typewriterPagePath$typewriterPageTreeNewPath',
    ),
  ],
)

/// @nodoc
class $AppRouter {}
