import 'dart:io';

import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/series/series_failure.dart';

/// @nodoc
abstract class ISeriesRepository {
  /// @nodoc
  Future<Result<Unit, SeriesFailure>> createSeries(Series series);

  /// @nodoc
  Future<Result<Unit, SeriesFailure>> updateSeries(Series series);

  /// @nodoc
  Future<Result<String, SeriesFailure>> uploadCover(File cover);
}
