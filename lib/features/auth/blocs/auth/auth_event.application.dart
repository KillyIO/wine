part of 'auth_bloc/auth_bloc.application.dart';

/// @nodoc
@freezed
class AuthEvent with _$AuthEvent {
  /// @nodoc
  const factory AuthEvent.authChanged() = AuthChanged;

  /// @nodoc
  const factory AuthEvent.anonymous() = Anonymous;

  /// @nodoc
  const factory AuthEvent.authenticated() = Authenticated;
}
