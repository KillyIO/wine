part of 'home_bloc.dart';

/// @nodoc
@freezed
class HomeState with _$HomeState {
  /// @nodoc
  const factory HomeState({
    required Option<Result<Unit, CoreFailure>> failure,
    required String genreFilterKey,
    required String languageFilterKey,
    required List<Series> newSeriesList,
    required String timeFilterKey,
    required List<Series> topSeriesList,
  }) = _HomeState;

  /// @nodoc
  factory HomeState.initial() => const HomeState(
        failure: None(),
        genreFilterKey: '',
        languageFilterKey: '',
        newSeriesList: <Series>[],
        timeFilterKey: '',
        topSeriesList: <Series>[],
      );
}
