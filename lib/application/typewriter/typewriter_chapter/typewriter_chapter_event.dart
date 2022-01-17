part of 'typewriter_chapter_bloc.dart';

/// @nodoc
@freezed
class TypewriterChapterEvent with _$TypewriterChapterEvent {
  /// @nodoc
  const factory TypewriterChapterEvent.addCoverPressed() = AddCoverPressed;

  /// @nodoc
  const factory TypewriterChapterEvent.deleteButtonPressed() =
      DeleteButtonPressed;

  /// @nodoc
  const factory TypewriterChapterEvent.genreAdded(String genre) = GenreAdded;

  /// @nodoc
  const factory TypewriterChapterEvent.genreRemoved(String genre) =
      GenreRemoved;

  /// @nodoc
  const factory TypewriterChapterEvent.isNSFWChanged({required bool isNSFW}) =
      IsNSFWChanged;

  /// @nodoc
  const factory TypewriterChapterEvent.languageSelected(String language) =
      LanguageSelected;

  /// @nodoc
  const factory TypewriterChapterEvent.launchAsNewChapter(
    Series series, {
    Chapter? chapter,
  }) = LaunchAsNewChapter;

  /// @nodoc
  const factory TypewriterChapterEvent.launchWithID(
    UniqueID id, {
    Chapter? chapter,
  }) = LaunchWithID;

  /// @nodoc
  const factory TypewriterChapterEvent.licenceSelected(String licence) =
      LicenceSelected;
}