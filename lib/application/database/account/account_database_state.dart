part of 'account_database_bloc.dart';

@freezed
abstract class AccountDatabaseState with _$AccountDatabaseState {
  const factory AccountDatabaseState({
    @required Session session,
    @required AccountMenuLayoutType menuType,
    @required
        Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
  }) = _AccountSettingsState;

  factory AccountDatabaseState.initial() => AccountDatabaseState(
        session: Session(),
        menuType: AccountMenuLayoutType.series,
        databaseFailureOrSuccessOption: none(),
      );
}
