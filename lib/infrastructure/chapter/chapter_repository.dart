import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:path/path.dart' as p;
import 'package:string_validator/string_validator.dart';
import 'package:wine/domain/chapter/chapter.dart';
import 'package:wine/domain/chapter/chapter_failure.dart';
import 'package:wine/domain/chapter/i_chapter_repository.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/infrastructure/chapter/chapter_dto.dart';
import 'package:wine/utils/paths/chapter.dart';
import 'package:wine/utils/paths/storage.dart';

/// @nodoc
@LazySingleton(
  as: IChapterRepository,
  env: [Environment.dev, Environment.prod],
)
class ChapterRepository implements IChapterRepository {
  /// @nodoc
  ChapterRepository(this._firestore, this._firebaseStorage);

  final FirebaseFirestore _firestore;

  final FirebaseStorage _firebaseStorage;

  @override
  Future<Result<Unit, ChapterFailure>> checkChapterOneAlreadyExists(
    UniqueID seriesUID,
  ) async {
    try {
      final querySnapshot = await _firestore
          .collection(chaptersPath)
          .where('seriesUID', isEqualTo: seriesUID.getOrCrash())
          .where('index', isEqualTo: 1)
          .where('isPublished', isEqualTo: true)
          .withConverter<Chapter>(
            fromFirestore: (snapshot, _) {
              if (snapshot.exists) {
                return ChapterDTO.fromJson(snapshot.data()!).toDomain();
              }
              return Chapter.empty();
            },
            toFirestore: (value, _) => ChapterDTO.fromDomain(value).toJson(),
          )
          .get();

      if (querySnapshot.docs.isEmpty) {
        return Ok(unit);
      }
      return Err(const ChapterFailure.chapterOneAlreadyExists());
    } on PlatformException catch (e) {
      if (e.code == 'firebase_firestore') {
        if ((e.details as Map)['code'] == 'permission-denied') {
          return Err(const ChapterFailure.permissionDenied());
        }
      }
      return Err(const ChapterFailure.serverError());
    } catch (_) {
      return Err(const ChapterFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, ChapterFailure>> createChapter(Chapter chapter) async {
    var tmpChapter = chapter;

    try {
      final coverURL = tmpChapter.coverURL.getOrCrash();

      if (!isURL(coverURL)) {
        (await uploadCover(File(coverURL))).match(
          (success) {
            tmpChapter = tmpChapter.copyWith(coverURL: CoverURL(success));
          },
          (_) {},
        );
      }

      await _firestore
          .collection(chaptersPath)
          .doc(tmpChapter.uid.getOrCrash())
          .set(ChapterDTO.fromDomain(tmpChapter).toJson());

      return Ok(unit);
    } on PlatformException catch (e) {
      if (e.code == 'firebase_firestore') {
        if ((e.details as Map)['code'] == 'permission-denied') {
          return Err(const ChapterFailure.permissionDenied());
        }
      }
      return Err(const ChapterFailure.serverError());
    } catch (_) {
      return Err(const ChapterFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, ChapterFailure>> deleteChapter(UniqueID uid) async {
    try {
      await _firestore.collection(chaptersPath).doc(uid.getOrCrash()).delete();

      return Ok(unit);
    } on PlatformException catch (e) {
      if (e.code == 'firebase_firestore') {
        if ((e.details as Map)['code'] == 'permission-denied') {
          return Err(const ChapterFailure.permissionDenied());
        }
      }
      return Err(const ChapterFailure.serverError());
    } catch (_) {
      return Err(const ChapterFailure.unexpected());
    }
  }

  @override
  Future<Result<Chapter, ChapterFailure>> loadChapterByID(UniqueID uid) async {
    try {
      final snapshot =
          await _firestore.collection(chaptersPath).doc(uid.getOrCrash()).get();

      if (snapshot.exists) {
        final chapter = ChapterDTO.fromJson(snapshot.data()!).toDomain();
        return Ok(chapter);
      }
      return Err(const ChapterFailure.chapterNotFound());
    } on PlatformException catch (e) {
      if (e.code == 'firebase_firestore') {
        if ((e.details as Map)['code'] == 'permission-denied') {
          return Err(const ChapterFailure.permissionDenied());
        }
      }
      return Err(const ChapterFailure.serverError());
    } catch (_) {
      return Err(const ChapterFailure.unexpected());
    }
  }

  @override
  Future<Result<Chapter, ChapterFailure>> loadChapterBySeriesUIDAndIndex(
    UniqueID seriesUID,
    int index,
  ) async {
    try {
      final querySnapshot = await _firestore
          .collection(chaptersPath)
          .where('seriesUID', isEqualTo: seriesUID.getOrCrash())
          .where('index', isEqualTo: index)
          .withConverter<Chapter>(
            fromFirestore: (snapshot, _) {
              if (snapshot.exists) {
                return ChapterDTO.fromJson(snapshot.data()!).toDomain();
              }
              return Chapter.empty();
            },
            toFirestore: (value, _) => ChapterDTO.fromDomain(value).toJson(),
          )
          .get();

      if (querySnapshot.docs.isEmpty) {
        return Err(const ChapterFailure.chapterNotFound());
      }

      final chapter = querySnapshot.docs.first.data();

      return Ok(chapter);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const ChapterFailure.permissionDenied());
      }
      return Err(const ChapterFailure.serverError());
    } catch (_) {
      return Err(const ChapterFailure.unexpected());
    }
  }

  @override
  Future<Result<List<Chapter>, ChapterFailure>> loadChaptersByUserID(
    UniqueID uid, {
    UniqueID? lastChapterUID,
  }) async {
    try {
      final chaptersCollection = _firestore.collection(chaptersPath);

      Query? query;
      if (lastChapterUID != null) {
        final lastDocument =
            await chaptersCollection.doc(lastChapterUID.getOrCrash()).get();

        query = chaptersCollection
            .startAfterDocument(lastDocument)
            .where('authorUID', isEqualTo: uid.getOrCrash());
      } else {
        query =
            chaptersCollection.where('authorUID', isEqualTo: uid.getOrCrash());
      }

      final querySnapshot = await query
          .orderBy('updatedAt', descending: true)
          .limit(20)
          .withConverter<Chapter>(
            fromFirestore: (snapshot, _) {
              if (snapshot.exists) {
                return ChapterDTO.fromJson(snapshot.data()!).toDomain();
              }
              return Chapter.empty();
            },
            toFirestore: (value, _) => ChapterDTO.fromDomain(value).toJson(),
          )
          .get();

      final chapter = <Chapter>[];
      for (final doc in querySnapshot.docs) {
        chapter.add(doc.data());
      }
      return Ok(chapter);
    } on PlatformException catch (e) {
      if (e.code == 'firebase_firestore') {
        if ((e.details as Map)['code'] == 'permission-denied') {
          return Err(const ChapterFailure.permissionDenied());
        }
      }
      return Err(const ChapterFailure.serverError());
    } catch (_) {
      return Err(const ChapterFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, ChapterFailure>> updateChapter(Chapter chapter) async {
    var tmpChapter = chapter;

    try {
      final coverURL = tmpChapter.coverURL.getOrCrash();

      if (!isURL(coverURL)) {
        (await uploadCover(File(coverURL))).match(
          (success) {
            tmpChapter = tmpChapter.copyWith(coverURL: CoverURL(success));
          },
          (_) {},
        );
      }

      await _firestore
          .collection(chaptersPath)
          .doc(tmpChapter.uid.getOrCrash())
          .update(ChapterDTO.fromDomain(tmpChapter).toJson());

      return Ok(unit);
    } on PlatformException catch (e) {
      if (e.code == 'firebase_firestore') {
        if ((e.details as Map)['code'] == 'permission-denied') {
          return Err(const ChapterFailure.permissionDenied());
        }
      }
      return Err(const ChapterFailure.serverError());
    } catch (_) {
      return Err(const ChapterFailure.unexpected());
    }
  }

  @override
  Future<Result<String, ChapterFailure>> uploadCover(File cover) async {
    try {
      final fileName = p.basename(cover.path);
      final ref = _firebaseStorage.ref().child(
            '$chapterCoversPath/${DateTime.now().millisecondsSinceEpoch}-$fileName',
          );
      final uploadTask = await ref.putFile(cover);
      final state = uploadTask.state;

      if (state == TaskState.success) {
        final url = await ref.getDownloadURL();
        return Ok(url);
      }
      return Err(const ChapterFailure.coverNotUploaded());
    } on PlatformException catch (e) {
      if (e.code == 'firebase_firestore') {
        if ((e.details as Map)['code'] == 'permission-denied') {
          return Err(const ChapterFailure.permissionDenied());
        }
      }
      return Err(const ChapterFailure.serverError());
    } catch (_) {
      return Err(const ChapterFailure.unexpected());
    }
  }
}
