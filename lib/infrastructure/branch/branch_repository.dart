import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:path/path.dart' as p;
import 'package:string_validator/string_validator.dart';
import 'package:wine/domain/branch/branch.dart';
import 'package:wine/domain/branch/branch_failure.dart';
import 'package:wine/domain/branch/i_branch_repository.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/infrastructure/branch/branch_dto.dart';
import 'package:wine/utils/paths/branch.dart';
import 'package:wine/utils/paths/storage.dart';

/// @nodoc
@LazySingleton(
  as: IBranchRepository,
  env: [Environment.dev, Environment.prod],
)
class BranchRepository implements IBranchRepository {
  /// @nodoc
  BranchRepository(this._firestore, this._firebaseStorage);

  final FirebaseFirestore _firestore;

  final FirebaseStorage _firebaseStorage;

  @override
  Future<Result<Unit, BranchFailure>> checkBranchOneAlreadyExists(
    UniqueID treeUID,
  ) async {
    try {
      final querySnapshot = await _firestore
          .collection(branchesPath)
          .where('treeUID', isEqualTo: treeUID.getOrCrash())
          .where('index', isEqualTo: 1)
          .where('isPublished', isEqualTo: true)
          .withConverter<Branch>(
            fromFirestore: (snapshot, _) {
              if (snapshot.exists) {
                return BranchDTO.fromJson(snapshot.data()!).toDomain();
              }
              return Branch.empty();
            },
            toFirestore: (value, _) => BranchDTO.fromDomain(value).toJson(),
          )
          .get();

      if (querySnapshot.docs.isEmpty) {
        return Ok(unit);
      }
      return Err(const BranchFailure.branchOneAlreadyExists());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (_) {
      return Err(const BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<Branch, BranchFailure>> createBranch(Branch branch) async {
    var tmpBranch = branch;

    try {
      final coverURL = tmpBranch.coverURL.getOrCrash();

      if (!isURL(coverURL)) {
        (await uploadCover(File(coverURL))).match(
          (success) {
            tmpBranch = tmpBranch.copyWith(coverURL: CoverURL(success));
          },
          (_) {},
        );
      }

      await _firestore
          .collection(branchesPath)
          .doc(tmpBranch.uid.getOrCrash())
          .set(BranchDTO.fromDomain(tmpBranch).toJson());

      return Ok(tmpBranch);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (_) {
      return Err(const BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, BranchFailure>> deleteBranch(UniqueID uid) async {
    try {
      await _firestore.collection(branchesPath).doc(uid.getOrCrash()).delete();

      return Ok(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (_) {
      return Err(const BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<Branch, BranchFailure>> loadBranchByUID(UniqueID uid) async {
    try {
      final snapshot =
          await _firestore.collection(branchesPath).doc(uid.getOrCrash()).get();

      if (snapshot.exists) {
        final branch = BranchDTO.fromJson(snapshot.data()!).toDomain();
        return Ok(branch);
      }
      return Err(const BranchFailure.branchNotFound());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (_) {
      return Err(const BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<Branch, BranchFailure>> loadBranchByTreeUIDAndIndex(
    UniqueID treeUID,
    int index,
  ) async {
    try {
      final querySnapshot = await _firestore
          .collection(branchesPath)
          .where('treeUID', isEqualTo: treeUID.getOrCrash())
          .where('index', isEqualTo: index)
          .withConverter<Branch>(
            fromFirestore: (snapshot, _) {
              if (snapshot.exists) {
                return BranchDTO.fromJson(snapshot.data()!).toDomain();
              }
              return Branch.empty();
            },
            toFirestore: (value, _) => BranchDTO.fromDomain(value).toJson(),
          )
          .get();

      if (querySnapshot.docs.isEmpty) {
        return Err(const BranchFailure.branchNotFound());
      }

      final branch = querySnapshot.docs.first.data();

      return Ok(branch);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (_) {
      return Err(const BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<List<Branch>, BranchFailure>> loadBranchesByUserUID(
    UniqueID uid, {
    UniqueID? lastBranchUID,
  }) async {
    try {
      final branchesCollection = _firestore.collection(branchesPath);

      Query? query;
      if (lastBranchUID != null) {
        final lastDocument =
            await branchesCollection.doc(lastBranchUID.getOrCrash()).get();

        query = branchesCollection
            .startAfterDocument(lastDocument)
            .where('authorUID', isEqualTo: uid.getOrCrash());
      } else {
        query =
            branchesCollection.where('authorUID', isEqualTo: uid.getOrCrash());
      }

      final querySnapshot = await query
          .orderBy('updatedAt', descending: true)
          .limit(20)
          .withConverter<Branch>(
            fromFirestore: (snapshot, _) {
              if (snapshot.exists) {
                return BranchDTO.fromJson(snapshot.data()!).toDomain();
              }
              return Branch.empty();
            },
            toFirestore: (value, _) => BranchDTO.fromDomain(value).toJson(),
          )
          .get();

      final branch = <Branch>[];
      for (final doc in querySnapshot.docs) {
        branch.add(doc.data());
      }
      return Ok(branch);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (_) {
      return Err(const BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<List<Branch>, BranchFailure>> loadNextBranches(
    UniqueID previousBranchUID, {
    UniqueID? lastBranchUID,
  }) async {
    try {
      final branchesCollection = _firestore.collection(branchesPath);

      Query? query;
      if (lastBranchUID != null) {
        final lastDocument =
            await branchesCollection.doc(lastBranchUID.getOrCrash()).get();

        query = branchesCollection.startAfterDocument(lastDocument).where(
              'previousBranchUID',
              isEqualTo: previousBranchUID.getOrCrash(),
            );
      } else {
        query = branchesCollection.where(
          'previousBranchUID',
          isEqualTo: previousBranchUID.getOrCrash(),
        );
      }

      final querySnapshot = await query
          .orderBy('updatedAt', descending: true)
          .limit(20)
          .withConverter<Branch>(
            fromFirestore: (snapshot, _) {
              if (snapshot.exists) {
                return BranchDTO.fromJson(snapshot.data()!).toDomain();
              }
              return Branch.empty();
            },
            toFirestore: (value, _) => BranchDTO.fromDomain(value).toJson(),
          )
          .get();

      final branch = <Branch>[];
      for (final doc in querySnapshot.docs) {
        branch.add(doc.data());
      }
      return Ok(branch);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (_) {
      return Err(const BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<List<Branch>, BranchFailure>> loadNextBranchesByAuthorUID(
    UniqueID authorUID,
    UniqueID previousBranchUID, {
    UniqueID? lastBranchUID,
    bool notAuthorUID = false,
  }) async {
    try {
      final branchesCollection = _firestore.collection(branchesPath);

      Query? query;
      if (lastBranchUID != null) {
        final lastDocument =
            await branchesCollection.doc(lastBranchUID.getOrCrash()).get();

        query = branchesCollection.startAfterDocument(lastDocument).where(
              'previousBranchUID',
              isEqualTo: previousBranchUID.getOrCrash(),
            );
      } else {
        query = branchesCollection.where(
          'previousBranchUID',
          isEqualTo: previousBranchUID.getOrCrash(),
        );
      }

      if (notAuthorUID) {
        query = query
            .where('authorUID', isNotEqualTo: authorUID.getOrCrash())
            .where('isPublished', isEqualTo: true)
            .orderBy('authorUID', descending: true);
      } else {
        query = query
            .where('authorUID', isEqualTo: authorUID.getOrCrash())
            .where('isPublished', isEqualTo: true);
      }

      final querySnapshot = await query
          .orderBy('updatedAt', descending: true)
          .limit(20)
          .withConverter<Branch>(
            fromFirestore: (snapshot, _) {
              if (snapshot.exists) {
                return BranchDTO.fromJson(snapshot.data()!).toDomain();
              }
              return Branch.empty();
            },
            toFirestore: (value, _) => BranchDTO.fromDomain(value).toJson(),
          )
          .get();

      final branch = <Branch>[];
      for (final doc in querySnapshot.docs) {
        branch.add(doc.data());
      }
      return Ok(branch);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (_) {
      return Err(const BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<Branch, BranchFailure>> updateBranch(Branch branch) async {
    var tmpBranch = branch;

    try {
      final coverURL = tmpBranch.coverURL.getOrCrash();

      if (!isURL(coverURL)) {
        (await uploadCover(File(coverURL))).match(
          (success) {
            tmpBranch = tmpBranch.copyWith(coverURL: CoverURL(success));
          },
          (_) {},
        );
      }

      await _firestore
          .collection(branchesPath)
          .doc(tmpBranch.uid.getOrCrash())
          .update(BranchDTO.fromDomain(tmpBranch).toJson());

      return Ok(tmpBranch);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (_) {
      return Err(const BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, BranchFailure>> updateBranchBookmarks(
    UniqueID userUID,
    UniqueID branchUID, {
    required bool isBookmarked,
  }) async {
    try {
      await _firestore.runTransaction((transaction) async {
        // Check userUID register inside tree_bookmarks collection
        final treeBookmarksReference = _firestore
            .collection(branchesBookmarksPath)
            .doc(branchUID.getOrCrash());

        final sbrSnapshot = await transaction.get(treeBookmarksReference);
        final dbIsBookmarked =
            sbrSnapshot.data()?[userUID.getOrCrash()] as bool? ?? false;

        if (isBookmarked != dbIsBookmarked) {
          // Update tree bokmarks count
          // TODO(SSebigo): make sure firebase rules
          // match to prevent fraudulent updates
          final treeReference =
              _firestore.collection(branchesPath).doc(branchUID.getOrCrash());

          final srSnapshot = await transaction.get(treeReference);
          final bookmarksCount = srSnapshot.data()?['bookmarksCount'] as int;

          transaction
            ..set(
              treeBookmarksReference,
              <String, dynamic>{
                userUID.getOrCrash(): isBookmarked,
              },
              SetOptions(merge: true),
            )
            ..update(treeReference, <String, dynamic>{
              'bookmarksCount':
                  isBookmarked ? bookmarksCount + 1 : bookmarksCount - 1,
            });
        }
      });

      return Ok(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (e) {
      return Err(const BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, BranchFailure>> updateBranchLikes(
    UniqueID userUID,
    UniqueID branchUID, {
    required bool isLiked,
  }) async {
    try {
      await _firestore.runTransaction((transaction) async {
        // Check userUID register inside tree_likes collection
        final treeLikesReference = _firestore
            .collection(branchesLikesPath)
            .doc(branchUID.getOrCrash());

        final slrSnapshot = await transaction.get(treeLikesReference);
        final dbIsLiked =
            slrSnapshot.data()?[userUID.getOrCrash()] as bool? ?? false;

        if (isLiked != dbIsLiked) {
          // Update tree likes count
          // TODO(SSebigo): make sure firebase rules
          // match to prevent fraudulent updates
          final treeReference =
              _firestore.collection(branchesPath).doc(branchUID.getOrCrash());

          final srSnapshot = await transaction.get(treeReference);
          final likesCount = srSnapshot.data()?['likesCount'] as int;

          transaction
            ..set(
              treeLikesReference,
              <String, dynamic>{
                userUID.getOrCrash(): isLiked,
              },
              SetOptions(merge: true),
            )
            ..update(treeReference, <String, dynamic>{
              'likesCount': isLiked ? likesCount + 1 : likesCount - 1,
            });
        }
      });

      return Ok(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (e) {
      return Err(const BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<bool, BranchFailure>> updateBranchViews(
    UniqueID userUID,
    UniqueID branchUID,
  ) async {
    try {
      final result = await _firestore.runTransaction((transaction) async {
        // Check userUID register inside tree_views collection
        final treeViewsReference = _firestore
            .collection(branchesViewsPath)
            .doc(branchUID.getOrCrash());

        final svrSnapshot = await transaction.get(treeViewsReference);
        final viewed =
            svrSnapshot.data()?[userUID.getOrCrash()] as bool? ?? false;

        if (!viewed) {
          // Update tree views count
          // TODO(SSebigo): make sure firebase rules
          // match to prevent fraudulent updates
          final treeReference =
              _firestore.collection(branchesPath).doc(branchUID.getOrCrash());

          final srSnapshot = await transaction.get(treeReference);
          final viewsCount = srSnapshot.data()?['viewsCount'] as int;

          transaction
            ..set(
              treeViewsReference,
              <String, dynamic>{userUID.getOrCrash(): true},
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
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (_) {
      return Err(const BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<String, BranchFailure>> uploadCover(File cover) async {
    try {
      final fileName = p.basename(cover.path);
      final ref = _firebaseStorage.ref().child(
            '$branchCoversPath/${DateTime.now().millisecondsSinceEpoch}-$fileName',
          );
      final uploadTask = await ref.putFile(cover);
      final state = uploadTask.state;

      if (state == TaskState.success) {
        final url = await ref.getDownloadURL();
        return Ok(url);
      }
      return Err(const BranchFailure.coverNotUploaded());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const BranchFailure.permissionDenied());
      }
      return Err(const BranchFailure.serverError());
    } catch (_) {
      return Err(const BranchFailure.unexpected());
    }
  }
}
