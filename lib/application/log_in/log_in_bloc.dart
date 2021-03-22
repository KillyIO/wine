import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user_failure.dart';

part 'log_in_event.dart';
part 'log_in_state.dart';
part 'log_in_bloc.freezed.dart';

/// @nodoc
@injectable
class LogInBloc extends Bloc<LogInEvent, LogInState> {
  /// @nodoc
  LogInBloc(
    this._authFacade,
    this._userRepository,
  ) : super(LogInState.initial());

  /// @nodoc
  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;

  @override
  Stream<LogInState> mapEventToState(
    LogInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (value) async* {
        yield state.copyWith(
          authOption: none(),
          emailAddress: EmailAddress(value.emailStr),
          userOption: none(),
        );
      },
      loggedIn: (value) async* {},
      logInWithEmailAndPasswordPressed: (value) async* {
        Either<AuthFailure, Unit> failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            authOption: none(),
            isProcessing: true,
            userOption: none(),
          );

          failureOrSuccess = await _authFacade.logInWithEmailAndPassword(
            state.emailAddress,
            state.password,
          );
        }

        final isSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          authOption: optionOf(failureOrSuccess),
          isProcessing: isSuccess,
          showErrorMessages: true,
        );

        if (isSuccess) {
          add(const LogInEvent.loggedIn());
        }
      },
      logInWithGooglePressed: (value) async* {
        yield state.copyWith(
          authOption: none(),
          isProcessing: true,
          userOption: none(),
        );

        final failureOrSuccess = await _authFacade.logInWithGoogle();

        yield state.copyWith(
          authOption: optionOf(failureOrSuccess),
          isProcessing: true,
          userOption: none(),
        );
      },
      passwordChanged: (value) async* {
        yield state.copyWith(
          authOption: none(),
          password: Password(value.passwordStr),
          userOption: none(),
        );
      },
      userDetailsSaved: (value) async* {},
    );
  }
}
