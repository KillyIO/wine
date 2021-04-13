import 'package:dartz/dartz.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series_failure.dart';

/// @nodoc
abstract class ISeriesRepository {
  /// @nodoc
  Future<Either<SeriesFailure, Unit>> deleteSeries(UniqueID uid);
}
