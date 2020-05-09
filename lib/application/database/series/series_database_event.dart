part of 'series_database_bloc.dart';

@freezed
abstract class SeriesDatabaseEvent with _$SeriesDatabaseEvent {
  const factory SeriesDatabaseEvent.seriesPageLaunched(String uid) =
      SeriesPageLaunched;
}
