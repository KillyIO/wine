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
class SeriesDTO with _$SeriesDTO {
  /// @nodoc
  factory SeriesDTO({
    required String authorUID,
    required int bookmarksCount,
    required String coverURL,
    required List<String> genres,
    required bool isNSFW,
    required bool isPublished,
    required String language,
    required int likesCount,
    String? subtitle,
    required String summary,
    required String title,
    required String uid,
    @ServerTimestampConverter() required FieldValue updatedAt,
    required int viewsCount,
  }) = _SeriesDTO;

  /// @nodoc
  factory SeriesDTO.fromDomain(Series series) {
    return SeriesDTO(
      authorUID: series.authorUID.getOrCrash(),
      bookmarksCount: series.bookmarksCount,
      coverURL: series.coverURL.getOrCrash(),
      genres: series.genres.map((g) => g.getOrCrash()).toList(),
      isNSFW: series.isNSFW,
      isPublished: series.isPublished,
      language: series.language.getOrCrash(),
      likesCount: series.likesCount,
      subtitle: series.subtitle?.getOrCrash(),
      summary: series.summary.getOrCrash(),
      title: series.title.getOrCrash(),
      uid: series.uid.getOrCrash(),
      updatedAt: FieldValue.serverTimestamp(),
      viewsCount: series.viewsCount,
    );
  }

  /// @nodoc
  factory SeriesDTO.fromJson(Map<String, dynamic> json) =>
      _$SeriesDTOFromJson(json);

  /// @nodoc
  factory SeriesDTO.fromFirestore(DocumentSnapshot doc) {
    return SeriesDTO.fromJson(doc.data()! as Map<String, dynamic>);
  }
}

/// @nodoc
extension SeriesDTOX on SeriesDTO {
  /// @nodoc
  Series toDomain() => Series(
        authorUID: UniqueID.fromUniqueString(authorUID),
        bookmarksCount: bookmarksCount,
        coverURL: CoverURL(coverURL),
        genres: genres.map(Genre.new).toList(),
        isNSFW: isNSFW,
        isPublished: isPublished,
        language: Language(language),
        likesCount: likesCount,
        subtitle: Subtitle(subtitle ?? ''),
        summary: Summary(summary),
        title: Title(title),
        uid: UniqueID.fromUniqueString(uid),
        viewsCount: viewsCount,
      );

  /// @nodoc
  Map<String, dynamic> toMap() => <String, dynamic>{
        'authorUID': authorUID,
        'bookmarksCount': bookmarksCount,
        'coverURL': coverURL,
        'genres': genres,
        'isNSFW': isNSFW,
        'isPublished': isPublished,
        'language': language,
        'likesCount': likesCount,
        'subtitle': subtitle,
        'summary': summary,
        'title': title,
        'uid': uid,
        'viewsCount': viewsCount,
      };
}

/// @nodoc
extension SeriesMapX on Map {
  /// @nodoc
  Series toDomain() => Series(
        authorUID: UniqueID.fromUniqueString(this['authorUID'] as String),
        bookmarksCount: this['bookmarksCount'] as int,
        coverURL: CoverURL(this['coverURL'] as String),
        genres: (this['genres'] as List<String>).map(Genre.new).toList(),
        isNSFW: this['isNSFW'] as bool,
        isPublished: this['isPublished'] as bool,
        language: Language(this['language'] as String),
        likesCount: this['likesCount'] as int,
        subtitle: Subtitle(this['subtitle'] as String),
        summary: Summary(this['summary'] as String),
        title: Title(this['title'] as String),
        uid: UniqueID.fromUniqueString(this['uid'] as String),
        viewsCount: this['viewsCount'] as int,
      );
}
