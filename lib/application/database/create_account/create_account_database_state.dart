part of 'create_account_database_bloc.dart';

@freezed
abstract class CreateAccountDatabaseState with _$CreateAccountDatabaseState {
  const factory CreateAccountDatabaseState({
    @required bool isUpdating,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
    @required String email,
  }) = _CreateAccountDatabaseState;

  factory CreateAccountDatabaseState.initial() => CreateAccountDatabaseState(
        databaseFailureOrSuccessOption: none(),
        email: '',
        isUpdating: false,
      );
}
