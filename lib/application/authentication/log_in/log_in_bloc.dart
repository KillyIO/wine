import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';

import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/domain/session/i_session_facade.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/domain/user/i_user_facade.dart';
import 'package:wine/domain/user/user_failure.dart';

part 'log_in_bloc.freezed.dart';
part 'log_in_event.dart';
part 'log_in_state.dart';

/// @nodoc
@injectable
class LogInBloc extends Bloc<LogInEvent, LogInState> {
  /// @nodoc
  LogInBloc(
    this._authenticationFacade,
    this._sessionFacade,
    this._userFacade,
  ) : super(LogInState.initial());

  final IAuthenticationFacade _authenticationFacade;
  final ISessionFacade _sessionFacade;
  final IUserFacade _userFacade;

  @override
  Stream<LogInState> mapEventToState(LogInEvent event) async* {
    yield* event.map(
      emailChanged: (value) async* {
        yield state.copyWith(
          authenticationOption: none(),
          emailAddress: EmailAddress(value.emailStr),
          sessionOption: none(),
          userOption: none(),
        );
      },
      passwordChanged: (value) async* {
        yield state.copyWith(
          authenticationOption: none(),
          password: Password(value.passwordStr),
          sessionOption: none(),
          userOption: none(),
        );
      },
      signInWithEmailAndPasswordPressed: (value) async* {
        Either<AuthenticationFailure, User> failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        var isSuccess = false;
        User user;

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            authenticationOption: none(),
            isProcessing: true,
            sessionOption: none(),
            userOption: none(),
          );

          failureOrSuccess =
              await _authenticationFacade.signInWithEmailAndPassword(
            state.emailAddress,
            state.password,
          )
                ..fold(
                  (_) {},
                  (success) => user = success,
                );

          isSuccess = failureOrSuccess.isRight();
        }

        yield* _signedIn(isSuccess, user, failureOrSuccess);
      },
      signInWithGooglePressed: (value) async* {
        yield state.copyWith(
          authenticationOption: none(),
          isProcessing: true,
          sessionOption: none(),
          userOption: none(),
        );

        User user;

        final failureOrSuccess = await _authenticationFacade.signInWithGoogle()
          ..fold(
            (_) {},
            (success) => user = success.copyWith(
              username: success.email
                  .trim()
                  .split('@')
                  .first
                  .replaceAll(RegExp('[ -]'), '_'),
              createdAt: DateTime.now().millisecondsSinceEpoch,
              updatedAt: DateTime.now().millisecondsSinceEpoch,
            ),
          );

        final isSuccess = failureOrSuccess.isRight();

        yield* _signedIn(isSuccess, user, failureOrSuccess);
      },
      signedIn: (value) async* {
        yield state.copyWith(
          authenticationOption: none(),
          sessionOption: none(),
          userOption: none(),
        );

        User user;

        final failureOrSuccess =
            await _userFacade.saveDetailsFromUser(value.user)
              ..fold(
                (_) {},
                (success) => user = success,
              );

        final isSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          authenticationOption: none(),
          isProcessing: isSuccess,
          sessionOption: none(),
          userOption: optionOf(failureOrSuccess),
        );

        if (failureOrSuccess.isRight()) {
          add(LogInEvent.userDetailsSaved(user));
        }
      },
      userDetailsSaved: (value) async* {
        final failureOrSuccess =
            await _sessionFacade.initializeSession(user: value.user);

        yield state.copyWith(
          authenticationOption: none(),
          isProcessing: false,
          sessionOption: optionOf(failureOrSuccess),
          userOption: none(),
        );
      },
    );
  }

  Stream<LogInState> _signedIn(
    bool isSuccess,
    User user,
    Either<AuthenticationFailure, User> failureOrSuccess,
  ) async* {
    yield state.copyWith(
      authenticationOption: optionOf(failureOrSuccess),
      isProcessing: isSuccess,
      sessionOption: none(),
      showErrorMessages: true,
      userOption: none(),
    );

    if (isSuccess) {
      add(LogInEvent.signedIn(user));
    }
  }
}
