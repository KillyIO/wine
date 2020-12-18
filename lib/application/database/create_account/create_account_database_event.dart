part of 'create_account_database_bloc.dart';

/// @nodoc
@freezed
abstract class CreateAccountDatabaseEvent with _$CreateAccountDatabaseEvent {
  /// @nodoc
  const factory CreateAccountDatabaseEvent.accountCreatedEVT(User user) =
      AccountCreated;

  /// @nodoc
  const factory CreateAccountDatabaseEvent.userDetailsSavedEVT(User user) =
      UserDetailsSavedEVT;

  /// @nodoc
  const factory CreateAccountDatabaseEvent.verifyEmailPageLaunchedEVT() =
      VerifyEmailPageLaunched;
}
