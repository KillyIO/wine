import 'package:auto_route/auto_route_annotations.dart';
import 'package:wine/presentation/pages/account_page.dart';
import 'package:wine/presentation/pages/chapter_editor_page.dart';
import 'package:wine/presentation/pages/chapter_page.dart';
import 'package:wine/presentation/pages/copyrights_page.dart';
import 'package:wine/presentation/pages/create_account_page.dart';
import 'package:wine/presentation/pages/genres_page.dart';
import 'package:wine/presentation/pages/home_page.dart';
import 'package:wine/presentation/pages/series_editor_page.dart';
import 'package:wine/presentation/pages/onboarding_page.dart';
import 'package:wine/presentation/pages/series_page.dart';
import 'package:wine/presentation/pages/settings_page.dart';
import 'package:wine/presentation/pages/sign_in_page.dart';
import 'package:wine/presentation/pages/splash_page.dart';
import 'package:wine/presentation/pages/verify_email_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AdaptiveRoute(page: AccountPage),
  AdaptiveRoute(page: ChapterEditorPage),
  AdaptiveRoute(page: ChapterPage),
  AdaptiveRoute(page: CopyrightsPage),
  AdaptiveRoute(page: CreateAccountPage),
  AdaptiveRoute(page: GenresPage),
  AdaptiveRoute(page: HomePage),
  AdaptiveRoute(page: SeriesEditorPage),
  AdaptiveRoute(page: OnboardingPage),
  AdaptiveRoute(page: SeriesPage),
  AdaptiveRoute(page: SettingsPage),
  AdaptiveRoute(page: SignInPage),
  AdaptiveRoute(page: SplashPage, initial: true),
  AdaptiveRoute(page: VerifyEmailPage),
])

/// @nodoc
class $WINERouter {}
