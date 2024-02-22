part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.init() = Init;

  const factory SettingsEvent.sessionFetched() = SessionFetched;

  const factory SettingsEvent.logOutPressed() = LogOutPressed;

  const factory SettingsEvent.sessionDeleted() = SessionDeleted;
}
