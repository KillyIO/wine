part of 'auth_bloc.dart';

/// @nodoc
@freezed
class AuthEvent with _$AuthEvent {
  /// @nodoc
  const factory AuthEvent.authChanged() = AuthChanged;
}
