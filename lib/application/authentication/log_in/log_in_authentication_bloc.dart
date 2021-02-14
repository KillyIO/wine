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

part 'log_in_authentication_bloc.freezed.dart';
part 'log_in_authentication_event.dart';
part 'log_in_authentication_state.dart';

/// @nodoc
@injectable
class LogInAuthenticationBloc
    extends Bloc<LogInAuthenticationEvent, LogInAuthenticationState> {
  /// @nodoc
  LogInAuthenticationBloc(this._authenticationFacade)
      : super(LogInAuthenticationState.initial());

  final IAuthenticationFacade _authenticationFacade;

  @override
  Stream<LogInAuthenticationState> mapEventToState(
      LogInAuthenticationEvent event) async* {
    yield* event.map(
      emailChanged: (event) async* {
        yield state.copyWith(
          authFailureOrSuccessOption: none(),
          emailAddress: EmailAddress(event.emailStr),
        );
      },
      passwordChanged: (event) async* {
        yield state.copyWith(
          authFailureOrSuccessOption: none(),
          password: Password(event.passwordStr),
        );
      },
      signInWithEmailAndPasswordPressed: (event) async* {
        Either<AuthenticationFailure, AuthenticationSuccess> failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
              isSubmitting: true, authFailureOrSuccessOption: none());

          failureOrSuccess =
              await _authenticationFacade.signInWithEmailAndPassword(
            state.emailAddress,
            state.password,
          );
        }

        yield state.copyWith(
          authFailureOrSuccessOption: optionOf(failureOrSuccess),
          isSubmitting: false,
          showErrorMessages: true,
        );
      },
      signInWithGooglePressed: (event) async* {
        yield state.copyWith(
          authFailureOrSuccessOption: none(),
          isSubmitting: true,
        );

        var failureOrSuccess = await _authenticationFacade.signInWithGoogle();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is UserAuthenticatedSuccess) {
              final user = success.user.copyWith(
                username: success.user.email
                    .trim()
                    .split('@')
                    .first
                    .replaceAll(RegExp('[ -]'), '_'),
                createdAt: DateTime.now().millisecondsSinceEpoch,
                updatedAt: DateTime.now().millisecondsSinceEpoch,
              );

              failureOrSuccess =
                  right(AuthenticationSuccess.userAuthenticatedSuccess(user));
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
