part of 'splash_authentication_bloc.dart';

@freezed
abstract class SplashAuthenticationEvent with _$SplashAuthenticationEvent {
  const factory SplashAuthenticationEvent.splashLaunchedEVT() = SplashLaunchedEVT;
}
