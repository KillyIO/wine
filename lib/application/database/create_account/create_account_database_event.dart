part of 'create_account_database_bloc.dart';

@freezed
abstract class CreateAccountDatabaseEvent with _$CreateAccountDatabaseEvent {
  const factory CreateAccountDatabaseEvent.accountCreated(User user) =
      AccountCreated;
  const factory CreateAccountDatabaseEvent.verifyEmailPageLaunched() =
      VerifyEmailPageLaunched;
}
