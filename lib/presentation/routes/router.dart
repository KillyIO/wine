import 'package:auto_route/annotations.dart';
import 'package:wine/presentation/home/home_page.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/onboarding/onboarding_page.dart';
import 'package:wine/presentation/plus/plus_page.dart';
import 'package:wine/presentation/splash/splash_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute(page: HomePage),
    AdaptiveRoute(page: LogInPage),
    AdaptiveRoute(page: OnboardingPage),
    AdaptiveRoute(page: PlusPage),
    AdaptiveRoute(page: SplashPage, initial: true),
  ],
)

/// @nodoc
class $AppRouter {}
