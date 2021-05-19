import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/subtitle.dart';
import 'package:wine/domain/series/summary.dart';

part 'series.freezed.dart';

/// @nodoc
@freezed
class Series with _$Series {
  /// @nodoc
  factory Series({
    required UniqueID authorUID,
    required int bookmarksCount,
    required CoverURL coverURL,
    required Genre genre,
    Genre? genreOptional,
    required bool isNSFW,
    required bool isPublished,
    required Language language,
    required int likesCount,
    Subtitle? subtitle,
    required Summary summary,
    required Title title,
    required UniqueID uid,
    required int viewsCount,
  }) = _Series;

  /// @nodoc
  factory Series.empty() => Series(
        authorUID: UniqueID(),
        bookmarksCount: 0,
        coverURL: CoverURL(''),
        genre: Genre(''),
        genreOptional: Genre('', isOptional: true),
        isNSFW: false,
        isPublished: false,
        language: Language(''),
        likesCount: 0,
        subtitle: Subtitle(''),
        summary: Summary(''),
        title: Title(''),
        uid: UniqueID(),
        viewsCount: 0,
      );
}
