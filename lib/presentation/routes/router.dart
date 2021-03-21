import 'package:auto_route/auto_route.dart';
import 'package:wine/presentation/home/home_page.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AdaptiveRoute(page: HomePage),
    AdaptiveRoute(page: LogInPage),
    AdaptiveRoute(page: SplashPage, initial: true),
  ],
)

/// @nodoc
class $AppRouter {}
