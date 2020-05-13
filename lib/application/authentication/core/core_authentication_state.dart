part of 'core_authentication_bloc.dart';

@freezed
abstract class CoreAuthenticationState with _$CoreAuthenticationState {
  const factory CoreAuthenticationState({
    @required bool isAnonymous,
    @required
        Option<Either<AuthenticationFailure, dynamic>>
            authenticationFailureOrSuccessOption,
  }) = _CoreAuthenticationState;

  factory CoreAuthenticationState.initial() => CoreAuthenticationState(
        isAnonymous: false,
        authenticationFailureOrSuccessOption: none(),
      );
}
