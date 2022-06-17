part of 'settings_bloc.application.dart';

/// @nodoc
@freezed
class SettingsEvent with _$SettingsEvent {
  /// @nodoc
  const factory SettingsEvent.init() = Init;

  /// @nodoc
  const factory SettingsEvent.sessionFetched() = SessionFetched;

  /// @nodoc
  const factory SettingsEvent.logOutPressed() = LogOutPressed;

  /// @nodoc
  const factory SettingsEvent.sessionDeleted() = SessionDeleted;
}
