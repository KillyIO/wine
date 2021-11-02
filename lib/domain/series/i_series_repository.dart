import 'dart:io';

import 'package:oxidized/oxidized.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/series/series_failure.dart';

/// @nodoc
abstract class ISeriesRepository {
  /// @nodoc
  Future<Result<Unit, SeriesFailure>> publishSeries(Series series);

  /// @nodoc
  Future<Result<Unit, SeriesFailure>> unpublishSeries(UniqueID uid);

  /// @nodoc
  Future<Result<String, SeriesFailure>> uploadCover(File cover);
}
