import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_cover_failure.freezed.dart';

/// @nodoc
@freezed
abstract class DefaultCoverFailure with _$DefaultCoverFailure {
  /// @nodoc
  const factory DefaultCoverFailure.defaultCoverURLsNotCached() =
      DefaultCoverURLsNotCached;

  /// @nodoc
  const factory DefaultCoverFailure.defaultCoverURLsNotFetched() =
      DefaultCoverURLsNotFetched;

  /// @nodoc
  const factory DefaultCoverFailure.defaultCoverURLsNotLoaded() =
      DefaultCoverURLsNotLoaded;
}
