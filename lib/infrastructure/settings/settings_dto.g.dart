// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsDTO _$$_SettingsDTOFromJson(Map<String, dynamic> json) =>
    _$_SettingsDTO(
      enableChaptersBookmarksCount:
          json['enableChaptersBookmarksCount'] as bool?,
      enableChaptersLikesCount: json['enableChaptersLikesCount'] as bool?,
      enableChaptersViewsCount: json['enableChaptersViewsCount'] as bool?,
      enableSeriesBookmarksCount: json['enableSeriesBookmarksCount'] as bool?,
      enableSeriesLikesCount: json['enableSeriesLikesCount'] as bool?,
      enableSeriesViewsCount: json['enableSeriesViewsCount'] as bool?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$$_SettingsDTOToJson(_$_SettingsDTO instance) =>
    <String, dynamic>{
      'enableChaptersBookmarksCount': instance.enableChaptersBookmarksCount,
      'enableChaptersLikesCount': instance.enableChaptersLikesCount,
      'enableChaptersViewsCount': instance.enableChaptersViewsCount,
      'enableSeriesBookmarksCount': instance.enableSeriesBookmarksCount,
      'enableSeriesLikesCount': instance.enableSeriesLikesCount,
      'enableSeriesViewsCount': instance.enableSeriesViewsCount,
      'uid': instance.uid,
    };
