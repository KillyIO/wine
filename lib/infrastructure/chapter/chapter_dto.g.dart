// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChapterDTO _$$_ChapterDTOFromJson(Map<String, dynamic> json) =>
    _$_ChapterDTO(
      authorUID: json['authorUID'] as String,
      bookmarksCount: json['bookmarksCount'] as int,
      coverURL: json['coverURL'] as String,
      genres:
          (json['genres'] as List<dynamic>).map((e) => e as String).toList(),
      index: json['index'] as int,
      isNSFW: json['isNSFW'] as bool,
      isPublished: json['isPublished'] as bool,
      language: json['language'] as String,
      licence: json['licence'] as String,
      likesCount: json['likesCount'] as int,
      previousChapterUID: json['previousChapterUID'] as String?,
      seriesUID: json['seriesUID'] as String,
      story: json['story'] as String,
      title: json['title'] as String,
      uid: json['uid'] as String,
      updatedAt: const ServerTimestampConverter()
          .fromJson(json['updatedAt'] as Object),
      viewsCount: json['viewsCount'] as int,
    );

Map<String, dynamic> _$$_ChapterDTOToJson(_$_ChapterDTO instance) =>
    <String, dynamic>{
      'authorUID': instance.authorUID,
      'bookmarksCount': instance.bookmarksCount,
      'coverURL': instance.coverURL,
      'genres': instance.genres,
      'index': instance.index,
      'isNSFW': instance.isNSFW,
      'isPublished': instance.isPublished,
      'language': instance.language,
      'licence': instance.licence,
      'likesCount': instance.likesCount,
      'previousChapterUID': instance.previousChapterUID,
      'seriesUID': instance.seriesUID,
      'story': instance.story,
      'title': instance.title,
      'uid': instance.uid,
      'updatedAt': const ServerTimestampConverter().toJson(instance.updatedAt),
      'viewsCount': instance.viewsCount,
    };
