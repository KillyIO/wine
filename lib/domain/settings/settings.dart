import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

/// @nodoc
@freezed
class Settings with _$Settings {
  /// @nodoc
  const factory Settings({
    required bool? enableBranchesBookmarksCount,
    required bool? enableBranchesLikesCount,
    required bool? enableBranchesViewsCount,
    required bool? enableTreesBookmarksCount,
    required bool? enableTreesLikesCount,
    required bool? enableTreesViewsCount,
  }) = _Settings;

  /// @nodoc
  factory Settings.empty() => const Settings(
        enableBranchesBookmarksCount: false,
        enableBranchesLikesCount: false,
        enableBranchesViewsCount: false,
        enableTreesBookmarksCount: false,
        enableTreesLikesCount: false,
        enableTreesViewsCount: false,
      );
}
