import 'package:auto_route/auto_route_annotations.dart';
import 'package:wine/presentation/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AdaptiveRoute(page: SplashPage, initial: true),
])

/// @nodoc
class $AppRouter {}
