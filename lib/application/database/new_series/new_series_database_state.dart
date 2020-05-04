part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseState with _$NewSeriesDatabaseState {
  const factory NewSeriesDatabaseState({
    @required SeriesDraft seriesDraft,
    @required String uid,
    @required String authorUid,
    @required Genre genre,
    @required String selectedGenre,
    @required Title title,
    @required Description description,
    @required Character character,
    @required List<String> characters,
  }) = _NewSeriesDatabaseState;

  factory NewSeriesDatabaseState.initial() => NewSeriesDatabaseState(
        seriesDraft: SeriesDraft(),
        uid: '',
        authorUid: '',
        genre: Genre(''),
        selectedGenre: '',
        title: Title(''),
        description: Description(''),
        character: Character(''),
        characters: <String>[],
      );
}
