part of 'typewriter_series_bloc.dart';

/// @nodoc
@freezed
class TypewriterSeriesState with _$TypewriterSeriesState {
  /// @nodoc
  const factory TypewriterSeriesState({
    required String coverURL,
    required Option<Result<None, CoreFailure>> failureOption,
    required List<Genre> genres,
    required bool isProcessing,
    required bool isNSFW,
    required Language language,
    required Subtitle subtitle,
    required TextEditingController subtitleController,
    required int subtitleWordCount,
    required Summary summary,
    required TextEditingController summaryController,
    required int summaryWordCount,
    required Title title,
    required TextEditingController titleController,
    required int titleWordCount,
    required User user,
  }) = _TypewriterSeriesState;

  /// @nodoc
  factory TypewriterSeriesState.initial() => TypewriterSeriesState(
        coverURL: '',
        failureOption: const None(),
        genres: <Genre>[],
        isProcessing: false,
        isNSFW: false,
        language: Language(''),
        subtitle: Subtitle(''),
        subtitleController: TextEditingController(),
        subtitleWordCount: 0,
        summary: Summary(''),
        summaryController: TextEditingController(),
        summaryWordCount: 0,
        title: Title(''),
        titleController: TextEditingController(),
        titleWordCount: 0,
        user: User(
          emailAddress: EmailAddress(defaultEmailAddress),
          uid: UniqueID.fromUniqueString(defaultUID),
          username: Username(defaultUsername),
        ),
      );
}
