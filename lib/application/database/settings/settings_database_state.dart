part of 'settings_database_bloc.dart';

@freezed
abstract class SettingsDatabaseState with _$SettingsDatabaseState {
  const factory SettingsDatabaseState({
    @required Session session,
    @required bool isUpdating,
    @required bool isSessionDeleted,
    @required
        Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
  }) = _SettingsDatabaseState;

  factory SettingsDatabaseState.initial() => SettingsDatabaseState(
        session: Session(),
        isUpdating: false,
        isSessionDeleted: false,
        databaseFailureOrSuccessOption: none(),
      );
}
