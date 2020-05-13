import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';

part 'splash_authentication_event.dart';
part 'splash_authentication_state.dart';

part 'splash_authentication_bloc.freezed.dart';

@injectable
class SplashAuthenticationBloc
    extends Bloc<SplashAuthenticationEvent, SplashAuthenticationState> {
  final IAuthenticationFacade _authenticationFacade;

  SplashAuthenticationBloc(
    this._authenticationFacade,
  );

  @override
  SplashAuthenticationState get initialState =>
      SplashAuthenticationState.initial();

  @override
  Stream<SplashAuthenticationState> mapEventToState(
    SplashAuthenticationEvent event,
  ) async* {
    if (event is SplashLaunched) {
      Either<AuthenticationFailure, dynamic> failureOrSuccess;
      bool isAnonymous;

      yield state.copyWith(
        isAuthenticating: true,
        authenticationFailureOrSuccessOption: none(),
      );

      bool isSignedIn;

      failureOrSuccess = await _authenticationFacade.isSignedIn();
      failureOrSuccess.fold(
        (_) {},
        (success) {
          if (success is bool) {
            isSignedIn = success;
          }
        },
      );

      if (isSignedIn != null) {
        if (isSignedIn) {
          failureOrSuccess = await _authenticationFacade.isAnonymous();
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is bool) {
                isAnonymous = success;
              }
            },
          );
        } else {
          failureOrSuccess = await _authenticationFacade.signInAnonymously();
          isAnonymous = true;
        }
      }

      yield state.copyWith(
        isAuthenticating: false,
        isAnonymous: isAnonymous,
        authenticationFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }
  }
}
