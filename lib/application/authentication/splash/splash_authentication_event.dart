part of 'splash_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class SplashAuthenticationEvent with _$SplashAuthenticationEvent {
  /// @nodoc
  const factory SplashAuthenticationEvent.splashLaunched() = SplashLaunched;
}
