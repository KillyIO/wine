import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/models/series.dart';

abstract class IOnlineSeriesDatabaseFacade {
  Future<Either<DatabaseFailure, Series>> createSeries(Series series);
  Future<Either<DatabaseFailure, Series>> getSeriesById(String uid);
}