import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    required bool? enableBranchesBookmarksCount,
    required bool? enableBranchesLikesCount,
    required bool? enableBranchesViewsCount,
    required bool? enableTreesBookmarksCount,
    required bool? enableTreesLikesCount,
    required bool? enableTreesViewsCount,
  }) = _Settings;

  factory Settings.empty() => const Settings(
        enableBranchesBookmarksCount: false,
        enableBranchesLikesCount: false,
        enableBranchesViewsCount: false,
        enableTreesBookmarksCount: false,
        enableTreesLikesCount: false,
        enableTreesViewsCount: false,
      );
}
