import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/models/user.dart';

part 'log_in_event.dart';
part 'log_in_state.dart';
part 'log_in_bloc.freezed.dart';

/// @nodoc
@injectable
class LogInBloc extends Bloc<LogInEvent, LogInState> {
  /// @nodoc
  LogInBloc(
    this._authFacade,
  ) : super(LogInState.initial());

  /// @nodoc
  IAuthFacade _authFacade;

  @override
  Stream<LogInState> mapEventToState(
    LogInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (value) async* {
        yield state.copyWith(
          authOption: none(),
          emailAddress: EmailAddress(value.emailStr),
          sessionOption: none(),
          userOption: none(),
        );
      },
      loggedIn: (value) async* {},
      logInWithEmailAndPasswordPressed: (value) async* {
        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            authOption: none(),
            isProcessing: true,
            sessionOption: none(),
            userOption: none(),
          );

          final failureOrSuccess = await _authFacade.logInWithEmailAndPassword(
            state.emailAddress,
            state.password,
          );
        }
      },
      logInWithGooglePressed: (value) async* {
        yield state.copyWith(
          authOption: none(),
          isProcessing: true,
          sessionOption: none(),
          userOption: none(),
        );

        yield* _loggedIn();
      },
      passwordChanged: (value) async* {
        yield state.copyWith(
          authOption: none(),
          password: Password(value.passwordStr),
          sessionOption: none(),
          userOption: none(),
        );
      },
      userDetailsSaved: (value) async* {},
    );
  }

  Stream<LogInState> _loggedIn(
    bool isSuccess,
    User user,
    Either<AuthFailure, User> failureOrSuccess,
  ) async* {
    yield state.copyWith(
      authOption: optionOf(failureOrSuccess),
      isProcessing: isSuccess,
      sessionOption: none(),
      showErrorMessages: true,
      userOption: none(),
    );

    if (isSuccess) {
      add(LogInEvent.loggedIn(user));
    }
  }
}
