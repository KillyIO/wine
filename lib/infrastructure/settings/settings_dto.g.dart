// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsDTO _$$_SettingsDTOFromJson(Map<String, dynamic> json) =>
    _$_SettingsDTO(
      enableBranchesBookmarksCount:
          json['enableBranchesBookmarksCount'] as bool?,
      enableBranchesLikesCount: json['enableBranchesLikesCount'] as bool?,
      enableBranchesViewsCount: json['enableBranchesViewsCount'] as bool?,
      enableTreesBookmarksCount: json['enableTreesBookmarksCount'] as bool?,
      enableTreesLikesCount: json['enableTreesLikesCount'] as bool?,
      enableTreesViewsCount: json['enableTreesViewsCount'] as bool?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$$_SettingsDTOToJson(_$_SettingsDTO instance) =>
    <String, dynamic>{
      'enableBranchesBookmarksCount': instance.enableBranchesBookmarksCount,
      'enableBranchesLikesCount': instance.enableBranchesLikesCount,
      'enableBranchesViewsCount': instance.enableBranchesViewsCount,
      'enableTreesBookmarksCount': instance.enableTreesBookmarksCount,
      'enableTreesLikesCount': instance.enableTreesLikesCount,
      'enableTreesViewsCount': instance.enableTreesViewsCount,
      'uid': instance.uid,
    };
