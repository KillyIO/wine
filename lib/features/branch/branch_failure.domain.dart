import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_failure.domain.freezed.dart';

/// @nodoc#
@freezed
class BranchFailure with _$BranchFailure {
  /// @nodoc
  const factory BranchFailure.branchNotFound() = BranchNotFound;

  /// @nodoc
  const factory BranchFailure.branchOneAlreadyExists() = BranchOneAlreadyExists;

  /// @nodoc
  const factory BranchFailure.coverNotUploaded() = CoverNotUploaded;

  /// @nodoc
  const factory BranchFailure.permissionDenied() = PermissionDenied;

  /// @nodoc
  const factory BranchFailure.serverError() = ServerError;

  /// @nodoc
  const factory BranchFailure.unexpected() = Unexpected;
}
