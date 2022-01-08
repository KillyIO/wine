part of 'typewriter_series_bloc.dart';

/// @nodoc
@freezed
class TypewriterSeriesState with _$TypewriterSeriesState {
  /// @nodoc
  const factory TypewriterSeriesState({
    required String coverURL,
    required Option<Result<None, CoreFailure>> failureOption,
    required List<Genre> genres,
    required bool isEdit,
    required bool isNSFW,
    required bool isProcessing,
    required Language language,
    required Series series,
    required bool showErrorMessages,
    required TypewriterEndState endState,
    required Subtitle subtitle,
    required TextEditingController subtitleController,
    required int subtitleWordCount,
    required Summary summary,
    required TextEditingController summaryController,
    required int summaryWordCount,
    required Title title,
    required TextEditingController titleController,
    required int titleWordCount,
  }) = _TypewriterSeriesState;

  /// @nodoc
  factory TypewriterSeriesState.initial() => TypewriterSeriesState(
        coverURL: '',
        failureOption: const None(),
        genres: <Genre>[],
        isEdit: false,
        isNSFW: false,
        isProcessing: false,
        language: Language(''),
        series: Series.empty(),
        showErrorMessages: false,
        endState: TypewriterEndState.unknown,
        subtitle: Subtitle(''),
        subtitleController: TextEditingController(),
        subtitleWordCount: 0,
        summary: Summary(''),
        summaryController: TextEditingController(),
        summaryWordCount: 0,
        title: Title(''),
        titleController: TextEditingController(),
        titleWordCount: 0,
      );
}
