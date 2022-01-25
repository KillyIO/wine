import 'dart:io';

import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/domain/tree/tree_failure.dart';

/// @nodoc
abstract class ITreeRepository {
  /// @nodoc
  Future<Result<Unit, TreeFailure>> createTree(Tree tree);

  /// @nodoc
  Future<Result<Unit, TreeFailure>> deleteTree(UniqueID uid);

  /// @nodoc
  Future<Result<bool, TreeFailure>> loadBookmarkStatus(
    UniqueID userID,
    UniqueID treeUID,
  );

  /// @nodoc
  Future<Result<bool, TreeFailure>> loadLikeStatus(
    UniqueID userID,
    UniqueID treeUID,
  );

  /// @nodoc
  Future<Result<Tree, TreeFailure>> loadTreeByID(UniqueID uid);

  /// @nodoc
  Future<Result<List<Tree>, TreeFailure>> loadTreesByUserID(
    UniqueID uid, {
    UniqueID? lastTreeUID,
  });

  /// @nodoc
  Future<Result<Unit, TreeFailure>> updateTree(Tree tree);

  /// @nodoc
  Future<Result<Unit, TreeFailure>> updateTreeBookmarks(
    UniqueID userID,
    UniqueID treeUID, {
    required bool isBookmarked,
  });

  /// @nodoc
  Future<Result<Unit, TreeFailure>> updateTreeLikes(
    UniqueID userID,
    UniqueID treeUID, {
    required bool isLiked,
  });

  /// @nodoc
  Future<Result<bool, TreeFailure>> updateTreeViews(
    UniqueID userID,
    UniqueID treeUID,
  );

  /// @nodoc
  Future<Result<String, TreeFailure>> uploadCover(File cover);
}
