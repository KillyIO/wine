import 'package:auto_route/annotations.dart';
import 'package:wine/presentation/home/home_page.dart';
import 'package:wine/presentation/library/library_page.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/onboarding/onboarding_page.dart';
import 'package:wine/presentation/plus/plus_page.dart';
import 'package:wine/presentation/settings/account_settings/account_settings_page.dart';
import 'package:wine/presentation/settings/chapter_settings/chapter_settings_page.dart';
import 'package:wine/presentation/settings/series_settings/series_settings_page.dart';
import 'package:wine/presentation/settings/settings_page.dart';
import 'package:wine/utils/paths/router.dart';

export 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute(
      page: HomePage,
      path: homePath,
      initial: true,
    ),
    AdaptiveRoute(
      page: LibraryPage,
      path: libraryPath,
    ),
    AdaptiveRoute(
      page: LogInPage,
      path: logInPath,
    ),
    AdaptiveRoute(
      page: OnboardingPage,
      path: onboardingPath,
    ),
    AdaptiveRoute(
      page: PlusPage,
      path: plusPath,
    ),
    AdaptiveRoute(
      page: SettingsPage,
      path: settingsPath,
      children: <AutoRoute<dynamic>>[
        AdaptiveRoute(page: AccountSettingsPage, path: accountSettingsPath),
        AdaptiveRoute(page: ChapterSettingsPage, path: chapterSettingsPath),
        AdaptiveRoute(page: SeriesSettingsPage, path: seriesSettingsPath),
      ],
    ),
  ],
)

/// @nodoc
class $AppRouter {}
