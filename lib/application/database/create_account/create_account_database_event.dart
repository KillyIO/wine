part of 'create_account_database_bloc.dart';

@freezed
abstract class CreateAccountDatabaseEvent with _$CreateAccountDatabaseEvent {
  const factory CreateAccountDatabaseEvent.accountCreatedEVT(User user) = AccountCreated;
  const factory CreateAccountDatabaseEvent.userDetailsSavedEVT(User user) = UserDetailsSavedEVT;
  const factory CreateAccountDatabaseEvent.verifyEmailPageLaunchedEVT() = VerifyEmailPageLaunched;
}
