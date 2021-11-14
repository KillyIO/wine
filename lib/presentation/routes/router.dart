import 'package:auto_route/annotations.dart';
import 'package:wine/presentation/home/home_page.dart';
import 'package:wine/presentation/library/library_page.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/plus/plus_page.dart';
import 'package:wine/presentation/series/series_page.dart';
import 'package:wine/presentation/settings/settings_account/settings_account_page.dart';
import 'package:wine/presentation/settings/settings_chapter/settings_chapter_page.dart';
import 'package:wine/presentation/settings/settings_page.dart';
import 'package:wine/presentation/settings/settings_series/settings_series_page.dart';
import 'package:wine/presentation/sign_up/sign_up_page.dart';
import 'package:wine/presentation/typewriter/typewriter_page.dart';
import 'package:wine/presentation/wrappers/settings_wrapper.dart';
import 'package:wine/utils/paths/router.dart';

export 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute<HomePage>(
      page: HomePage,
      path: homePath,
      initial: true,
    ),
    AutoRoute<LibraryPage>(
      page: LibraryPage,
      path: libraryPath,
    ),
    AutoRoute<LogInPage>(
      page: LogInPage,
      path: logInPath,
    ),
    AutoRoute<PlusPage>(
      page: PlusPage,
      path: plusPath,
    ),
    AutoRoute<SeriesPage>(
      page: SeriesPage,
      path: seriesPath,
    ),
    AutoRoute<SettingsWrapper>(
      page: SettingsWrapper,
      path: settingsPath,
      children: <AutoRoute>[
        AutoRoute<SettingsAccountPage>(
          page: SettingsAccountPage,
          path: settingsAccountPath,
        ),
        AutoRoute<SettingsChapterPage>(
          page: SettingsChapterPage,
          path: settingsChapterPath,
        ),
        AutoRoute<SettingsSeriesPage>(
          page: SettingsSeriesPage,
          path: settingsSeriesPath,
        ),
        AutoRoute<SettingsPage>(
          page: SettingsPage,
          path: '',
        ),
      ],
    ),
    AutoRoute<SignUpPage>(
      page: SignUpPage,
      path: signUpPath,
    ),
    AutoRoute<TypewriterPage>(
      name: 'TypewriterSeriesId',
      page: TypewriterPage,
      path: '$typewriterPath$typewriterSeriesIDPath',
    ),
    AutoRoute<TypewriterPage>(
      name: 'TypewriterSeriesNew',
      page: TypewriterPage,
      path: '$typewriterPath$typewriterSeriesNewPath',
    ),
  ],
)

/// @nodoc
class $AppRouter {}
