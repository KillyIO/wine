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
  Future<Result<Branch, BranchFailure>> loadBranchByID(UniqueID uid) async {
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
  Future<Result<List<Branch>, BranchFailure>> loadBranchesByUserID(
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
