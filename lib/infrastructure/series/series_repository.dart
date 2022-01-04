import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:path/path.dart' as p;
import 'package:string_validator/string_validator.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/i_series_repository.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/series/series_failure.dart';
import 'package:wine/infrastructure/series/series_dto.dart';
import 'package:wine/utils/paths/series.dart';
import 'package:wine/utils/paths/storage.dart';

/// @nodoc
@LazySingleton(
  as: ISeriesRepository,
  env: [Environment.dev, Environment.prod],
)
class SeriesRepository implements ISeriesRepository {
  /// @nodoc
  SeriesRepository(this._firestore, this._firebaseStorage);

  final FirebaseFirestore _firestore;

  final FirebaseStorage _firebaseStorage;

  @override
  Future<Result<Unit, SeriesFailure>> createSeries(Series series) async {
    var tmpSeries = series;

    try {
      final coverURL = tmpSeries.coverURL.getOrCrash();

      if (!isURL(coverURL)) {
        (await uploadCover(File(coverURL))).match(
          (success) {
            tmpSeries = tmpSeries.copyWith(coverURL: CoverURL(success));
          },
          (_) {},
        );
      }

      await _firestore
          .collection(seriesPath)
          .doc(tmpSeries.uid.getOrCrash())
          .set(SeriesDTO.fromDomain(tmpSeries).toJson());

      return Ok(unit);
    } catch (_) {
      return Err(const SeriesFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, SeriesFailure>> deleteSeries(UniqueID uid) async {
    try {
      await _firestore.collection(seriesPath).doc(uid.getOrCrash()).delete();

      return Ok(unit);
    } catch (_) {
      return Err(const SeriesFailure.unexpected());
    }
  }

  @override
  Future<Result<Series, SeriesFailure>> loadSeriesByID(UniqueID uid) async {
    final snapshot =
        await _firestore.collection(seriesPath).doc(uid.getOrCrash()).get();

    if (snapshot.exists) {
      final series = SeriesDTO.fromJson(snapshot.data()!).toDomain();
      return Ok(series);
    }
    return Err(const SeriesFailure.seriesNotFound());
  }

  @override
  Future<Result<List<Series>, SeriesFailure>> loadSeriesByUserID(
    UniqueID uid, {
    UniqueID? lastSeriesID,
  }) async {
    try {
      final seriesCollection = _firestore.collection(seriesPath);

      Query? query;
      if (lastSeriesID != null) {
        final lastDocument =
            await seriesCollection.doc(lastSeriesID.getOrCrash()).get();

        query = seriesCollection
            .startAfterDocument(lastDocument)
            .where('authorUID', isEqualTo: uid.getOrCrash());
      } else {
        query =
            seriesCollection.where('authorUID', isEqualTo: uid.getOrCrash());
      }

      final querySnapshot = await query
          .orderBy('updatedAt', descending: true)
          .limit(20)
          .withConverter<Series>(
            fromFirestore: (snapshot, _) {
              if (snapshot.exists) {
                return SeriesDTO.fromJson(snapshot.data()!).toDomain();
              }
              return Series.empty();
            },
            toFirestore: (value, _) => SeriesDTO.fromDomain(value).toJson(),
          )
          .get();

      final series = <Series>[];
      for (final doc in querySnapshot.docs) {
        series.add(doc.data());
      }
      return Ok(series);
    } catch (_) {
      return Err(const SeriesFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, SeriesFailure>> updateSeries(Series series) async {
    var tmpSeries = series;

    try {
      final coverURL = tmpSeries.coverURL.getOrCrash();

      if (!isURL(coverURL)) {
        (await uploadCover(File(coverURL))).match(
          (success) {
            tmpSeries = tmpSeries.copyWith(coverURL: CoverURL(success));
          },
          (_) {},
        );
      }

      await _firestore
          .collection(seriesPath)
          .doc(tmpSeries.uid.getOrCrash())
          .update(SeriesDTO.fromDomain(tmpSeries).toJson());

      return Ok(unit);
    } catch (_) {
      return Err(const SeriesFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, SeriesFailure>> updateSeriesLikes(
    UniqueID userID,
    UniqueID seriesID, {
    required bool liked,
  }) async {
    try {
      await _firestore.runTransaction((transaction) async {
        // Check userID register inside series_likes collection
        final seriesLikesReference =
            _firestore.collection(seriesLikesPath).doc(seriesID.getOrCrash());

        final slrSnapshot = await transaction.get(seriesLikesReference);
        final dbLiked =
            slrSnapshot.data()?[userID.getOrCrash()] as bool? ?? false;

        if (liked != dbLiked) {
          // Update series likes count
          // TODO(SSebigo): make sure firebase rules match to prevent fraudulent updates
          final seriesReference =
              _firestore.collection(seriesPath).doc(seriesID.getOrCrash());

          final srSnapshot = await transaction.get(seriesReference);
          final likesCount = srSnapshot.data()?['likesCount'] as int;

          transaction
            ..set(
              seriesLikesReference,
              <String, dynamic>{
                userID.getOrCrash(): liked,
              },
              SetOptions(merge: true),
            )
            ..update(seriesReference, <String, dynamic>{
              'likesCount': liked ? likesCount + 1 : likesCount - 1,
            });
        }
      });

      return Ok(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const SeriesFailure.permissionDenied());
      }
      return Err(const SeriesFailure.serverError());
    } catch (_) {
      return Err(const SeriesFailure.unexpected());
    }
  }

  @override
  Future<Result<bool, SeriesFailure>> updateSeriesViews(
    UniqueID userID,
    UniqueID seriesID,
  ) async {
    try {
      await _firestore.runTransaction((transaction) async {
        // Check userID register inside series_views collection
        final seriesViewsReference =
            _firestore.collection(seriesViewsPath).doc(seriesID.getOrCrash());

        final svrSnapshot = await transaction.get(seriesViewsReference);
        final viewed =
            svrSnapshot.data()?[userID.getOrCrash()] as bool? ?? false;

        if (!viewed) {
          // Update series views count
          // TODO(SSebigo): make sure firebase rules match to prevent fraudulent updates
          final seriesReference =
              _firestore.collection(seriesPath).doc(seriesID.getOrCrash());

          final srSnapshot = await transaction.get(seriesReference);
          final viewsCount = srSnapshot.data()?['viewsCount'] as int;

          transaction
            ..set(
              seriesViewsReference,
              <String, dynamic>{userID.getOrCrash(): true},
              SetOptions(merge: true),
            )
            ..update(seriesReference, <String, dynamic>{
              'viewsCount': viewsCount + 1,
            });

          return Ok(true);
        }
      });

      return Ok(false);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const SeriesFailure.permissionDenied());
      }
      return Err(const SeriesFailure.serverError());
    } catch (_) {
      return Err(const SeriesFailure.unexpected());
    }
  }

  @override
  Future<Result<String, SeriesFailure>> uploadCover(File cover) async {
    final fileName = p.basename(cover.path);
    final ref = _firebaseStorage.ref().child(
          '$seriesCoversPath/${DateTime.now().millisecondsSinceEpoch}-$fileName',
        );
    final uploadTask = await ref.putFile(cover);
    final state = uploadTask.state;

    if (state == TaskState.success) {
      final url = await ref.getDownloadURL();
      return Ok(url);
    }
    return Err(const SeriesFailure.coverNotUploaded());
  }
}
