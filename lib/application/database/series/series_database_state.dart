part of 'series_database_bloc.dart';

@freezed
abstract class SeriesDatabaseState with _$SeriesDatabaseState {
  const factory SeriesDatabaseState({
    @required SeriesDraft seriesDraft,
  }) = _SeriesDatabaseState;

  factory SeriesDatabaseState.initial() => SeriesDatabaseState(
        seriesDraft: SeriesDraft(),
      );
}
