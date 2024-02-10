// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsDTOImpl _$$SettingsDTOImplFromJson(Map<String, dynamic> json) =>
    _$SettingsDTOImpl(
      uid: json['uid'] as String,
      enableBranchesBookmarksCount:
          json['enableBranchesBookmarksCount'] as bool?,
      enableBranchesLikesCount: json['enableBranchesLikesCount'] as bool?,
      enableBranchesViewsCount: json['enableBranchesViewsCount'] as bool?,
      enableTreesBookmarksCount: json['enableTreesBookmarksCount'] as bool?,
      enableTreesLikesCount: json['enableTreesLikesCount'] as bool?,
      enableTreesViewsCount: json['enableTreesViewsCount'] as bool?,
    );

Map<String, dynamic> _$$SettingsDTOImplToJson(_$SettingsDTOImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'enableBranchesBookmarksCount': instance.enableBranchesBookmarksCount,
      'enableBranchesLikesCount': instance.enableBranchesLikesCount,
      'enableBranchesViewsCount': instance.enableBranchesViewsCount,
      'enableTreesBookmarksCount': instance.enableTreesBookmarksCount,
      'enableTreesLikesCount': instance.enableTreesLikesCount,
      'enableTreesViewsCount': instance.enableTreesViewsCount,
    };
