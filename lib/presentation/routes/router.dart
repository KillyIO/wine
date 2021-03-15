import 'package:auto_route/auto_route_annotations.dart';
import 'package:wine/presentation/log_in/log_in_page.dart';
import 'package:wine/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    AdaptiveRoute(page: LogInPage),
    AdaptiveRoute(page: SplashPage, initial: true),
  ],
)

/// @nodoc
class $AppRouter {}
