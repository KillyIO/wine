import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/models/count.dart';
import 'package:wine/domain/models/series.dart';

part 'series_database_success.freezed.dart';

/// @nodoc
@freezed
abstract class SeriesDatabaseSuccess with _$SeriesDatabaseSuccess {
  /// @nodoc
  const factory SeriesDatabaseSuccess.seriesAsMapLoadedSCS(
    Map<String, Series> seriesMap,
  ) = SeriesAsMapLoadedSCS;

  /// @nodoc
  const factory SeriesDatabaseSuccess.seriesCoverDeletedSCS() =
      SeriesCoverDeletedSCS;

  /// @nodoc
  const factory SeriesDatabaseSuccess.seriesCoverUploadedSCS(String coverURL) =
      SeriesCoverUploadedSCS;

  /// @nodoc
  const factory SeriesDatabaseSuccess.seriesDeletedSCS() = SeriesDeletedSCS;

  /// @nodoc
  const factory SeriesDatabaseSuccess.seriesListLoadedSCS(
    List<Series> seriesList,
  ) = SeriesListLoadedSCS;

  /// @nodoc
  const factory SeriesDatabaseSuccess.seriesLoadedSCS(Series series) =
      SeriesLoadedSCS;

  /// @nodoc
  const factory SeriesDatabaseSuccess.seriesPublishedSCS(Series series) =
      SeriesPublishedSCS;

  /// @nodoc
  const factory SeriesDatabaseSuccess.seriesStatsCountLoadedSCS(Count count) =
      SeriesStatsCountLoadedSCS;

  /// @nodoc
  const factory SeriesDatabaseSuccess.seriesStatsCountUpdatedSCS() =
      SeriesStatsCountUpdatedSCS;

  /// @nodoc
  const factory SeriesDatabaseSuccess.seriesStatsStatusLoadedSCS({
    @required bool status,
  }) = SeriesStatsStatusLoadedSCS;
}
