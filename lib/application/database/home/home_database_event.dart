part of 'home_database_bloc.dart';

@freezed
abstract class HomeDatabaseEvent with _$HomeDatabaseEvent {
  const factory HomeDatabaseEvent.fetchTopActionSeries() = FetchTopActionSeries;
}
