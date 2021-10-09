part of 'setup_bloc.dart';

/// @nodoc
@freezed
class SetupState with _$SetupState {
  /// @nodoc
  const factory SetupState.content() = _Content;

  /// @nodoc
  const factory SetupState.failure(CoreFailure failure) = _Failure;

  /// @nodoc
  const factory SetupState.initial() = _Initial;

  /// @nodoc
  const factory SetupState.onboarding() = _Onboarding;
}
