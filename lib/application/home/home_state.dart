part of 'home_bloc.dart';

/// @nodoc
@freezed
class HomeState with _$HomeState {
  /// @nodoc
  const factory HomeState({
    required int currentPageViewIdx,
    required Option<Result<Unit, CoreFailure>> failure,
    required String genreFilterKey,
    required String languageFilterKey,
    required List<Tree> newTrees,
    required String timeFilterKey,
    required List<Tree> topTrees,
  }) = _HomeState;

  /// @nodoc
  factory HomeState.initial() => const HomeState(
        currentPageViewIdx: 0,
        failure: None(),
        genreFilterKey: '',
        languageFilterKey: '',
        newTrees: <Tree>[],
        timeFilterKey: '',
        topTrees: <Tree>[],
      );
}
