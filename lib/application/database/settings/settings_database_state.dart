part of 'settings_database_bloc.dart';

@freezed
abstract class SettingsDatabaseState with _$SettingsDatabaseState {
  const factory SettingsDatabaseState({
    @required bool isUpdating,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
    @required Session session,
  }) = _SettingsDatabaseState;

  factory SettingsDatabaseState.initial() => SettingsDatabaseState(
        databaseFailureOrSuccessOption: none(),
        isUpdating: false,
        session: Session(),
      );
}
