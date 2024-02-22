import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_failure.freezed.dart';

@freezed
class BranchFailure with _$BranchFailure {
  const factory BranchFailure.branchNotFound() = BranchNotFound;

  const factory BranchFailure.branchOneAlreadyExists() = BranchOneAlreadyExists;

  const factory BranchFailure.coverNotUploaded() = CoverNotUploaded;

  const factory BranchFailure.permissionDenied() = PermissionDenied;

  const factory BranchFailure.serverError() = ServerError;

  const factory BranchFailure.unexpected() = Unexpected;
}
