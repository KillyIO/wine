import 'dart:io';

import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/domain/branch/branch_failure.dart';
import 'package:wine/domain/core/unique_id.dart';

abstract class IBranchRepository {
  Future<Result<Unit, BranchFailure>> checkBranchOneAlreadyExists(
    UniqueID treeUID,
  );

  Future<Result<Branch, BranchFailure>> createBranch(Branch branch);

  Future<Result<Unit, BranchFailure>> deleteBranch(UniqueID uid);

  Future<Result<bool, BranchFailure>> loadBookmarkStatus(
    UniqueID userUID,
    UniqueID branchUID,
  );

  Future<Result<Branch, BranchFailure>> loadBranchByUID(UniqueID uid);

  Future<Result<Branch, BranchFailure>> loadBranchByTreeUIDAndIndex(
    UniqueID treeUID,
    int index,
  );

  Future<Result<List<Branch>, BranchFailure>> loadBranchesByUserUID(
    UniqueID uid, {
    UniqueID? lastBranchUID,
  });

  Future<Result<bool, BranchFailure>> loadLikeStatus(
    UniqueID userUID,
    UniqueID branchUID,
  );

  Future<Result<List<Branch>, BranchFailure>> loadNextBranches(
    UniqueID previousBranchUID, {
    UniqueID? lastBranchUID,
  });

  Future<Result<List<Branch>, BranchFailure>> loadNextBranchesByAuthorUID(
    UniqueID authorUID,
    UniqueID previousBranchUID, {
    UniqueID? lastBranchUID,
    bool sameAuthor = true,
  });

  Future<Result<Branch, BranchFailure>> updateBranch(Branch branch);

  Future<Result<Unit, BranchFailure>> updateBranchBookmarks(
    UniqueID userUID,
    UniqueID branchUID, {
    required bool isBookmarked,
  });

  Future<Result<Unit, BranchFailure>> updateBranchLikes(
    UniqueID userUID,
    UniqueID branchUID, {
    required bool isLiked,
  });

  Future<Result<bool, BranchFailure>> updateBranchViews(
    UniqueID userUID,
    UniqueID branchUID,
  );

  Future<Result<String, BranchFailure>> uploadCover(File cover);
}
