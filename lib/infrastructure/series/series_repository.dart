import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/i_series_repository.dart';
import 'package:wine/domain/series/series_failure.dart';

/// @nodoc
@LazySingleton(as: ISeriesRepository, env: ['dev', 'prod'])
class SeriesRepository extends ISeriesRepository {
  @override
  Future<Either<SeriesFailure, Unit>> deleteSeries(UniqueID uid) {
    // TODO: implement deleteSeries
    throw UnimplementedError();
  }
}
