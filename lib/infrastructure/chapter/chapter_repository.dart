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
  Future<Result<Unit, ChapterFailure>> deleteChapter(UniqueID uid) {
    // TODO(SSebigo): implement deleteChapter
    throw UnimplementedError();
  }

  @override
  Future<Result<Chapter, ChapterFailure>> loadChapterByID(UniqueID uid) {
    // TODO(SSebigo): implement loadChapterByID
    throw UnimplementedError();
  }

  @override
  Future<Result<Chapter, ChapterFailure>> loadChapterBySeriesIDAndIndex(
    UniqueID seriesID,
    int index,
  ) async {
    try {
      final querySnapshot = await _firestore
          .collection(chaptersPath)
          .where('seriesID', isEqualTo: seriesID)
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
  Future<Result<List<Chapter>, ChapterFailure>> loadChaptersByUserID(
    UniqueID uid, {
    UniqueID? lastChapterID,
  }) {
    // TODO(SSebigo): implement loadChaptersByUserID
    throw UnimplementedError();
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
