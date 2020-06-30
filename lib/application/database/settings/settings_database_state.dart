part of 'settings_database_bloc.dart';

@freezed
abstract class SettingsDatabaseState with _$SettingsDatabaseState {
  const factory SettingsDatabaseState({
    @required Session session,
    @required bool isUpdating,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
  }) = _SettingsDatabaseState;

  factory SettingsDatabaseState.initial() => SettingsDatabaseState(
        session: Session(),
        isUpdating: false,
        databaseFailureOrSuccessOption: none(),
      );
}
