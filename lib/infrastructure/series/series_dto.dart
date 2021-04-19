import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/series/subtitle.dart';
import 'package:wine/domain/series/summary.dart';
import 'package:wine/infrastructure/core/converter.dart';

part 'series_dto.freezed.dart';
part 'series_dto.g.dart';

/// @nodoc
@freezed
abstract class SeriesDTO with _$SeriesDTO {
  /// @nodoc
  factory SeriesDTO({
    @required String authorUID,
    @required String coverURL,
    @required String genre,
    String genreOptional,
    @required bool isNSFW,
    @required String language,
    @required @ServerTimestampConverter() FieldValue serverTimeStamp,
    String subtitle,
    @required String summary,
    @required String title,
    @JsonKey(ignore: true) String uid,
  }) = _SeriesDTO;

  /// @nodoc
  factory SeriesDTO.fromJson(Map<String, dynamic> json) =>
      _$SeriesDTOFromJson(json);

  /// @nodoc
  factory SeriesDTO.fromFirestore(DocumentSnapshot doc) {
    return SeriesDTO.fromJson(doc.data()).copyWith(uid: doc.id);
  }
}

/// @nodoc
extension SeriesDTOX on SeriesDTO {
  /// @nodoc
  Series toDomain() => Series(
        authorUID: UniqueID.fromUniqueString(authorUID),
        coverURL: CoverURL(coverURL),
        genre: Genre(genre),
        genreOptional: Genre(genreOptional, isOptional: true),
        isNSFW: isNSFW,
        language: Language(language),
        subtitle: Subtitle(subtitle),
        summary: Summary(summary),
        title: Title(title),
        uid: UniqueID.fromUniqueString(uid),
      );

  /// @nodoc
  Map<String, dynamic> toMap() => <String, dynamic>{
        'authorUID': authorUID,
        'coverURL': coverURL,
        'genre': genre,
        'genreOptional': genreOptional,
        'isNSFW': isNSFW,
        'language': language,
        'subtitle': subtitle,
        'summary': summary,
        'title': title,
        'uid': uid,
      };
}

/// @nodoc
extension SeriesMapX on Map {
  /// @nodoc
  Series toDomain() => Series(
        authorUID: UniqueID.fromUniqueString(this['authorUID']),
        coverURL: CoverURL(this['coverURL']),
        genre: Genre(this['genre']),
        genreOptional: Genre(this['genreOptional'], isOptional: true),
        isNSFW: this['isNSFW'],
        language: Language(this['language']),
        subtitle: Subtitle(this['subtitle']),
        summary: Summary(this['summary']),
        title: Title(this['title']),
        uid: UniqueID.fromUniqueString(this['uid']),
      );
}
