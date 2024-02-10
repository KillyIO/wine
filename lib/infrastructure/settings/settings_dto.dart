import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/settings/settings.dart';

part 'settings_dto.freezed.dart';
part 'settings_dto.g.dart';

@freezed
class SettingsDTO with _$SettingsDTO {
  factory SettingsDTO({
    required String uid,
    required bool? enableBranchesBookmarksCount,
    required bool? enableBranchesLikesCount,
    required bool? enableBranchesViewsCount,
    required bool? enableTreesBookmarksCount,
    required bool? enableTreesLikesCount,
    required bool? enableTreesViewsCount,
  }) = _SettingsDTO;

  factory SettingsDTO.fromDomain(Settings settings) {
    return SettingsDTO(
      uid: settings.uid.getOrCrash(),
      enableBranchesBookmarksCount: settings.enableBranchesBookmarksCount,
      enableBranchesLikesCount: settings.enableBranchesLikesCount,
      enableBranchesViewsCount: settings.enableBranchesViewsCount,
      enableTreesBookmarksCount: settings.enableTreesBookmarksCount,
      enableTreesLikesCount: settings.enableTreesLikesCount,
      enableTreesViewsCount: settings.enableTreesViewsCount,
    );
  }

  factory SettingsDTO.fromJson(Map<String, dynamic>? json) =>
      _$SettingsDTOFromJson(json ?? <String, dynamic>{});
}

extension SettingsDTOX on SettingsDTO {
  Settings toDomain() => Settings(
        uid: UniqueID.fromUniqueString(uid),
        enableBranchesBookmarksCount: enableBranchesBookmarksCount,
        enableBranchesLikesCount: enableBranchesLikesCount,
        enableBranchesViewsCount: enableBranchesViewsCount,
        enableTreesBookmarksCount: enableTreesBookmarksCount,
        enableTreesLikesCount: enableTreesLikesCount,
        enableTreesViewsCount: enableTreesViewsCount,
      );
}

extension SettingsMapX on Map<dynamic, dynamic> {
  Settings toDomain() => Settings(
        uid: UniqueID.fromUniqueString(this['uid'] as String),
        enableBranchesBookmarksCount:
            this['enableBranchesBookmarksCount'] as bool,
        enableBranchesLikesCount: this['enableBranchesLikesCount'] as bool,
        enableBranchesViewsCount: this['enableBranchesViewsCount'] as bool,
        enableTreesBookmarksCount: this['enableTreesBookmarksCount'] as bool,
        enableTreesLikesCount: this['enableTreesLikesCount'] as bool,
        enableTreesViewsCount: this['enableTreesViewsCount'] as bool,
      );
}
