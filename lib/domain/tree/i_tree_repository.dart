import 'dart:io';

import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/domain/tree/tree_failure.dart';

abstract class ITreeRepository {
  Future<Result<Tree, TreeFailure>> createTree(Tree tree);

  Future<Result<Unit, TreeFailure>> deleteTree(UniqueID uid);

  Future<Result<bool, TreeFailure>> loadBookmarkStatus(
    UniqueID userUID,
    UniqueID treeUID,
  );

  Future<Result<bool, TreeFailure>> loadLikeStatus(
    UniqueID userUID,
    UniqueID treeUID,
  );

  Future<Result<List<Tree>, TreeFailure>> loadTopTrees(
    Map<String, dynamic> filters, {
    UniqueID? lastTreeUID,
  });

  Future<Result<Tree, TreeFailure>> loadTreeByUID(UniqueID uid);

  Future<Result<List<Tree>, TreeFailure>> loadTreesByUserUID(
    UniqueID uid, {
    UniqueID? lastTreeUID,
  });

  Future<Result<Tree, TreeFailure>> updateTree(Tree tree);

  Future<Result<Unit, TreeFailure>> updateTreeBookmarks(
    UniqueID userUID,
    UniqueID treeUID, {
    required bool isBookmarked,
  });

  Future<Result<Unit, TreeFailure>> updateTreeLikes(
    UniqueID userUID,
    UniqueID treeUID, {
    required bool isLiked,
  });

  Future<Result<bool, TreeFailure>> updateTreeViews(
    UniqueID userUID,
    UniqueID treeUID,
  );

  Future<Result<String, TreeFailure>> uploadCover(File cover);
}
