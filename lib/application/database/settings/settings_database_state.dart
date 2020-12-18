part of 'settings_database_bloc.dart';

/// @nodoc
@freezed
abstract class SettingsDatabaseState with _$SettingsDatabaseState {
  /// @nodoc
  const factory SettingsDatabaseState({
    @required bool isUpdating,
    @required
        Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
            sessionDatabaseFailureOrSuccessOption,
    @required Session session,
  }) = _SettingsDatabaseState;

  /// @nodoc
  factory SettingsDatabaseState.initial() => SettingsDatabaseState(
        isUpdating: false,
        session: Session(),
        sessionDatabaseFailureOrSuccessOption: none(),
      );
}
