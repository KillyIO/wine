import 'package:freezed_annotation/freezed_annotation.dart';

part 'default_covers_failure.freezed.dart';

@freezed
class DefaultCoversFailure with _$DefaultCoversFailure {
  const factory DefaultCoversFailure.defaultCoversNotCached() =
      DefaultCoversNotCached;

  const factory DefaultCoversFailure.defaultCoverNotFetched() =
      DefaultCoverNotFetched;

  const factory DefaultCoversFailure.defaultCoversNotLoaded() =
      DefaultCoversNotLoaded;

  const factory DefaultCoversFailure.permissionDenied() = PermissionDenied;

  const factory DefaultCoversFailure.serverError() = ServerError;

  const factory DefaultCoversFailure.unexpected() = Unexpected;
}
