// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeriesDTO _$_$_SeriesDTOFromJson(Map<String, dynamic> json) {
  return _$_SeriesDTO(
    authorUID: json['authorUID'] as String,
    bookmarksCount: json['bookmarksCount'] as int,
    coverURL: json['coverURL'] as String,
    genre: (json['genre'] as List<dynamic>).map((e) => e as String).toList(),
    isNSFW: json['isNSFW'] as bool,
    isPublished: json['isPublished'] as bool,
    language: json['language'] as String,
    likesCount: json['likesCount'] as int,
    serverTimeStamp: const ServerTimestampConverter()
        .fromJson(json['serverTimeStamp'] as Object),
    subtitle: json['subtitle'] as String?,
    summary: json['summary'] as String,
    title: json['title'] as String,
    uid: json['uid'] as String,
    viewsCount: json['viewsCount'] as int,
  );
}

Map<String, dynamic> _$_$_SeriesDTOToJson(_$_SeriesDTO instance) =>
    <String, dynamic>{
      'authorUID': instance.authorUID,
      'bookmarksCount': instance.bookmarksCount,
      'coverURL': instance.coverURL,
      'genre': instance.genre,
      'isNSFW': instance.isNSFW,
      'isPublished': instance.isPublished,
      'language': instance.language,
      'likesCount': instance.likesCount,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
      'subtitle': instance.subtitle,
      'summary': instance.summary,
      'title': instance.title,
      'uid': instance.uid,
      'viewsCount': instance.viewsCount,
    };
