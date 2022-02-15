import 'package:freezed_annotation/freezed_annotation.dart';

part 'tree_failure.freezed.dart';

/// @nodoc#
@freezed
class TreeFailure with _$TreeFailure {
  /// @nodoc
  const factory TreeFailure.coverNotUploaded() = CoverNotUploaded;

  /// @nodoc
  const factory TreeFailure.permissionDenied() = PermissionDenied;

  /// @nodoc
  const factory TreeFailure.serverError() = ServerError;

  /// @nodoc
  const factory TreeFailure.treeNotFound() = TreeNotFound;

  /// @nodoc
  const factory TreeFailure.unexpected() = Unexpected;
}
