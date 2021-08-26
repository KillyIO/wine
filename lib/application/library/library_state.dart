part of 'library_bloc.dart';

/// @nodoc
@freezed
class LibraryState with _$LibraryState {
  /// @nodoc
  const factory LibraryState({
    // required List<Chapter> bookmarkedSeriesList,
    required List<Series> bookmarkedSeriesList,
    // required List<Chapter> chapterList,
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isProcessing,
    required List<Series> seriesList,
    required User session,
  }) = _LibraryState;

  /// @nodoc
  factory LibraryState.initial() => LibraryState(
        bookmarkedSeriesList: <Series>[],
        failureOption: const None(),
        isProcessing: false,
        seriesList: <Series>[],
        session: User(
          emailAddress: EmailAddress(''),
          uid: UniqueID(),
          username: Username(''),
        ),
      );
}
