import 'package:auto_route/annotations.dart';
import 'package:wine/presentation/home/home_page.dart';
import 'package:wine/presentation/library/library_page.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/plus/plus_page.dart';
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart';
import 'package:wine/presentation/settings/settings_chapter/settings_chapter_page.dart';
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
        AutoRoute<SettingsChapterPage>(
          page: SettingsChapterPage,
          path: settingsChapterPagePath,
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
      name: 'TypewriterChapterId',
      page: TypewriterPage,
      path: '$typewriterPagePath$typewriterPageChapterIDPath',
    ),
    AutoRoute<TypewriterPage>(
      name: 'TypewriterChapterNew',
      page: TypewriterPage,
      path: '$typewriterPagePath$typewriterPageChapterNewPath',
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
