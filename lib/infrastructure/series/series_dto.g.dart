// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeriesDTO _$_$_SeriesDTOFromJson(Map<String, dynamic> json) {
  return _$_SeriesDTO(
    authorUID: json['authorUID'] as String,
    coverURL: json['coverURL'] as String,
    genre: json['genre'] as String,
    genreOptional: json['genreOptional'] as String,
    isNSFW: json['isNSFW'] as bool,
    language: json['language'] as String,
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
    subtitle: json['subtitle'] as String,
    summary: json['summary'] as String,
    title: json['title'] as String,
  );
}

Map<String, dynamic> _$_$_SeriesDTOToJson(_$_SeriesDTO instance) =>
    <String, dynamic>{
      'authorUID': instance.authorUID,
      'coverURL': instance.coverURL,
      'genre': instance.genre,
      'genreOptional': instance.genreOptional,
      'isNSFW': instance.isNSFW,
      'language': instance.language,
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
      'subtitle': instance.subtitle,
      'summary': instance.summary,
      'title': instance.title,
    };
