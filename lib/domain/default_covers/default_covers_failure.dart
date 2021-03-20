import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_covers_failure.freezed.dart';

/// @nodoc
@freezed
abstract class DefaultCoversFailure with _$DefaultCoversFailure {
  /// @nodoc
  const factory DefaultCoversFailure.defaultCoverURLsNotCached() =
      DefaultCoverURLsNotCached;

  /// @nodoc
  const factory DefaultCoversFailure.defaultCoverURLsNotFetched() =
      DefaultCoverURLsNotFetched;

  /// @nodoc
  const factory DefaultCoversFailure.defaultCoverURLsNotLoaded() =
      DefaultCoverURLsNotLoaded;

  /// @nodoc
  const factory DefaultCoversFailure.serverError() = ServerError;

  /// @nodoc
  const factory DefaultCoversFailure.unexpected() = Unexpected;
}
