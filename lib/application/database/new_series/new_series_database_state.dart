part of 'new_series_database_bloc.dart';

@freezed
abstract class NewSeriesDatabaseState with _$NewSeriesDatabaseState {
  const factory NewSeriesDatabaseState({
    @required SeriesDraft seriesDraft,
    @required String uid,
    @required String authorUid,
    @required Title title,
    @required Description description,
    @required Character character,
    @required List<String> characters,
    @required Genre genre,
    @required String selectedGenre,
    @required Language language,
    @required String selectedLanguage,
    @required Copyright copyright,
    @required String selectedCopyright,
  }) = _NewSeriesDatabaseState;

  factory NewSeriesDatabaseState.initial() => NewSeriesDatabaseState(
        seriesDraft: SeriesDraft(),
        uid: '',
        authorUid: '',
        title: Title(''),
        description: Description(''),
        character: Character(''),
        characters: <String>[],
        genre: Genre(''),
        selectedGenre: '',
        language: Language(''),
        selectedLanguage: '',
        copyright: Copyright(''),
        selectedCopyright: '',
      );
}
