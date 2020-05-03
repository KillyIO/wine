part of 'home_database_bloc.dart';

@freezed
abstract class HomeDatabaseState with _$HomeDatabaseState {
  const factory HomeDatabaseState() = _HomeDatabaseState;

  factory HomeDatabaseState.initial() => const HomeDatabaseState();
}
