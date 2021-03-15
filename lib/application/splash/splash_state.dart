part of 'splash_bloc.dart';

/// @nodoc
@freezed
abstract class SplashState with _$SplashState {
  /// @nodoc
  const factory SplashState.failure({
    Option<Either<AuthFailure, dynamic>> authOption,
    Option<Either<DefaultCoversFailure, dynamic>> defaultCoverOption,
    Option<Either<SessionFailure, dynamic>> sessionOption,
    Option<Either<SettingsFailure, dynamic>> settingsOption,
    Option<Either<UserFailure, dynamic>> userOption,
  }) = _Failure;

  /// @nodoc
  const factory SplashState.goToHome() = _GoToHome;

  /// @nodoc
  const factory SplashState.initial() = _Initial;

  /// @nodoc
  const factory SplashState.processing() = _Processing;
}
