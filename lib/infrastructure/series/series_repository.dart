import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/i_series_repository.dart';
import 'package:wine/domain/series/series_failure.dart';
import 'package:wine/utils/paths/storage.dart';

/// @nodoc
@LazySingleton(
  as: ISeriesRepository,
  env: [Environment.dev, Environment.prod],
)
class SeriesRepository implements ISeriesRepository {
  /// @nodoc
  SeriesRepository(this._firebaseStorage);

  final FirebaseStorage _firebaseStorage;

  @override
  Future<Result<Unit, SeriesFailure>> unpublishSeries(UniqueID uid) {
    // TODO: implement unpublishSeries
    throw UnimplementedError();
  }

  @override
  Future<Result<String, SeriesFailure>> uploadCover(File cover) async {
    final fileName = p.basename(cover.path);
    final ref = _firebaseStorage.ref().child(
        '$seriesCoversPath/${DateTime.now().millisecondsSinceEpoch}-$fileName');
    final uploadTask = await ref.putFile(cover);
    final state = uploadTask.state;

    if (state == TaskState.success) {
      final url = await ref.getDownloadURL();
      return Ok(url);
    }
    return const Err(SeriesFailure.coverNotUploaded());
  }
}
