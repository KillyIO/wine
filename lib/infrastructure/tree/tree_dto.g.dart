// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TreeDTO _$$_TreeDTOFromJson(Map<String, dynamic> json) => _$_TreeDTO(
      authorUID: json['authorUID'] as String,
      bookmarksCount: json['bookmarksCount'] as int,
      coverURL: json['coverURL'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      isNSFW: json['isNSFW'] as bool,
      isPublished: json['isPublished'] as bool,
      language: json['language'] as String,
      likesCount: json['likesCount'] as int,
      subtitle: json['subtitle'] as String?,
      summary: json['summary'] as String,
      title: json['title'] as String,
      uid: json['uid'] as String,
      updatedAt: const ServerTimestampConverter()
          .fromJson(json['updatedAt'] as Object),
      viewsCount: json['viewsCount'] as int,
    );

Map<String, dynamic> _$$_TreeDTOToJson(_$_TreeDTO instance) =>
    <String, dynamic>{
      'authorUID': instance.authorUID,
      'bookmarksCount': instance.bookmarksCount,
      'coverURL': instance.coverURL,
      'genres': instance.genres,
      'isNSFW': instance.isNSFW,
      'isPublished': instance.isPublished,
      'language': instance.language,
      'likesCount': instance.likesCount,
      'subtitle': instance.subtitle,
      'summary': instance.summary,
      'title': instance.title,
      'uid': instance.uid,
      'updatedAt': const ServerTimestampConverter().toJson(instance.updatedAt),
      'viewsCount': instance.viewsCount,
    };
