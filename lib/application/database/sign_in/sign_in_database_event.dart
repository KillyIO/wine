part of 'sign_in_database_bloc.dart';

@freezed
abstract class SignInDatabaseEvent with _$SignInDatabaseEvent {
  const factory SignInDatabaseEvent.signedInEVT(User user) = SignedInEVT;
  const factory SignInDatabaseEvent.userDetailsSavedEVT(User user) = UserDetailsSavedEVT;
}
