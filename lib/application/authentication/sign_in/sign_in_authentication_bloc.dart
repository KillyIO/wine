import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:wine/domain/authentication/authentication_failure.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/authentication/password.dart';

part 'sign_in_authentication_bloc.freezed.dart';
part 'sign_in_authentication_event.dart';
part 'sign_in_authentication_state.dart';

@injectable
class SignInAuthenticationBloc extends Bloc<SignInAuthenticationEvent, SignInAuthenticationState> {
  final IAuthenticationFacade _authenticationFacade;

  SignInAuthenticationBloc(this._authenticationFacade) : super(SignInAuthenticationState.initial());

  @override
  Stream<SignInAuthenticationState> mapEventToState(SignInAuthenticationEvent event) async* {
    yield* event.map(
      emailChangedEVT: (event) async* {
        yield state.copyWith(emailAddress: EmailAddress(event.emailStr), authFailureOrSuccessOption: none());
      },
      passwordChangedEVT: (event) async* {
        yield state.copyWith(password: Password(event.passwordStr), authFailureOrSuccessOption: none());
      },
      signInWithEmailAndPasswordPressedEVT: (event) async* {
        Either<AuthenticationFailure, AuthenticationSuccess> failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(isSubmitting: true, authFailureOrSuccessOption: none());

          failureOrSuccess = await _authenticationFacade.signInWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }

        yield state.copyWith(
          isSubmitting: false,
          showErrorMessages: true,
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      signInWithGooglePressedEVT: (event) async* {
        yield state.copyWith(isSubmitting: true, authFailureOrSuccessOption: none());

        final failureOrSuccess = await _authenticationFacade.signInWithGoogle();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is UserAuthenticatedSCS) {
              success.user.username = success.user.name.trim().replaceAll(RegExp('[ -]'), '_');
              success.user.createdAt = DateTime.now().millisecondsSinceEpoch;
              success.user.updatedAt = DateTime.now().millisecondsSinceEpoch;
            }
          },
        );

        yield state.copyWith(isSubmitting: false, authFailureOrSuccessOption: some(failureOrSuccess));
      },
    );
  }
}
