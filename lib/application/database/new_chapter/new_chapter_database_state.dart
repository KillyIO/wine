part of 'new_chapter_database_bloc.dart';

@freezed
abstract class NewChapterDatabaseState with _$NewChapterDatabaseState {
  const factory NewChapterDatabaseState({
    @required String title,
    @required bool isPublishing,
  }) = _NewChapterPageState;

  factory NewChapterDatabaseState.initial() => NewChapterDatabaseState(
        title: '',
        isPublishing: false,
      );
}
