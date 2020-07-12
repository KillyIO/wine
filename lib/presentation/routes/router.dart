import 'package:auto_route/auto_route_annotations.dart';
import 'package:wine/presentation/pages/account/index.dart';
import 'package:wine/presentation/pages/home/index.dart';
import 'package:wine/presentation/pages/new_chapter/index.dart';
import 'package:wine/presentation/pages/new_series/index.dart';
import 'package:wine/presentation/pages/settings/index.dart';
import 'package:wine/presentation/pages/splash/index.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AdaptiveRoute(page: SplashPage, initial: true),
  AdaptiveRoute(page: HomePage),
  AdaptiveRoute(page: SettingsPage),
  AdaptiveRoute(page: AccountPage),
  AdaptiveRoute(page: NewSeriesPage),
  AdaptiveRoute(page: NewChapterPage),
])
class $Router {}
