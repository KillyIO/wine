import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:wine/domain/authentication/authentication_failure.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';

part 'splash_authentication_bloc.freezed.dart';
part 'splash_authentication_event.dart';
part 'splash_authentication_state.dart';

/// @nodoc
@injectable
class SplashAuthenticationBloc
    extends Bloc<SplashAuthenticationEvent, SplashAuthenticationState> {
  /// @nodoc
  SplashAuthenticationBloc(
    this._authenticationFacade,
  ) : super(SplashAuthenticationState.initial());

  final IAuthenticationFacade _authenticationFacade;

  @override
  Stream<SplashAuthenticationState> mapEventToState(
    SplashAuthenticationEvent event,
  ) async* {
    if (event is SplashLaunchedEVT) {
      Either<AuthenticationFailure, AuthenticationSuccess> failureOrSuccess;

      yield state.copyWith(
        authenticationFailureOrSuccessOption: none(),
        isAuthenticating: true,
      );

      if (!_authenticationFacade.isSignedIn()) {
        failureOrSuccess = await _authenticationFacade.signInAnonymously();
      }

      final isAnonymous = _authenticationFacade.isAnonymous();

      yield state.copyWith(
        authenticationFailureOrSuccessOption: optionOf(failureOrSuccess),
        isAnonymous: isAnonymous,
        isAuthenticating: false,
      );
    }
  }
}
