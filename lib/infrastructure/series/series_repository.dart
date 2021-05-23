import 'package:injectable/injectable.dart';
import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/i_series_repository.dart';
import 'package:wine/domain/series/series_failure.dart';

/// @nodoc
@LazySingleton(as: ISeriesRepository, env: [Environment.dev, Environment.prod])
class SeriesRepository implements ISeriesRepository {
  @override
  Future<Result<Unit, SeriesFailure>> deleteSeries(UniqueID uid) {
    // TODO: implement deleteSeries
    throw UnimplementedError();
  }
}
