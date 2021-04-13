import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/unique_id.dart';

part 'series.freezed.dart';

/// @nodoc
@freezed
abstract class Series with _$Series {
  /// @nodoc
  factory Series({
    @required bool isDeleted,
    @required bool isNSFW,
    @required UniqueID uid,
  }) = _Series;

  /// @nodoc
  factory Series.empty() => Series(
        isDeleted: false,
        isNSFW: false,
        uid: UniqueID(),
      );
}
