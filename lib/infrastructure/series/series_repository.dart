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
  Future<Result<Unit, SeriesFailure>> publishSeries(Series series) async {
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
  Future<Result<Unit, SeriesFailure>> unpublishSeries(UniqueID uid) async {
    try {
      final uidStr = uid.getOrCrash();

      await _firestore
          .collection(seriesPath)
          .doc(uidStr)
          .update({'published': false});

      return Ok(unit);
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
