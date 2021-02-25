/// @nodoc
class Constants {
  // Hive boxes

  // Hive session
  /// @nodoc
  static const String session = 'session';

  // Hive keys

  // SECTION routes
  /// @nodoc
  static const String splashRoute = '/splash';

  /// @nodoc
  static const String homeRoute = '/home';

  /// @nodoc
  static const String homeDrawerRoute = '/home/drawer';

  /// @nodoc
  static const String homeFiltersRoute = '/home/filters';

  /// @nodoc
  static const String settingsRoute = '/settings';

  /// @nodoc
  static const String accountRoute = '/account';

  /// @nodoc
  static const String signInRoute = '/account/sign-in';

  /// @nodoc
  static const String createAccountRoute = '/account/create-account';

  /// @nodoc
  static const String verifyEmailRoute = '/account/verify-email';

  /// @nodoc
  static const String seriesRoute = '/series';

  /// @nodoc
  static const String newSeriesRoute = '/series/new';

  /// @nodoc
  static const String chapterRoute = '/chapter';

  /// @nodoc
  static const String newChapterRoute = '/chapter/new';

  /// @nodoc
  static const String genresRoute = '/genres';

  /// @nodoc
  static const String copyrightsRoute = '/copyrights';

  // SECTON assets
  /// @nodoc
  static const String assetsAnimations = 'assets/animations/';

  /// @nodoc
  static const String assetsIcons = 'assets/icons/';

  /// @nodoc
  static const String assetsImages = 'assets/images/';

  // SECTION series limits
  /// @nodoc
  static const int seriesTitleMaxWords = 10;

  /// @nodoc
  static const int seriesSubtitleMaxWords = 10;

  /// @nodoc
  static const int seriesSummaryMaxWords = 200;

  /// @nodoc
  static const int chapterTitleMaxWords = 10;

  /// @nodoc
  static const int chapterStoryMinWords = 300;

  /// @nodoc
  static const int chapterStoryMaxWords = 1350;

  /// @nodoc
  static const int maxNextChaptersByChapter = 10;

  // SECTION cover dimensions
  /// @nodoc
  static const int coverMaxWidth = 3000;

  /// @nodoc
  static const int coverMaxHeight = 3600;

  /// @nodoc
  static const double coverMaxWidthAsDouble = 3000.0;

  /// @nodoc
  static const double coverMaxHeightAsDouble = 3600.0;

  /// @nodoc
  static const double coverRatioX = 1.0;

  /// @nodoc
  static const double coverRatioY = 1.2;
}
