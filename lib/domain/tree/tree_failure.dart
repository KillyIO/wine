import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_failure.freezed.dart';

@freezed
class TreeFailure with _$TreeFailure {
  const factory TreeFailure.coverNotUploaded() = CoverNotUploaded;

  const factory TreeFailure.permissionDenied() = PermissionDenied;

  const factory TreeFailure.serverError() = ServerError;

  const factory TreeFailure.treeNotFound() = TreeNotFound;

  const factory TreeFailure.unexpected() = Unexpected;
}
