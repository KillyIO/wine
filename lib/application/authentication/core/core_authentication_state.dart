part of 'core_authentication_bloc.dart';

@freezed
abstract class CoreAuthenticationState with _$CoreAuthenticationState {
  const factory CoreAuthenticationState({
    @required bool isAnonymous,
  }) = _CoreAuthenticationState;

  factory CoreAuthenticationState.initial() => const CoreAuthenticationState(isAnonymous: false);
}
