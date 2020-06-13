class Constants {
  // Hive boxes
  static const String sessionsBox = 'sessionsBox';
  static const String configsBox = 'configsBox';
  static const String seriesDraftsBox = 'seriesDraftsBox';
  static const String chapterDraftsBox = 'chapterDraftsBox';
  static const String placeholdersBox = 'placeholdersBox';

  // Hive session
  static const String session = 'session';

  // SECTION routes
  static const String splashRoute = '/splash';

  static const String homeRoute = '/home';
  static const String homeDrawerRoute = '/home/drawer';
  static const String homeFiltersRoute = '/home/filters';

  static const String settingsRoute = '/settings';

  static const String accountRoute = '/account';
  static const String signInRoute = '/account/sign-in';
  static const String createAccountRoute = '/account/create-account';
  static const String verifyEmailRoute = '/account/verify-email';

  static const String seriesRoute = '/series';
  static const String newSeriesRoute = '/series/new';

  static const String chapterRoute = '/chapter';
  static const String newChapterRoute = '/chapter/new';

  static const String genresRoute = '/genres';
  static const String copyrightsRoute = '/copyrights';

  // SECTION series limits
  static const int seriesTitleMaxWords = 10;
  static const int seriesSubtitleMaxWords = 10;
  static const int seriesSummaryMaxWords = 200;

  static const int chapterTitleMaxWords = 10;
  static const int chapterStoryMinWords = 500;
  static const int chapterStoryMaxWords = 10000;
  static const int maxNextChaptersByChapter = 10;

  // SECTION cover dimensions
  static const int coverMaxWidth = 3000;
  static const int coverMaxHeight = 3600;
  static const double coverMaxWidthAsDouble = 3000.0;
  static const double coverMaxHeightAsDouble = 3600.0;
  static const double coverRatioX = 1.0;
  static const double coverRatioY = 1.2;
}
