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
    required CoverURL coverURL,
    required Genre genre,
    required Genre genreOptional,
    required bool isNSFW,
    required Language language,
    required Subtitle subtitle,
    required Summary summary,
    required Title title,
    required UniqueID uid,
  }) = _Series;

  /// @nodoc
  factory Series.empty() => Series(
        authorUID: UniqueID(),
        coverURL: CoverURL(''),
        genre: Genre(''),
        genreOptional: Genre('', isOptional: true),
        isNSFW: false,
        language: Language(''),
        subtitle: Subtitle(''),
        summary: Summary(''),
        title: Title(''),
        uid: UniqueID(),
      );
}
