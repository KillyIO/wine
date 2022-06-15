part of 'typewriter_tree_bloc.application.dart';

/// @nodoc
@freezed
class TypewriterTreeEvent with _$TypewriterTreeEvent {
  /// @nodoc
  const factory TypewriterTreeEvent.addCoverPressed() = AddCoverPressed;

  /// @nodoc
  const factory TypewriterTreeEvent.deleteButtonPressed() = DeleteButtonPressed;

  /// @nodoc
  const factory TypewriterTreeEvent.genreAdded(String genre) = GenreAdded;

  /// @nodoc
  const factory TypewriterTreeEvent.genreRemoved(String genre) = GenreRemoved;

  /// @nodoc
  const factory TypewriterTreeEvent.isNSFWChanged({required bool isNSFW}) =
      IsNSFWChanged;

  /// @nodoc
  const factory TypewriterTreeEvent.languageSelected(String language) =
      LanguageSelected;

  /// @nodoc
  const factory TypewriterTreeEvent.launchAsNewTree() = LaunchAsNewTree;

  /// @nodoc
  const factory TypewriterTreeEvent.launchWithUID(UniqueID uid, {Tree? tree}) =
      LaunchWithUID;

  /// @nodoc
  const factory TypewriterTreeEvent.publishButtonPressed() =
      PublishButtonPressed;

  /// @nodoc
  const factory TypewriterTreeEvent.saveButtonPressed() = SaveButtonPressed;

  /// @nodoc
  const factory TypewriterTreeEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory TypewriterTreeEvent.subtitleChanged(String subtitle) =
      SubtitleChanged;

  /// @nodoc
  const factory TypewriterTreeEvent.synopsisChanged(String synopsis) =
      SynopsisChanged;

  /// @nodoc
  const factory TypewriterTreeEvent.titleChanged(String title) = TitleChanged;
}
