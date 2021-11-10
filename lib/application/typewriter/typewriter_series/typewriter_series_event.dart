part of 'typewriter_series_bloc.dart';

/// @nodoc
@freezed
class TypewriterSeriesEvent with _$TypewriterSeriesEvent {
  /// @nodoc
  const factory TypewriterSeriesEvent.addCoverPressed() = AddCoverPressed;

  /// @nodoc
  const factory TypewriterSeriesEvent.genreAdded(String genre) = GenreAdded;

  /// @nodoc
  const factory TypewriterSeriesEvent.genreRemoved(String genre) = GenreRemoved;

  /// @nodoc
  const factory TypewriterSeriesEvent.isNSFWChanged({required bool isNSFW}) =
      IsNSFWChanged;

  /// @nodoc
  const factory TypewriterSeriesEvent.languageSelected(String language) =
      LanguageSelected;

  /// @nodoc
  const factory TypewriterSeriesEvent.launchAsNewSeries() = LaunchAsNewSeries;

  /// @nodoc
  const factory TypewriterSeriesEvent.launchWithID(
    UniqueID id, {
    Series? series,
  }) = LaunchWithID;

  /// @nodoc
  const factory TypewriterSeriesEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory TypewriterSeriesEvent.subtitleChanged(String subtitle) =
      SubtitleChanged;

  /// @nodoc
  const factory TypewriterSeriesEvent.summaryChanged(String summary) =
      SummaryChanged;

  /// @nodoc
  const factory TypewriterSeriesEvent.titleChanged(String title) = TitleChanged;
}
