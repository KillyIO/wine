part of 'home_bloc.dart';

/// @nodoc
@freezed
abstract class HomeState with _$HomeState {
  /// @nodoc
  const factory HomeState({
    @required String genreFilterKey,
    @required String languageFilterKey,
    @required List<Series> newSeriesList,
    @required String timeFilterKey,
    @required List<Series> topSeriesList,
  }) = _HomeState;

  /// @nodoc
  factory HomeState.initial() => const HomeState(
        genreFilterKey: '',
        languageFilterKey: '',
        newSeriesList: <Series>[],
        timeFilterKey: '',
        topSeriesList: <Series>[],
      );
}
