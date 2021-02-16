part of 'core_authentication_bloc.dart';

/// @nodoc
@freezed
abstract class CoreAuthenticationState with _$CoreAuthenticationState {
  /// @nodoc
  const factory CoreAuthenticationState.checkingUserAnonymity() =
      _CheckingUserAnonymity;

  /// @nodoc
  const factory CoreAuthenticationState.initial() = _Initial;

  /// @nodoc
  const factory CoreAuthenticationState.userAnonymityChecked(bool isAnonymous) =
      _UserAnonymityChecked;
}
