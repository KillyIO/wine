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
  Future<Result<bool, SeriesFailure>> loadBookmarkStatus(
    UniqueID userID,
    UniqueID seriesUID,
  );

  /// @nodoc
  Future<Result<bool, SeriesFailure>> loadLikeStatus(
    UniqueID userID,
    UniqueID seriesUID,
  );

  /// @nodoc
  Future<Result<Series, SeriesFailure>> loadSeriesByID(UniqueID uid);

  /// @nodoc
  Future<Result<List<Series>, SeriesFailure>> loadSeriesByUserID(
    UniqueID uid, {
    UniqueID? lastSeriesUID,
  });

  /// @nodoc
  Future<Result<Unit, SeriesFailure>> updateSeries(Series series);

  /// @nodoc
  Future<Result<Unit, SeriesFailure>> updateSeriesBookmarks(
    UniqueID userID,
    UniqueID seriesUID, {
    required bool isBookmarked,
  });

  /// @nodoc
  Future<Result<Unit, SeriesFailure>> updateSeriesLikes(
    UniqueID userID,
    UniqueID seriesUID, {
    required bool isLiked,
  });

  /// @nodoc
  Future<Result<bool, SeriesFailure>> updateSeriesViews(
    UniqueID userID,
    UniqueID seriesUID,
  );

  /// @nodoc
  Future<Result<String, SeriesFailure>> uploadCover(File cover);
}
