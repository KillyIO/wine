import 'dart:io';

import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/series/series_failure.dart';

/// @nodoc
abstract class ISeriesRepository {
  /// @nodoc
  Future<Result<Unit, SeriesFailure>> createSeries(Series series);

  /// @nodoc
  Future<Result<Unit, SeriesFailure>> deleteSeries(UniqueID uid);

  /// @nodoc
  Future<Result<Series, SeriesFailure>> loadSeriesByID(UniqueID uid);

  /// @nodoc
  Future<Result<List<Series>, SeriesFailure>> loadSeriesByUserID(
    UniqueID uid, {
    UniqueID? lastSeriesID,
  });

  /// @nodoc
  Future<Result<Unit, SeriesFailure>> updateSeries(Series series);

  /// @nodoc
  Future<Result<String, SeriesFailure>> uploadCover(File cover);
}
