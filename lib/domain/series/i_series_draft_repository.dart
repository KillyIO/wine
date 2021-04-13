import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series_failure.dart';

/// @nodoc
abstract class ISeriesDraftRepository {
  /// @nodoc
  Future<Either<SeriesFailure, Unit>> deleteSeriesDraft(UniqueID uid);
}
