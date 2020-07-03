part of 'sign_in_database_bloc.dart';

@freezed
abstract class SignInDatabaseState with _$SignInDatabaseState {
  const factory SignInDatabaseState({
    @required bool isUpdating,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
  }) = _SignInDatabaseState;

  factory SignInDatabaseState.initial() => SignInDatabaseState(
        databaseFailureOrSuccessOption: none(),
        isUpdating: false,
      );
}
