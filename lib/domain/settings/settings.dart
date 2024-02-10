import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/unique_id.dart';

part 'settings.freezed.dart';

@freezed
class Settings with _$Settings {
  const factory Settings({
    required UniqueID uid,
    required bool? enableBranchesBookmarksCount,
    required bool? enableBranchesLikesCount,
    required bool? enableBranchesViewsCount,
    required bool? enableTreesBookmarksCount,
    required bool? enableTreesLikesCount,
    required bool? enableTreesViewsCount,
  }) = _Settings;

  factory Settings.empty() => Settings(
        uid: UniqueID(),
        enableBranchesBookmarksCount: false,
        enableBranchesLikesCount: false,
        enableBranchesViewsCount: false,
        enableTreesBookmarksCount: false,
        enableTreesLikesCount: false,
        enableTreesViewsCount: false,
      );
}
