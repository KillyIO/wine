import 'package:auto_route/annotations.dart';
import 'package:wine/presentation/home/home_page.dart';
import 'package:wine/presentation/library/library_page.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/onboarding/onboarding_page.dart';
import 'package:wine/presentation/plus/plus_page.dart';
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
  ],
)

/// @nodoc
class $HomeTestRouter {}
