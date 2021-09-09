part of 'typewriter_series_bloc.dart';

/// @nodoc
@freezed
class TypewriterSeriesState with _$TypewriterSeriesState {
  /// @nodoc
  const factory TypewriterSeriesState({
    required Option<Result<None, CoreFailure>> failureOption,
    required bool isProcessing,
  }) = _TypewriterSeriesState;

  /// @nodoc
  factory TypewriterSeriesState.initial() => TypewriterSeriesState(
        failureOption: const None(),
        isProcessing: false,
      );
}
