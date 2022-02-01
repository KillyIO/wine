import 'dart:io';

import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/domain/branch/branch_failure.dart';
import 'package:wine/domain/core/unique_id.dart';

/// @nodoc
abstract class IBranchRepository {
  /// @nodoc
  Future<Result<Unit, BranchFailure>> checkBranchOneAlreadyExists(
    UniqueID treeUID,
  );

  /// @nodoc
  Future<Result<Branch, BranchFailure>> createBranch(Branch branch);

  /// @nodoc
  Future<Result<Unit, BranchFailure>> deleteBranch(UniqueID uid);

  /// @nodoc
  Future<Result<Branch, BranchFailure>> loadBranchByUID(UniqueID uid);

  /// @nodoc
  Future<Result<Branch, BranchFailure>> loadBranchByTreeUIDAndIndex(
    UniqueID treeUID,
    int index,
  );

  /// @nodoc
  Future<Result<List<Branch>, BranchFailure>> loadBranchesByUserUID(
    UniqueID uid, {
    UniqueID? lastBranchUID,
  });

  /// @nodoc
  Future<Result<List<Branch>, BranchFailure>> loadNextBranches(
    UniqueID uid, {
    UniqueID? lastBranchUID,
  });

  /// @nodoc
  Future<Result<Branch, BranchFailure>> updateBranch(Branch branch);

  /// @nodoc
  Future<Result<Unit, BranchFailure>> updateBranchBookmarks(
    UniqueID userUID,
    UniqueID branchUID, {
    required bool isBookmarked,
  });

  /// @nodoc
  Future<Result<Unit, BranchFailure>> updateBranchLikes(
    UniqueID userUID,
    UniqueID branchUID, {
    required bool isLiked,
  });

  /// @nodoc
  Future<Result<bool, BranchFailure>> updateBranchViews(
    UniqueID userUID,
    UniqueID branchUID,
  );

  /// @nodoc
  Future<Result<String, BranchFailure>> uploadCover(File cover);
}
