part of 'series_database_bloc.dart';

@freezed
abstract class SeriesDatabaseState with _$SeriesDatabaseState {
  const factory SeriesDatabaseState({
    @required Series series,
    @required String placeholderUrl,
    @required String username,
    @required Map<String, String> genresMap,
    @required Map<String, String> languagesMap,
  }) = _SeriesDatabaseState;

  factory SeriesDatabaseState.initial() => SeriesDatabaseState(
        series: Series(),
        placeholderUrl: '',
        username: '',
        genresMap: <String, String>{},
        languagesMap: <String, String>{},
      );
}
