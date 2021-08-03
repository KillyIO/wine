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
import 'package:wine/presentation/sign_up/sign_up_page.dart';
import 'package:wine/utils/paths/router.dart';

export 'router.gr.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute<AccountSettingsPage>(
      page: AccountSettingsPage,
      path: accountSettingsPath,
    ),
    AdaptiveRoute<ChapterSettingsPage>(
      page: ChapterSettingsPage,
      path: chapterSettingsPath,
    ),
    AdaptiveRoute<HomePage>(
      page: HomePage,
      path: homePath,
      initial: true,
    ),
    AdaptiveRoute<LibraryPage>(
      page: LibraryPage,
      path: libraryPath,
    ),
    AdaptiveRoute<LogInPage>(
      page: LogInPage,
      path: logInPath,
    ),
    AdaptiveRoute<OnboardingPage>(
      page: OnboardingPage,
      path: onboardingPath,
    ),
    AdaptiveRoute<PlusPage>(
      page: PlusPage,
      path: plusPath,
    ),
    AdaptiveRoute<SeriesSettingsPage>(
      page: SeriesSettingsPage,
      path: seriesSettingsPath,
    ),
    AdaptiveRoute<SettingsPage>(
      page: SettingsPage,
      path: settingsPath,
    ),
    AdaptiveRoute<SignUpPage>(
      page: SignUpPage,
      path: signUpPath,
    ),
  ],
)

/// @nodoc
class $AppRouter {}
