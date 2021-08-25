import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/infrastructure/settings/hive_settings.dart';

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
    required bool? enableSeriesBookmarksCount,
    required bool? enableSeriesLikesCount,
    required bool? enableSeriesViewsCount,
  }) = _SettingsDTO;

  /// @nodoc
  factory SettingsDTO.fromDomain(Settings settings) {
    return SettingsDTO(
      enableChaptersBookmarksCount: settings.enableChaptersBookmarksCount,
      enableChaptersLikesCount: settings.enableChaptersLikesCount,
      enableChaptersViewsCount: settings.enableChaptersViewsCount,
      enableSeriesBookmarksCount: settings.enableSeriesBookmarksCount,
      enableSeriesLikesCount: settings.enableSeriesLikesCount,
      enableSeriesViewsCount: settings.enableSeriesViewsCount,
    );
  }

  /// @nodoc
  factory SettingsDTO.fromAdapter(HiveSettings settings) {
    return SettingsDTO(
      enableChaptersBookmarksCount: settings.enableChaptersBookmarksCount,
      enableChaptersLikesCount: settings.enableChaptersLikesCount,
      enableChaptersViewsCount: settings.enableChaptersViewsCount,
      enableSeriesBookmarksCount: settings.enableSeriesBookmarksCount,
      enableSeriesLikesCount: settings.enableSeriesLikesCount,
      enableSeriesViewsCount: settings.enableSeriesViewsCount,
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
        enableSeriesBookmarksCount: enableSeriesBookmarksCount,
        enableSeriesLikesCount: enableSeriesLikesCount,
        enableSeriesViewsCount: enableSeriesViewsCount,
      );

  /// @nodoc
  HiveSettings toAdapter() => HiveSettings(
        enableChaptersBookmarksCount: enableChaptersBookmarksCount,
        enableChaptersLikesCount: enableChaptersLikesCount,
        enableChaptersViewsCount: enableChaptersViewsCount,
        enableSeriesBookmarksCount: enableSeriesBookmarksCount,
        enableSeriesLikesCount: enableSeriesLikesCount,
        enableSeriesViewsCount: enableSeriesViewsCount,
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
        enableSeriesBookmarksCount: this['enableSeriesBookmarksCount'] as bool,
        enableSeriesLikesCount: this['enableSeriesLikesCount'] as bool,
        enableSeriesViewsCount: this['enableSeriesViewsCount'] as bool,
      );
}
