import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/core/cover_url.domain.dart';

part 'default_cover.domain.freezed.dart';

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
