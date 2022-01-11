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
    required bool? enableSeriesBookmarksCount,
    required bool? enableSeriesLikesCount,
    required bool? enableSeriesViewsCount,
    String? uid,
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
  factory SettingsDTO.fromAdapter(IsarSettings settings) {
    return SettingsDTO(
      enableChaptersBookmarksCount: settings.enableChaptersBookmarksCount,
      enableChaptersLikesCount: settings.enableChaptersLikesCount,
      enableChaptersViewsCount: settings.enableChaptersViewsCount,
      enableSeriesBookmarksCount: settings.enableSeriesBookmarksCount,
      enableSeriesLikesCount: settings.enableSeriesLikesCount,
      enableSeriesViewsCount: settings.enableSeriesViewsCount,
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
        enableSeriesBookmarksCount: enableSeriesBookmarksCount,
        enableSeriesLikesCount: enableSeriesLikesCount,
        enableSeriesViewsCount: enableSeriesViewsCount,
      );

  /// @nodoc
  IsarSettings toAdapter() => IsarSettings(
        enableChaptersBookmarksCount: enableChaptersBookmarksCount,
        enableChaptersLikesCount: enableChaptersLikesCount,
        enableChaptersViewsCount: enableChaptersViewsCount,
        enableSeriesBookmarksCount: enableSeriesBookmarksCount,
        enableSeriesLikesCount: enableSeriesLikesCount,
        enableSeriesViewsCount: enableSeriesViewsCount,
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
        enableSeriesBookmarksCount: this['enableSeriesBookmarksCount'] as bool,
        enableSeriesLikesCount: this['enableSeriesLikesCount'] as bool,
        enableSeriesViewsCount: this['enableSeriesViewsCount'] as bool,
      );
}
