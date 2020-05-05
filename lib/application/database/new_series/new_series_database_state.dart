part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseState with _$NewSeriesDatabaseState {
  const factory NewSeriesDatabaseState({
    @required SeriesDraft seriesDraft,
    @required String uid,
    @required String authorUid,
    @required String title,
    @required String description,
    @required String genre,
    @required String genreOptional,
    @required String language,
    @required String copyrights,
  }) = _NewSeriesDatabaseState;

  factory NewSeriesDatabaseState.initial() => NewSeriesDatabaseState(
        seriesDraft: SeriesDraft(),
        uid: '',
        authorUid: '',
        title: '',
        description: '',
        genre: '',
        genreOptional: '',
        language: '',
        copyrights: '',
      );
}
