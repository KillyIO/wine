part of 'core_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class CoreAuthenticationEvent with _$CoreAuthenticationEvent {
  /// @nodoc
  const factory CoreAuthenticationEvent.appLaunchedEVT() = AppLaunchedEVT;

  /// @nodoc
  const factory CoreAuthenticationEvent.userStatusChangedEVT() =
      UserStatusChangedEVT;
}
