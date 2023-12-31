part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authChanged() = AuthChanged;

  const factory AuthEvent.changedToAnonymous() = ChangedToAnonymous;

  const factory AuthEvent.changedToAuthenticated() = ChangedToAuthenticated;
}
