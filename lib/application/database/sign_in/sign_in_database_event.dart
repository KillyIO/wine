part of 'sign_in_database_bloc.dart';

/// @nodoc
@freezed
abstract class SignInDatabaseEvent with _$SignInDatabaseEvent {
  /// @nodoc
  const factory SignInDatabaseEvent.signedInEVT(User user) = SignedInEVT;

  /// @nodoc
  const factory SignInDatabaseEvent.userDetailsSavedEVT(User user) =
      UserDetailsSavedEVT;
}
