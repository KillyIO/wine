part of 'create_account_database_bloc.dart';

/// @nodoc
@freezed
abstract class CreateAccountDatabaseState with _$CreateAccountDatabaseState {
  /// @nodoc
  const factory CreateAccountDatabaseState({
    @required bool isUpdating,
    @required
        Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
            sessionDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, UserDatabaseSuccess>>
            userDatabaseFailureOrSuccessOption,
    @required String email,
  }) = _CreateAccountDatabaseState;

  /// @nodoc
  factory CreateAccountDatabaseState.initial() => CreateAccountDatabaseState(
        email: '',
        isUpdating: false,
        sessionDatabaseFailureOrSuccessOption: none(),
        userDatabaseFailureOrSuccessOption: none(),
      );
}
