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
import 'package:wine/utils/constants/paths/branch.dart';
import 'package:wine/utils/constants/paths/storage.dart';

@LazySingleton(
  as: IBranchRepository,
  env: [Environment.dev, Environment.prod],
)
class BranchRepository implements IBranchRepository {
  BranchRepository(this._firestore, this._firebaseStorage);

  final FirebaseFirestore _firestore;

  final FirebaseStorage _firebaseStorage;

  @override
  Future<Result<Unit, BranchFailure>> checkBranchOneAlreadyExists(
    UniqueID treeUID,
  ) async {
    try {
      final snapshot = await _firestore
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

      if (snapshot.docs.isEmpty) {
        return const Ok(unit);
      }
      return const Err(BranchFailure.branchOneAlreadyExists());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
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
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, BranchFailure>> deleteBranch(UniqueID uid) async {
    try {
      await _firestore.collection(branchesPath).doc(uid.getOrCrash()).delete();

      return const Ok(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<bool, BranchFailure>> loadBookmarkStatus(
    UniqueID userUID,
    UniqueID branchUID,
  ) async {
    try {
      final documentSnapshot = await _firestore
          .collection(branchesBookmarksPath)
          .where('branchUID', isEqualTo: branchUID.getOrCrash())
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
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
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
      return const Err(BranchFailure.branchNotFound());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<Branch, BranchFailure>> loadBranchByTreeUIDAndIndex(
    UniqueID treeUID,
    int index,
  ) async {
    try {
      final snapshot = await _firestore
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

      if (snapshot.docs.isEmpty) {
        return const Err(BranchFailure.branchNotFound());
      }

      final branch = snapshot.docs.first.data();

      return Ok(branch);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
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

      final snapshot = await query
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
      for (final doc in snapshot.docs) {
        branch.add(doc.data());
      }
      return Ok(branch);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<bool, BranchFailure>> loadLikeStatus(
    UniqueID userUID,
    UniqueID branchUID,
  ) async {
    try {
      final documentSnapshot = await _firestore
          .collection(branchesLikesPath)
          .where('branchUID', isEqualTo: branchUID.getOrCrash())
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
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
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

      final snapshot = await query
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
      for (final doc in snapshot.docs) {
        branch.add(doc.data());
      }
      return Ok(branch);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<List<Branch>, BranchFailure>> loadNextBranchesByAuthorUID(
    UniqueID authorUID,
    UniqueID previousBranchUID, {
    UniqueID? lastBranchUID,
    bool sameAuthor = true,
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

      if (sameAuthor) {
        query = query
            .where('authorUID', isEqualTo: authorUID.getOrCrash())
            .where('isPublished', isEqualTo: true);
      } else {
        query = query
            .where('authorUID', isNotEqualTo: authorUID.getOrCrash())
            .where('isPublished', isEqualTo: true)
            .orderBy('authorUID', descending: true);
      }

      final snapshot = await query
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
      for (final doc in snapshot.docs) {
        branch.add(doc.data());
      }
      return Ok(branch);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
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
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
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
        final branchBookmarksQuery = await _firestore
            .collection(branchesBookmarksPath)
            .where('branchUID', isEqualTo: branchUID.getOrCrash())
            .where('userUID', isEqualTo: userUID.getOrCrash())
            .get();

        final dbIsBookmarked = branchBookmarksQuery.docs.firstOrNull
                ?.data()['bookmarked'] as bool? ??
            false;

        if (isBookmarked != dbIsBookmarked) {
          final branchReference =
              _firestore.collection(branchesPath).doc(branchUID.getOrCrash());

          final srSnapshot = await transaction.get(branchReference);
          final bookmarksCount = srSnapshot.data()?['bookmarksCount'] as int;

          transaction
            ..set(
              branchBookmarksQuery.docs.firstOrNull?.reference ??
                  _firestore.collection(branchesViewsPath).doc(),
              <String, dynamic>{
                'branchUID': branchUID.getOrCrash(),
                'userUID': userUID.getOrCrash(),
                'bookmarked': isBookmarked,
              },
              SetOptions(merge: true),
            )
            ..update(branchReference, <String, dynamic>{
              'bookmarksCount':
                  isBookmarked ? bookmarksCount + 1 : bookmarksCount - 1,
            });
        }
      });

      return const Ok(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (e) {
      return const Err(BranchFailure.unexpected());
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
        final branchLikesQuery = await _firestore
            .collection(branchesLikesPath)
            .where('branchUID', isEqualTo: branchUID.getOrCrash())
            .where('userUID', isEqualTo: userUID.getOrCrash())
            .get();

        final dbIsLiked =
            branchLikesQuery.docs.firstOrNull?.data()['liked'] as bool? ??
                false;

        if (isLiked != dbIsLiked) {
          final branchReference =
              _firestore.collection(branchesPath).doc(branchUID.getOrCrash());

          final srSnapshot = await transaction.get(branchReference);
          final likesCount = srSnapshot.data()?['likesCount'] as int;

          transaction
            ..set(
              branchLikesQuery.docs.firstOrNull?.reference ??
                  _firestore.collection(branchesViewsPath).doc(),
              <String, dynamic>{
                'branchUID': branchUID.getOrCrash(),
                'userUID': userUID.getOrCrash(),
                'liked': isLiked,
              },
              SetOptions(merge: true),
            )
            ..update(branchReference, <String, dynamic>{
              'likesCount': isLiked ? likesCount + 1 : likesCount - 1,
            });
        }
      });

      return const Ok(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (e) {
      return const Err(BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<bool, BranchFailure>> updateBranchViews(
    UniqueID userUID,
    UniqueID branchUID,
  ) async {
    try {
      final result = await _firestore.runTransaction((transaction) async {
        final treeViewsQuery = await _firestore
            .collection(branchesViewsPath)
            .where('branchUID', isEqualTo: branchUID.getOrCrash())
            .where('userUID', isEqualTo: userUID.getOrCrash())
            .get();

        final viewed =
            treeViewsQuery.docs.firstOrNull?.data()['viewed'] as bool? ?? false;

        if (!viewed) {
          final treeReference =
              _firestore.collection(branchesPath).doc(branchUID.getOrCrash());

          final srSnapshot = await transaction.get(treeReference);
          final viewsCount = srSnapshot.data()?['viewsCount'] as int;

          transaction
            ..set(
              treeViewsQuery.docs.firstOrNull?.reference ??
                  _firestore.collection(branchesViewsPath).doc(),
              <String, dynamic>{
                'branchUID': branchUID.getOrCrash(),
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
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
    }
  }

  @override
  Future<Result<String, BranchFailure>> uploadCover(File cover) async {
    try {
      final fileName = p.basename(cover.path);
      final ref = _firebaseStorage.ref().child(
            '$branchCoversPath/${DateTime.now().millisecondsSinceEpoch}-$fileName',
          );
      final uploadTask = ref.putFile(cover);
      final state = uploadTask.snapshot.state;

      if (state == TaskState.success) {
        final url = await ref.getDownloadURL();
        return Ok(url);
      }
      return const Err(BranchFailure.coverNotUploaded());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(BranchFailure.permissionDenied());
      }
      return const Err(BranchFailure.serverError());
    } catch (_) {
      return const Err(BranchFailure.unexpected());
    }
  }
}
