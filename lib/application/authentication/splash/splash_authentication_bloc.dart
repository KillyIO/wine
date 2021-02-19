import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:wine/domain/authentication/failures/authentication_failure.dart';
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
  ) : super(const SplashAuthenticationState.initial());

  final IAuthenticationFacade _authenticationFacade;

  @override
  Stream<SplashAuthenticationState> mapEventToState(
    SplashAuthenticationEvent event,
  ) async* {
    yield* event.map(
      splashLaunched: (value) async* {
        Either<AuthenticationFailure, Unit> failureOrSuccess;

        yield const SplashAuthenticationState.authenticating();

        if (!_authenticationFacade.isSignedIn()) {
          failureOrSuccess = await _authenticationFacade.signInAnonymously();
        }

        final isAnonymous = _authenticationFacade.isAnonymous();

        yield SplashAuthenticationState.authenticated(
          isAnonymous,
          optionOf(failureOrSuccess),
        );
      },
    );
  }
}
