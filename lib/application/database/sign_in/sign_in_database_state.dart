part of 'sign_in_database_bloc.dart';

/// @nodoc
@freezed
abstract class SignInDatabaseState with _$SignInDatabaseState {
  /// @nodoc
  const factory SignInDatabaseState({
    @required bool isUpdating,
    @required
        Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
            sessionDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, UserDatabaseSuccess>>
            userDatabaseFailureOrSuccessOption,
  }) = _SignInDatabaseState;

  /// @nodoc
  factory SignInDatabaseState.initial() => SignInDatabaseState(
        isUpdating: false,
        sessionDatabaseFailureOrSuccessOption: none(),
        userDatabaseFailureOrSuccessOption: none(),
      );
}
