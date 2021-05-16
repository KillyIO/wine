import 'package:auto_route/annotations.dart';
import 'package:wine/presentation/home/home_page.dart';
import 'package:wine/presentation/onboarding/onboarding_page.dart';
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
      page: OnboardingPage,
      path: onboardingPath,
    ),
  ],
)

/// @nodoc
class $HomeTestRouter {}
