part of 'settings_bloc.dart';

/// @nodoc
@freezed
class SettingsEvent with _$SettingsEvent {
  /// @nodoc
  const factory SettingsEvent.initBloc() = InitBloc;

  /// @nodoc
  const factory SettingsEvent.loggedOut() = LoggedOut;

  /// @nodoc
  const factory SettingsEvent.logOutPressed() = LogOutPressed;

  /// @nodoc
  const factory SettingsEvent.sessionCreated() = SessionCreated;

  /// @nodoc
  const factory SettingsEvent.sessionDeleted() = SessionDeleted;

  /// @nodoc
  const factory SettingsEvent.sessionFetched() = SessionFetched;
}
