part of 'library_bloc.dart';

/// @nodoc
@freezed
class LibraryState with _$LibraryState {
  /// [seriesList]: Used to display "published" and "drafts" page views.
  const factory LibraryState({
    // required List<Chapter> bookmarkedSeriesList,
    required List<Series> bookmarkedSeriesList,
    required int currentPageViewIdx,
    required int currentVerticalNavbarIdx,
    // required List<Chapter> chapterList,
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isProcessing,
    required List<Series> seriesList,
    required User session,
  }) = _LibraryState;

  /// @nodoc
  factory LibraryState.initial() => LibraryState(
        bookmarkedSeriesList: <Series>[],
        currentPageViewIdx: 0,
        currentVerticalNavbarIdx: 0,
        failureOption: const None(),
        isProcessing: false,
        seriesList: <Series>[],
        session: User.empty(),
      );
}
