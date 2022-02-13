import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_covers_failure.freezed.dart';

/// @nodoc
@freezed
class DefaultCoversFailure with _$DefaultCoversFailure {
  /// @nodoc
  const factory DefaultCoversFailure.defaultCoversNotCached() =
      DefaultCoversNotCached;

  /// @nodoc
  const factory DefaultCoversFailure.defaultCoverNotFetched() =
      DefaultCoverNotFetched;

  /// @nodoc
  const factory DefaultCoversFailure.defaultCoversNotLoaded() =
      DefaultCoversNotLoaded;

  /// @nodoc
  const factory DefaultCoversFailure.permissionDenied() = PermissionDenied;

  /// @nodoc
  const factory DefaultCoversFailure.serverError() = ServerError;

  /// @nodoc
  const factory DefaultCoversFailure.unexpected() = Unexpected;
}
