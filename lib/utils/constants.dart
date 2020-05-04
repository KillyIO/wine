class Constants {
  // Hive boxes
  static const String sessionsBox = 'sessionsBox';
  static const String configsBox = 'configsBox';

  // Hive session
  static const String session = 'session';

  // SECTION routes
  static const String splashRoute = '/splash';

  static const String homeRoute = '/home';
  static const String homeMenuRoute = '/home/menu';

  static const String settingsRoute = '/settings';

  static const String accountRoute = '/account';
  static const String signInRoute = '/account/sign-in';
  static const String createAccountRoute = '/account/create-account';
  static const String verifyEmailRoute = '/account/verify-email';

  static const String newSeriesRoute = '/series/new';

  // SECTION series limits
  static const int seriesDescriptionMinWords = 100;
  static const int seriesDescriptionMaxWords = 200;
  static const int chapterMinWords = 500;
  static const int chapterMaxWords = 10000;
}
