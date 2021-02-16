part of 'core_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class CoreAuthenticationEvent with _$CoreAuthenticationEvent {
  /// @nodoc
  const factory CoreAuthenticationEvent.appLaunched() = AppLaunched;

  /// @nodoc
  const factory CoreAuthenticationEvent.userAuthenticated() = UserAuthenticated;

  /// @nodoc
  const factory CoreAuthenticationEvent.userLoggedOut() = UserLoggedOut;
}
