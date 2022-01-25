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
    required bool? enableChaptersBookmarksCount,
    required bool? enableChaptersLikesCount,
    required bool? enableChaptersViewsCount,
    required bool? enableTreesBookmarksCount,
    required bool? enableTreesLikesCount,
    required bool? enableTreesViewsCount,
    String? uid,
  }) = _SettingsDTO;

  /// @nodoc
  factory SettingsDTO.fromDomain(Settings settings) {
    return SettingsDTO(
      enableChaptersBookmarksCount: settings.enableChaptersBookmarksCount,
      enableChaptersLikesCount: settings.enableChaptersLikesCount,
      enableChaptersViewsCount: settings.enableChaptersViewsCount,
      enableTreesBookmarksCount: settings.enableTreesBookmarksCount,
      enableTreesLikesCount: settings.enableTreesLikesCount,
      enableTreesViewsCount: settings.enableTreesViewsCount,
    );
  }

  /// @nodoc
  factory SettingsDTO.fromAdapter(IsarSettings settings) {
    return SettingsDTO(
      enableChaptersBookmarksCount: settings.enableChaptersBookmarksCount,
      enableChaptersLikesCount: settings.enableChaptersLikesCount,
      enableChaptersViewsCount: settings.enableChaptersViewsCount,
      enableTreesBookmarksCount: settings.enableTreesBookmarksCount,
      enableTreesLikesCount: settings.enableTreesLikesCount,
      enableTreesViewsCount: settings.enableTreesViewsCount,
      uid: settings.uid,
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
        enableChaptersBookmarksCount: enableChaptersBookmarksCount,
        enableChaptersLikesCount: enableChaptersLikesCount,
        enableChaptersViewsCount: enableChaptersViewsCount,
        enableTreesBookmarksCount: enableTreesBookmarksCount,
        enableTreesLikesCount: enableTreesLikesCount,
        enableTreesViewsCount: enableTreesViewsCount,
      );

  /// @nodoc
  IsarSettings toAdapter() => IsarSettings(
        enableChaptersBookmarksCount: enableChaptersBookmarksCount,
        enableChaptersLikesCount: enableChaptersLikesCount,
        enableChaptersViewsCount: enableChaptersViewsCount,
        enableTreesBookmarksCount: enableTreesBookmarksCount,
        enableTreesLikesCount: enableTreesLikesCount,
        enableTreesViewsCount: enableTreesViewsCount,
        uid: uid ?? UniqueID().getOrCrash(),
      );
}

/// @nodoc
extension SettingsMapX on Map {
  /// @nodoc
  Settings toDomain() => Settings(
        enableChaptersBookmarksCount:
            this['enableChaptersBookmarksCount'] as bool,
        enableChaptersLikesCount: this['enableChaptersLikesCount'] as bool,
        enableChaptersViewsCount: this['enableChaptersViewsCount'] as bool,
        enableTreesBookmarksCount: this['enableTreesBookmarksCount'] as bool,
        enableTreesLikesCount: this['enableTreesLikesCount'] as bool,
        enableTreesViewsCount: this['enableTreesViewsCount'] as bool,
      );
}
