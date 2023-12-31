// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tree_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TreeDTOImpl _$$TreeDTOImplFromJson(Map<String, dynamic> json) =>
    _$TreeDTOImpl(
      authorUID: json['authorUID'] as String,
      bookmarksCount: json['bookmarksCount'] as int,
      coverURL: json['coverURL'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      isNSFW: json['isNSFW'] as bool,
      isPublished: json['isPublished'] as bool,
      language: json['language'] as String,
      likesCount: json['likesCount'] as int,
      synopsis: json['synopsis'] as String,
      title: json['title'] as String,
      uid: json['uid'] as String,
      updatedAt: const ServerTimestampConverter()
          .fromJson(json['updatedAt'] as Object),
      viewsCount: json['viewsCount'] as int,
      subtitle: json['subtitle'] as String?,
    );

Map<String, dynamic> _$$TreeDTOImplToJson(_$TreeDTOImpl instance) =>
    <String, dynamic>{
      'authorUID': instance.authorUID,
      'bookmarksCount': instance.bookmarksCount,
      'coverURL': instance.coverURL,
      'genres': instance.genres,
      'isNSFW': instance.isNSFW,
      'isPublished': instance.isPublished,
      'language': instance.language,
      'likesCount': instance.likesCount,
      'synopsis': instance.synopsis,
      'title': instance.title,
      'uid': instance.uid,
      'updatedAt': const ServerTimestampConverter().toJson(instance.updatedAt),
      'viewsCount': instance.viewsCount,
      'subtitle': instance.subtitle,
    };
