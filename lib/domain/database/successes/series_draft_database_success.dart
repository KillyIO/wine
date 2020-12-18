import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/series.dart';

part 'series_draft_database_success.freezed.dart';

/// @nodoc
@freezed
abstract class SeriesDraftDatabaseSuccess with _$SeriesDraftDatabaseSuccess {
  /// @nodoc
  const factory SeriesDraftDatabaseSuccess.localSeriesDraftDeletedSCS() =
      LocalSeriesDraftDeletedSCS;

  /// @nodoc
  const factory SeriesDraftDatabaseSuccess.seriesDraftFetchedSCS(
    SeriesDraft seriesDraft,
  ) = SeriesDraftFetchedSCS;

  /// @nodoc
  const factory SeriesDraftDatabaseSuccess.localSeriesDraftSavedSCS(
    SeriesDraft seriesDraft,
  ) = LocalSeriesDraftSavedSCS;

  /// @nodoc
  const factory SeriesDraftDatabaseSuccess.localSeriesDraftUpdatedSCS() =
      LocalSeriesDraftUpdatedSCS;

  /// @nodoc
  const factory SeriesDraftDatabaseSuccess.onlineSeriesDraftDeletedSCS() =
      OnlineSeriesDraftDeletedSCS;

  /// @nodoc
  const factory SeriesDraftDatabaseSuccess.seriesDraftLoadedSCS(
    Series seriesDraft,
  ) = SeriesDraftLoadedSCS;

  /// @nodoc
  const factory SeriesDraftDatabaseSuccess.seriesDraftsLoadedSCS(
    List<Series> seriesDrafts,
  ) = SeriesDraftsLoadedSCS;

  /// @nodoc
  const factory SeriesDraftDatabaseSuccess.onlineSeriesDraftSavedSCS(
    Series seriesDraft,
  ) = OnlineSeriesDraftSavedSCS;

  /// @nodoc
  const factory SeriesDraftDatabaseSuccess.onlineSeriesDraftCoverDeletedSCS() =
      OnlineSeriesDraftCoverDeletedSCS;
}
