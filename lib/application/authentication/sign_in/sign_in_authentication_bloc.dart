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

/// @nodoc
@injectable
class SignInAuthenticationBloc
    extends Bloc<SignInAuthenticationEvent, SignInAuthenticationState> {
  /// @nodoc
  SignInAuthenticationBloc(this._authenticationFacade)
      : super(SignInAuthenticationState.initial());

  final IAuthenticationFacade _authenticationFacade;

  @override
  Stream<SignInAuthenticationState> mapEventToState(
      SignInAuthenticationEvent event) async* {
    yield* event.map(
      emailChangedEVT: (event) async* {
        yield state.copyWith(
          authFailureOrSuccessOption: none(),
          emailAddress: EmailAddress(event.emailStr),
        );
      },
      passwordChangedEVT: (event) async* {
        yield state.copyWith(
          authFailureOrSuccessOption: none(),
          password: Password(event.passwordStr),
        );
      },
      signInWithEmailAndPasswordPressedEVT: (event) async* {
        Either<AuthenticationFailure, AuthenticationSuccess> failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
              isSubmitting: true, authFailureOrSuccessOption: none());

          failureOrSuccess =
              await _authenticationFacade.signInWithEmailAndPassword(
            emailAddress: state.emailAddress,
            password: state.password,
          );
        }

        yield state.copyWith(
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
          isSubmitting: false,
          showErrorMessages: true,
        );
      },
      signInWithGooglePressedEVT: (event) async* {
        yield state.copyWith(
          authFailureOrSuccessOption: none(),
          isSubmitting: true,
        );

        var failureOrSuccess = await _authenticationFacade.signInWithGoogle();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is UserAuthenticatedSCS) {
              final user = success.user.copyWith(
                username:
                    success.user.name.trim().replaceAll(RegExp('[ -]'), '_'),
                createdAt: DateTime.now().millisecondsSinceEpoch,
                updatedAt: DateTime.now().millisecondsSinceEpoch,
              );

              failureOrSuccess =
                  right(AuthenticationSuccess.userAuthenticatedSCS(user));
            }
          },
        );

        yield state.copyWith(
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
          isSubmitting: false,
        );
      },
    );
  }
}
