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
    AutoRoute<OnboardingPage>(
      page: OnboardingPage,
      path: onboardingPath,
    ),
    AutoRoute<PlusPage>(
      page: PlusPage,
      path: plusPath,
    ),
    AutoRoute<SettingsWrapper>(
      page: SettingsWrapper,
      path: settingsPath,
      children: <AutoRoute>[
        AutoRoute<AccountSettingsPage>(
          page: AccountSettingsPage,
          path: accountSettingsPath,
        ),
        AutoRoute<ChapterSettingsPage>(
          page: ChapterSettingsPage,
          path: chapterSettingsPath,
        ),
        AutoRoute<SeriesSettingsPage>(
          page: SeriesSettingsPage,
          path: seriesSettingsPath,
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
  ],
)

/// @nodoc
class $AppRouter {}
