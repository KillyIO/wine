// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'branch_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BranchDTOImpl _$$BranchDTOImplFromJson(Map<String, dynamic> json) =>
    _$BranchDTOImpl(
      authorUID: json['authorUID'] as String,
      bookmarksCount: json['bookmarksCount'] as int,
      coverURL: json['coverURL'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      index: json['index'] as int,
      isNSFW: json['isNSFW'] as bool,
      isPublished: json['isPublished'] as bool,
      language: json['language'] as String,
      leaf: json['leaf'] as String,
      licence: json['licence'] as String,
      likesCount: json['likesCount'] as int,
      previousBranchUID: json['previousBranchUID'] as String?,
      title: json['title'] as String,
      treeUID: json['treeUID'] as String,
      uid: json['uid'] as String,
      updatedAt: const ServerTimestampConverter()
          .fromJson(json['updatedAt'] as Object),
      viewsCount: json['viewsCount'] as int,
    );

Map<String, dynamic> _$$BranchDTOImplToJson(_$BranchDTOImpl instance) =>
    <String, dynamic>{
      'authorUID': instance.authorUID,
      'bookmarksCount': instance.bookmarksCount,
      'coverURL': instance.coverURL,
      'genres': instance.genres,
      'index': instance.index,
      'isNSFW': instance.isNSFW,
      'isPublished': instance.isPublished,
      'language': instance.language,
      'leaf': instance.leaf,
      'licence': instance.licence,
      'likesCount': instance.likesCount,
      'previousBranchUID': instance.previousBranchUID,
      'title': instance.title,
      'treeUID': instance.treeUID,
      'uid': instance.uid,
      'updatedAt': const ServerTimestampConverter().toJson(instance.updatedAt),
      'viewsCount': instance.viewsCount,
    };
