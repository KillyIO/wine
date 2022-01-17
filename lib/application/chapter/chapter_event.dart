part of 'chapter_bloc.dart';

@freezed
class ChapterEvent with _$ChapterEvent {
  const factory ChapterEvent.started() = _Started;
}