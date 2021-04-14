import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/unique_id.dart';

part 'series.freezed.dart';

/// @nodoc
@freezed
abstract class Series with _$Series {
  /// @nodoc
  factory Series({
    @required UniqueID authorUID,
    @required CoverURL coverURL,
    @required Genre genre,
    @required Genre genreOptional,
    @required bool isNSFW,
    @required Language language,
    @required Subtitle subtitle,
    @required Summary summary,
    @required Title title,
    @required UniqueID uid,
  }) = _Series;

  /// @nodoc
  factory Series.empty() => Series(
        isNSFW: false,
        uid: UniqueID(),
      );
}
