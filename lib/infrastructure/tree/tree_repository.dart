import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:path/path.dart' as p;
import 'package:string_validator/string_validator.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/tree/i_tree_repository.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/domain/tree/tree_failure.dart';
import 'package:wine/infrastructure/tree/tree_dto.dart';
import 'package:wine/utils/constants/paths/storage.dart';
import 'package:wine/utils/constants/paths/tree.dart';

@LazySingleton(
  as: ITreeRepository,
  env: [Environment.dev, Environment.prod],
)
class TreeRepository implements ITreeRepository {
  TreeRepository(this._firestore, this._firebaseStorage);

  final FirebaseFirestore _firestore;

  final FirebaseStorage _firebaseStorage;

  @override
  Future<Result<Tree, TreeFailure>> createTree(Tree tree) async {
    var tmpTree = tree;

    try {
      final coverURL = tmpTree.coverURL.getOrCrash();

      if (!isURL(coverURL)) {
        (await uploadCover(File(coverURL))).match(
          (success) {
            tmpTree = tmpTree.copyWith(coverURL: CoverURL(success));
          },
          (_) {},
        );
      }

      await _firestore
          .collection(treesPath)
          .doc(tmpTree.uid.getOrCrash())
          .set(TreeDTO.fromDomain(tmpTree).toJson());

      return Ok(tmpTree);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(TreeFailure.permissionDenied());
      }
      return const Err(TreeFailure.serverError());
    } catch (_) {
      return const Err(TreeFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, TreeFailure>> deleteTree(UniqueID uid) async {
    try {
      await _firestore.collection(treesPath).doc(uid.getOrCrash()).delete();

      return const Ok(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(TreeFailure.permissionDenied());
      }
      return const Err(TreeFailure.serverError());
    } catch (_) {
      return const Err(TreeFailure.unexpected());
    }
  }

  @override
  Future<Result<bool, TreeFailure>> loadBookmarkStatus(
    UniqueID userUID,
    UniqueID treeUID,
  ) async {
    try {
      final documentSnapshot = await _firestore
          .collection(treesBookmarksPath)
          .where('treeUID', isEqualTo: treeUID.getOrCrash())
          .where('userUID', isEqualTo: userUID.getOrCrash())
          .get();

      if (documentSnapshot.docs.isEmpty) {
        return const Ok(false);
      }

      final data = documentSnapshot.docs.firstOrNull?.data();
      if (data != null) {
        final isBookmarked = data['bookmarked'] as bool;

        return Ok(isBookmarked);
      }
      return const Ok(false);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(TreeFailure.permissionDenied());
      }
      return const Err(TreeFailure.serverError());
    } catch (_) {
      return const Err(TreeFailure.unexpected());
    }
  }

  @override
  Future<Result<bool, TreeFailure>> loadLikeStatus(
    UniqueID userUID,
    UniqueID treeUID,
  ) async {
    try {
      final documentSnapshot = await _firestore
          .collection(treesLikesPath)
          .where('treeUID', isEqualTo: treeUID.getOrCrash())
          .where('userUID', isEqualTo: userUID.getOrCrash())
          .get();

      if (documentSnapshot.docs.isEmpty) {
        return const Ok(false);
      }

      final data = documentSnapshot.docs.firstOrNull?.data();
      if (data != null) {
        final isLiked = data['liked'] as bool;

        return Ok(isLiked);
      }
      return const Ok(false);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(TreeFailure.permissionDenied());
      }
      return const Err(TreeFailure.serverError());
    } catch (_) {
      return const Err(TreeFailure.unexpected());
    }
  }

  @override
  Future<Result<List<Tree>, TreeFailure>> loadTopTrees(
    Map<String, dynamic> filters, {
    UniqueID? lastTreeUID,
  }) async {
    try {
      final treesCollection = _firestore.collection(treesPath);

      Query? query;
      if (lastTreeUID != null) {
        final lastDocument =
            await treesCollection.doc(lastTreeUID.getOrCrash()).get();

        query = treesCollection
            .startAfterDocument(lastDocument)
            .where('isPublished', isEqualTo: true);
      } else {
        query = treesCollection.where('isPublished', isEqualTo: true);
      }

      query = query.where('language', isEqualTo: filters['language']);

      if ((filters['genre'] as String).isNotEmpty) {
        query = query.where('genre', arrayContains: filters['genre']);
      }

      final timestamp =
          Timestamp.fromMillisecondsSinceEpoch(filters['time'] as int);

      final snapshot = await query
          .where('updatedAt', isGreaterThanOrEqualTo: timestamp)
          .orderBy('updatedAt', descending: true)
          .orderBy('likesCount', descending: true)
          .limit(20)
          .withConverter<Tree>(
            fromFirestore: (snapshot, _) {
              if (snapshot.exists) {
                return TreeDTO.fromJson(snapshot.data()!).toDomain();
              }
              return Tree.empty();
            },
            toFirestore: (value, _) => TreeDTO.fromDomain(value).toJson(),
          )
          .get();

      final trees = <Tree>[];
      for (final doc in snapshot.docs) {
        trees.add(doc.data());
      }
      return Ok(trees);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(TreeFailure.permissionDenied());
      }
      return const Err(TreeFailure.serverError());
    } catch (_) {
      return const Err(TreeFailure.unexpected());
    }
  }

  @override
  Future<Result<Tree, TreeFailure>> loadTreeByUID(UniqueID uid) async {
    try {
      final snapshot =
          await _firestore.collection(treesPath).doc(uid.getOrCrash()).get();

      if (snapshot.exists) {
        final tree = TreeDTO.fromJson(snapshot.data()!).toDomain();
        return Ok(tree);
      }
      return const Err(TreeFailure.treeNotFound());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(TreeFailure.permissionDenied());
      }
      return const Err(TreeFailure.serverError());
    } catch (_) {
      return const Err(TreeFailure.unexpected());
    }
  }

  @override
  Future<Result<List<Tree>, TreeFailure>> loadTreesByUserUID(
    UniqueID uid, {
    UniqueID? lastTreeUID,
  }) async {
    try {
      final treeCollection = _firestore.collection(treesPath);

      Query? query;
      if (lastTreeUID != null) {
        final lastDocument =
            await treeCollection.doc(lastTreeUID.getOrCrash()).get();

        query = treeCollection
            .startAfterDocument(lastDocument)
            .where('authorUID', isEqualTo: uid.getOrCrash());
      } else {
        query = treeCollection.where('authorUID', isEqualTo: uid.getOrCrash());
      }

      final snapshot = await query
          .orderBy('updatedAt', descending: true)
          .limit(20)
          .withConverter<Tree>(
            fromFirestore: (snapshot, _) {
              if (snapshot.exists) {
                return TreeDTO.fromJson(snapshot.data()!).toDomain();
              }
              return Tree.empty();
            },
            toFirestore: (value, _) => TreeDTO.fromDomain(value).toJson(),
          )
          .get();

      final trees = <Tree>[];
      for (final doc in snapshot.docs) {
        trees.add(doc.data());
      }
      return Ok(trees);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(TreeFailure.permissionDenied());
      }
      return const Err(TreeFailure.serverError());
    } catch (_) {
      return const Err(TreeFailure.unexpected());
    }
  }

  @override
  Future<Result<Tree, TreeFailure>> updateTree(Tree tree) async {
    var tmpTree = tree;

    try {
      final coverURL = tmpTree.coverURL.getOrCrash();

      if (!isURL(coverURL)) {
        (await uploadCover(File(coverURL))).match(
          (success) {
            tmpTree = tmpTree.copyWith(coverURL: CoverURL(success));
          },
          (_) {},
        );
      }

      await _firestore
          .collection(treesPath)
          .doc(tmpTree.uid.getOrCrash())
          .update(TreeDTO.fromDomain(tmpTree).toJson());

      return Ok(tmpTree);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(TreeFailure.permissionDenied());
      }
      return const Err(TreeFailure.serverError());
    } catch (_) {
      return const Err(TreeFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, TreeFailure>> updateTreeBookmarks(
    UniqueID userUID,
    UniqueID treeUID, {
    required bool isBookmarked,
  }) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final treeBookmarksQuery = await _firestore
            .collection(treesBookmarksPath)
            .where('treeUID', isEqualTo: treeUID.getOrCrash())
            .where('userUID', isEqualTo: userUID.getOrCrash())
            .get();

        final dbIsBookmarked = treeBookmarksQuery.docs.firstOrNull
                ?.data()['bookmarked'] as bool? ??
            false;

        if (isBookmarked != dbIsBookmarked) {
          final treeReference =
              _firestore.collection(treesPath).doc(treeUID.getOrCrash());

          final srSnapshot = await transaction.get(treeReference);
          final bookmarksCount = srSnapshot.data()?['bookmarksCount'] as int;

          transaction
            ..set(
              treeBookmarksQuery.docs.firstOrNull?.reference ??
                  _firestore.collection(treesViewsPath).doc(),
              <String, dynamic>{
                'treeUID': treeUID.getOrCrash(),
                'userUID': userUID.getOrCrash(),
                'bookmarked': isBookmarked,
              },
              SetOptions(merge: true),
            )
            ..update(treeReference, <String, dynamic>{
              'bookmarksCount':
                  isBookmarked ? bookmarksCount + 1 : bookmarksCount - 1,
            });
        }
      });

      return const Ok(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(TreeFailure.permissionDenied());
      }
      return const Err(TreeFailure.serverError());
    } catch (e) {
      return const Err(TreeFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, TreeFailure>> updateTreeLikes(
    UniqueID userUID,
    UniqueID treeUID, {
    required bool isLiked,
  }) async {
    try {
      await _firestore.runTransaction((transaction) async {
        final treeLikesQuery = await _firestore
            .collection(treesLikesPath)
            .where('treeUID', isEqualTo: treeUID.getOrCrash())
            .where('userUID', isEqualTo: userUID.getOrCrash())
            .get();

        final dbIsLiked =
            treeLikesQuery.docs.firstOrNull?.data()['liked'] as bool? ?? false;

        if (isLiked != dbIsLiked) {
          final treeReference =
              _firestore.collection(treesPath).doc(treeUID.getOrCrash());

          final srSnapshot = await transaction.get(treeReference);
          final likesCount = srSnapshot.data()?['likesCount'] as int;

          transaction
            ..set(
              treeLikesQuery.docs.firstOrNull?.reference ??
                  _firestore.collection(treesViewsPath).doc(),
              <String, dynamic>{
                'treeUID': treeUID.getOrCrash(),
                'userUID': userUID.getOrCrash(),
                'liked': isLiked,
              },
              SetOptions(merge: true),
            )
            ..update(treeReference, <String, dynamic>{
              'likesCount': isLiked ? likesCount + 1 : likesCount - 1,
            });
        }
      });

      return const Ok(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(TreeFailure.permissionDenied());
      }
      return const Err(TreeFailure.serverError());
    } catch (e) {
      return const Err(TreeFailure.unexpected());
    }
  }

  @override
  Future<Result<bool, TreeFailure>> updateTreeViews(
    UniqueID userUID,
    UniqueID treeUID,
  ) async {
    try {
      final result = await _firestore.runTransaction((transaction) async {
        final treeViewsQuery = await _firestore
            .collection(treesViewsPath)
            .where('treeUID', isEqualTo: treeUID.getOrCrash())
            .where('userUID', isEqualTo: userUID.getOrCrash())
            .get();

        final viewed =
            treeViewsQuery.docs.firstOrNull?.data()['viewed'] as bool? ?? false;

        if (!viewed) {
          final treeReference =
              _firestore.collection(treesPath).doc(treeUID.getOrCrash());

          final srSnapshot = await transaction.get(treeReference);
          final viewsCount = srSnapshot.data()?['viewsCount'] as int;

          transaction
            ..set(
              treeViewsQuery.docs.firstOrNull?.reference ??
                  _firestore.collection(treesViewsPath).doc(),
              <String, dynamic>{
                'treeUID': treeUID.getOrCrash(),
                'userUID': userUID.getOrCrash(),
                'viewed': true,
              },
              SetOptions(merge: true),
            )
            ..update(treeReference, <String, dynamic>{
              'viewsCount': viewsCount + 1,
            });
        }
        return !viewed;
      });

      return Ok(result);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(TreeFailure.permissionDenied());
      }
      return const Err(TreeFailure.serverError());
    } catch (e) {
      debugPrint('error: $e');
      return const Err(TreeFailure.unexpected());
    }
  }

  @override
  Future<Result<String, TreeFailure>> uploadCover(File cover) async {
    try {
      final fileName = p.basename(cover.path);
      final ref = _firebaseStorage.ref().child(
            '$treeCoversPath/${DateTime.now().millisecondsSinceEpoch}-$fileName',
          );
      final uploadTask = ref.putFile(cover);
      final state = uploadTask.snapshot.state;

      if (state == TaskState.success) {
        final url = await ref.getDownloadURL();
        return Ok(url);
      }
      return const Err(TreeFailure.coverNotUploaded());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(TreeFailure.permissionDenied());
      }
      return const Err(TreeFailure.serverError());
    } catch (_) {
      return const Err(TreeFailure.unexpected());
    }
  }
}
