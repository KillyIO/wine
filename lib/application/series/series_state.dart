part of 'series_bloc.dart';

/// @nodoc
@freezed
class SeriesState with _$SeriesState {
  /// @nodoc
  const factory SeriesState({
    required bool authorIsUser,
    required User author,
    Chapter? chapterOne,
    Chapter? chapterResume,
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isBookmarked,
    required bool isLiked,
    required bool isProcessing,
    required Series series,
    required User session,
    required Settings settings,
  }) = _SeriesState;

  /// @nodoc
  factory SeriesState.initial() => SeriesState(
        authorIsUser: false,
        author: User.empty(),
        failureOption: const None(),
        isBookmarked: false,
        isLiked: false,
        isProcessing: false,
        series: Series.empty(),
        session: User.empty(),
        settings: Settings.empty(),
      );
}
