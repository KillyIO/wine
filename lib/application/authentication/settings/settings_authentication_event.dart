part of 'settings_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class SettingsAuthenticationEvent with _$SettingsAuthenticationEvent {
  /// @nodoc
  const factory SettingsAuthenticationEvent.resetBloc() = ResetBloc;

  /// @nodoc
  const factory SettingsAuthenticationEvent.signOutPressed() =
      SignOutPressed;
}
