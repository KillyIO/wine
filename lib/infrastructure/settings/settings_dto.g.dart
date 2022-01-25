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
      enableTreesBookmarksCount: json['enableTreesBookmarksCount'] as bool?,
      enableTreesLikesCount: json['enableTreesLikesCount'] as bool?,
      enableTreesViewsCount: json['enableTreesViewsCount'] as bool?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$$_SettingsDTOToJson(_$_SettingsDTO instance) =>
    <String, dynamic>{
      'enableChaptersBookmarksCount': instance.enableChaptersBookmarksCount,
      'enableChaptersLikesCount': instance.enableChaptersLikesCount,
      'enableChaptersViewsCount': instance.enableChaptersViewsCount,
      'enableTreesBookmarksCount': instance.enableTreesBookmarksCount,
      'enableTreesLikesCount': instance.enableTreesLikesCount,
      'enableTreesViewsCount': instance.enableTreesViewsCount,
      'uid': instance.uid,
    };
