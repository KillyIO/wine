part of 'core_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class CoreAuthenticationState with _$CoreAuthenticationState {
  /// @nodoc
  const factory CoreAuthenticationState({
    @required bool isAnonymous,
  }) = _CoreAuthenticationState;

  /// @nodoc
  factory CoreAuthenticationState.initial() =>
      const CoreAuthenticationState(isAnonymous: false);
}
