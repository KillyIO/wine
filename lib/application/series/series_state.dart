part of 'series_bloc.dart';

/// @nodoc
@freezed
class SeriesState with _$SeriesState {
  /// @nodoc
  const factory SeriesState({
    required User author,
    required Option<Result<None, CoreFailure>> failureOption,
    required Series series,
    required User session,
  }) = _SeriesState;

  /// @nodoc
  factory SeriesState.initial() => SeriesState(
        author: User.empty(),
        failureOption: const None(),
        series: Series.empty(),
        session: User.empty(),
      );
}
