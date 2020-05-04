part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseState with _$NewSeriesDatabaseState {
  const factory NewSeriesDatabaseState({
    @required SeriesDraft seriesDraft,
    @required String uid,
    @required String authorUid,
    @required Title title,
    @required Description description,
    @required Genre genre,
  }) = _NewSeriesDatabaseState;

  factory NewSeriesDatabaseState.initial() => NewSeriesDatabaseState(
        seriesDraft: SeriesDraft(),
        uid: '',
        authorUid: '',
        title: Title(''),
        description: Description(''),
        genre: Genre(''),
      );
}
