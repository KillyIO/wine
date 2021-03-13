import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

/// @nodoc
@freezed
abstract class Settings with _$Settings {
  /// @nodoc
  const factory Settings({
    @required bool enableChaptersBookmarksCount,
    @required bool enableChaptersLikesCount,
    @required bool enableChaptersViewsCount,
    @required bool enableSeriesBookmarksCount,
    @required bool enableSeriesLikesCount,
    @required bool enableSeriesViewsCount,
  }) = _Settings;

  /// @nodoc
  factory Settings.empty() => const Settings(
        enableChaptersBookmarksCount: false,
        enableChaptersLikesCount: false,
        enableChaptersViewsCount: false,
        enableSeriesBookmarksCount: false,
        enableSeriesLikesCount: false,
        enableSeriesViewsCount: false,
      );
}
