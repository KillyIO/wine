part of 'splash_bloc.dart';

/// @nodoc
@freezed
abstract class SplashState with _$SplashState {
  /// @nodoc
  const factory SplashState.failure(CoreFailure failure) = _Failure;

  /// @nodoc
  const factory SplashState.goToHome() = _GoToHome;

  /// @nodoc
  const factory SplashState.goToOnboarding() = _GoToOnboarding;

  /// @nodoc
  const factory SplashState.initial() = _Initial;
}
