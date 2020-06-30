part of 'create_account_database_bloc.dart';

@freezed
abstract class CreateAccountDatabaseState with _$CreateAccountDatabaseState {
  const factory CreateAccountDatabaseState({
    @required bool isUpdating,
    @required String email,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
  }) = _CreateAccountDatabaseState;

  factory CreateAccountDatabaseState.initial() => CreateAccountDatabaseState(
        isUpdating: false,
        email: '',
        databaseFailureOrSuccessOption: none(),
      );
}
