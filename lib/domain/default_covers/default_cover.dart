import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/core/cover_url.dart';

part 'default_cover.freezed.dart';

/// @nodoc
@freezed
class DefaultCover with _$DefaultCover {
  /// @nodoc
  factory DefaultCover({
    required String key,
    required CoverURL url,
  }) = _DefaultCover;

  /// @nodoc
  factory DefaultCover.empty() => DefaultCover(
        key: '',
        url: CoverURL(''),
      );
}
