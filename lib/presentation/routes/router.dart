import 'package:auto_route/auto_route_annotations.dart';
import 'package:wine/presentation/pages/account/index.dart';
import 'package:wine/presentation/pages/chapter/index.dart';
import 'package:wine/presentation/pages/copyrights/index.dart';
import 'package:wine/presentation/pages/create_account/index.dart';
import 'package:wine/presentation/pages/genres/index.dart';
import 'package:wine/presentation/pages/home/index.dart';
import 'package:wine/presentation/pages/new_chapter/index.dart';
import 'package:wine/presentation/pages/new_series/index.dart';
import 'package:wine/presentation/pages/series/index.dart';
import 'package:wine/presentation/pages/settings/index.dart';
import 'package:wine/presentation/pages/sign_in/index.dart';
import 'package:wine/presentation/pages/splash/index.dart';
import 'package:wine/presentation/pages/verify_email/index.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AdaptiveRoute(page: AccountPage),
  AdaptiveRoute(page: ChapterPage),
  AdaptiveRoute(page: CopyrightsPage),
  AdaptiveRoute(page: CreateAccountPage),
  AdaptiveRoute(page: GenresPage),
  AdaptiveRoute(page: HomePage),
  AdaptiveRoute(page: NewChapterPage),
  AdaptiveRoute(page: NewSeriesPage),
  AdaptiveRoute(page: SeriesPage),
  AdaptiveRoute(page: SettingsPage),
  AdaptiveRoute(page: SignInPage),
  AdaptiveRoute(page: SplashPage, initial: true),
  AdaptiveRoute(page: VerifyEmailPage),
])
class $Router {}
