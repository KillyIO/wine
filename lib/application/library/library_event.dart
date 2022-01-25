part of 'library_bloc.dart';

/// @nodoc
@freezed
class LibraryEvent with _$LibraryEvent {
  /// @nodoc
  const factory LibraryEvent.chapterDeleted(UniqueID uid) = ChapterDeleted;

  /// @nodoc
  const factory LibraryEvent.initBloc() = InitBloc;

  /// @nodoc
  const factory LibraryEvent.pageViewIndexChanged(int index) =
      PageViewIndexChanged;

  /// @nodoc
  const factory LibraryEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory LibraryEvent.treeDeleted(UniqueID uid) = TreeDeleted;

  /// @nodoc
  const factory LibraryEvent.verticalNavbarIndexChanged(int index) =
      VerticalNavbarIndexChanged;
}
