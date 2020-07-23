part of 'core_database_bloc.dart';

@freezed
abstract class CoreDatabaseEvent with _$CoreDatabaseEvent {
  const factory CoreDatabaseEvent.publishedFromAccountEVT() = PublishedFromAccountEVT;
  const factory CoreDatabaseEvent.publishedFromChapterEVT() = PublishedFromChapterEVT;
  const factory CoreDatabaseEvent.publishedFromHomeEVT() = PublishedFromHomeEVT;
}
