import 'dart:io';

import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/features/tree/tree.domain.dart';
import 'package:wine/features/tree/tree_failure.domain.dart';

/// @nodoc
abstract class ITreeRepository {
  /// @nodoc
  Future<Result<Tree, TreeFailure>> createTree(Tree tree);

  /// @nodoc
  Future<Result<Unit, TreeFailure>> deleteTree(UniqueID uid);

  /// @nodoc
  Future<Result<bool, TreeFailure>> loadBookmarkStatus(
    UniqueID userUID,
    UniqueID treeUID,
  );

  /// @nodoc
  Future<Result<bool, TreeFailure>> loadLikeStatus(
    UniqueID userUID,
    UniqueID treeUID,
  );

  /// @nodoc
  Future<Result<List<Tree>, TreeFailure>> loadTopTrees(
    Map<String, dynamic> filters, {
    UniqueID? lastTreeUID,
  });

  /// @nodoc
  Future<Result<Tree, TreeFailure>> loadTreeByUID(UniqueID uid);

  /// @nodoc
  Future<Result<List<Tree>, TreeFailure>> loadTreesByUserUID(
    UniqueID uid, {
    UniqueID? lastTreeUID,
  });

  /// @nodoc
  Future<Result<Tree, TreeFailure>> updateTree(Tree tree);

  /// @nodoc
  Future<Result<Unit, TreeFailure>> updateTreeBookmarks(
    UniqueID userUID,
    UniqueID treeUID, {
    required bool isBookmarked,
  });

  /// @nodoc
  Future<Result<Unit, TreeFailure>> updateTreeLikes(
    UniqueID userUID,
    UniqueID treeUID, {
    required bool isLiked,
  });

  /// @nodoc
  Future<Result<bool, TreeFailure>> updateTreeViews(
    UniqueID userUID,
    UniqueID treeUID,
  );

  /// @nodoc
  Future<Result<String, TreeFailure>> uploadCover(File cover);
}
