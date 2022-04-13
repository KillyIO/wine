import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/infrastructure/settings/isar_settings.dart';

part 'settings_dto.freezed.dart';
part 'settings_dto.g.dart';

/// @nodoc
@freezed
class SettingsDTO with _$SettingsDTO {
  /// @nodoc
  factory SettingsDTO({
    required bool? enableBranchesBookmarksCount,
    required bool? enableBranchesLikesCount,
    required bool? enableBranchesViewsCount,
    required bool? enableTreesBookmarksCount,
    required bool? enableTreesLikesCount,
    required bool? enableTreesViewsCount,
  }) = _SettingsDTO;

  /// @nodoc
  factory SettingsDTO.fromDomain(Settings settings) {
    return SettingsDTO(
      enableBranchesBookmarksCount: settings.enableBranchesBookmarksCount,
      enableBranchesLikesCount: settings.enableBranchesLikesCount,
      enableBranchesViewsCount: settings.enableBranchesViewsCount,
      enableTreesBookmarksCount: settings.enableTreesBookmarksCount,
      enableTreesLikesCount: settings.enableTreesLikesCount,
      enableTreesViewsCount: settings.enableTreesViewsCount,
    );
  }

  /// @nodoc
  factory SettingsDTO.fromAdapter(IsarSettings settings) {
    return SettingsDTO(
      enableBranchesBookmarksCount: settings.enableBranchesBookmarksCount,
      enableBranchesLikesCount: settings.enableBranchesLikesCount,
      enableBranchesViewsCount: settings.enableBranchesViewsCount,
      enableTreesBookmarksCount: settings.enableTreesBookmarksCount,
      enableTreesLikesCount: settings.enableTreesLikesCount,
      enableTreesViewsCount: settings.enableTreesViewsCount,
    );
  }

  /// @nodoc
  factory SettingsDTO.fromJson(Map<String, dynamic>? json) =>
      _$SettingsDTOFromJson(json ?? <String, dynamic>{});
}

/// @nodoc
extension SettingsDTOX on SettingsDTO {
  /// @nodoc
  Settings toDomain() => Settings(
        enableBranchesBookmarksCount: enableBranchesBookmarksCount,
        enableBranchesLikesCount: enableBranchesLikesCount,
        enableBranchesViewsCount: enableBranchesViewsCount,
        enableTreesBookmarksCount: enableTreesBookmarksCount,
        enableTreesLikesCount: enableTreesLikesCount,
        enableTreesViewsCount: enableTreesViewsCount,
      );

  /// @nodoc
  IsarSettings toAdapter() => IsarSettings(
        enableBranchesBookmarksCount: enableBranchesBookmarksCount,
        enableBranchesLikesCount: enableBranchesLikesCount,
        enableBranchesViewsCount: enableBranchesViewsCount,
        enableTreesBookmarksCount: enableTreesBookmarksCount,
        enableTreesLikesCount: enableTreesLikesCount,
        enableTreesViewsCount: enableTreesViewsCount,
      );
}

/// @nodoc
extension SettingsMapX on Map {
  /// @nodoc
  Settings toDomain() => Settings(
        enableBranchesBookmarksCount:
            this['enableBranchesBookmarksCount'] as bool,
        enableBranchesLikesCount: this['enableBranchesLikesCount'] as bool,
        enableBranchesViewsCount: this['enableBranchesViewsCount'] as bool,
        enableTreesBookmarksCount: this['enableTreesBookmarksCount'] as bool,
        enableTreesLikesCount: this['enableTreesLikesCount'] as bool,
        enableTreesViewsCount: this['enableTreesViewsCount'] as bool,
      );
}
