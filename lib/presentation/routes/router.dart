import 'package:auto_route/annotations.dart';
import 'package:wine/presentation/home/home_page.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/onboarding/onboarding_page.dart';
import 'package:wine/presentation/plus/plus_page.dart';
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
    AdaptiveRoute(page: LogInPage),
    AdaptiveRoute(
      page: OnboardingPage,
      path: onboardingPath,
    ),
    AdaptiveRoute(page: PlusPage),
  ],
)

/// @nodoc
class $AppRouter {}
