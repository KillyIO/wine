part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int currentPageViewIdx,
    required Option<Result<Unit, CoreFailure>> failureOption,
    required String genreFilterKey,
    required bool isProcessing,
    required String languageFilterKey,
    required List<Tree> newTrees,
    required String timeFilterKey,
    required List<Tree> topTrees,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        currentPageViewIdx: 0,
        failureOption: None(),
        genreFilterKey: '',
        isProcessing: false,
        languageFilterKey: '',
        newTrees: <Tree>[],
        timeFilterKey: '',
        topTrees: <Tree>[],
      );
}
