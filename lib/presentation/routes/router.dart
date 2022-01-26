import 'package:auto_route/annotations.dart';
import 'package:wine/presentation/home/home_page.dart';
import 'package:wine/presentation/library/library_page.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/plus/plus_page.dart';
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart';
import 'package:wine/presentation/settings/settings_branch/settings_branch_page.dart';
import 'package:wine/presentation/settings/settings_page.dart';
import 'package:wine/presentation/settings/settings_tree/settings_tree_page.dart';
import 'package:wine/presentation/sign_up/sign_up_page.dart';
import 'package:wine/presentation/tree/tree_page.dart';
import 'package:wine/presentation/typewriter/typewriter_page.dart';
import 'package:wine/presentation/wrappers/settings_wrapper.dart';
import 'package:wine/utils/paths/router.dart';

export 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
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
      name: 'TypewriterBranchId',
      page: TypewriterPage,
      path: '$typewriterPagePath$typewriterPageBranchIDPath',
    ),
    AutoRoute<TypewriterPage>(
      name: 'TypewriterBranchNew',
      page: TypewriterPage,
      path: '$typewriterPagePath$typewriterPageBranchNewPath',
    ),
    AutoRoute<TypewriterPage>(
      name: 'TypewriterTreeId',
      page: TypewriterPage,
      path: '$typewriterPagePath$typewriterPageTreeIDPath',
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
