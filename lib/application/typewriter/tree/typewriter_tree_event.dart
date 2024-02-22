part of 'typewriter_tree_bloc.dart';

@freezed
class TypewriterTreeEvent with _$TypewriterTreeEvent {
  const factory TypewriterTreeEvent.launchAsNewTree() = LaunchAsNewTree;

  const factory TypewriterTreeEvent.sessionFetched() = SessionFetched;

  const factory TypewriterTreeEvent.addCoverPressed() = AddCoverPressed;

  const factory TypewriterTreeEvent.deleteButtonPressed() = DeleteButtonPressed;

  const factory TypewriterTreeEvent.genreAdded(String genre) = GenreAdded;

  const factory TypewriterTreeEvent.genreRemoved(String genre) = GenreRemoved;

  const factory TypewriterTreeEvent.isNSFWChanged({required bool isNSFW}) =
      IsNSFWChanged;

  const factory TypewriterTreeEvent.languageSelected(String language) =
      LanguageSelected;

  const factory TypewriterTreeEvent.launchWithUID(UniqueID uid, {Tree? tree}) =
      LaunchWithUID;

  const factory TypewriterTreeEvent.publishButtonPressed() =
      PublishButtonPressed;

  const factory TypewriterTreeEvent.saveButtonPressed() = SaveButtonPressed;

  const factory TypewriterTreeEvent.subtitleChanged(String subtitle) =
      SubtitleChanged;

  const factory TypewriterTreeEvent.synopsisChanged(String synopsis) =
      SynopsisChanged;

  const factory TypewriterTreeEvent.titleChanged(String title) = TitleChanged;
}
