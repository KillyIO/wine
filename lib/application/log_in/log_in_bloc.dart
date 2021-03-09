import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';
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
  IAuthFacade _authFacade;
  IUserRepository _userRepository;

  @override
  Stream<LogInState> mapEventToState(
    LogInEvent event,
  ) async* {
    yield* event.map(
      emailChanged: (value) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(value.emailStr),
          failureOrSuccessOption: none(),
        );
      },
      loggedIn: (value) async* {},
      logInWithEmailAndPasswordPressed: (value) async* {
        Either<CoreFailure, dynamic> failureOrSuccess;

        final isEmailValid = state.emailAddress.isValid();
        final isPasswordValid = state.password.isValid();

        if (isEmailValid && isPasswordValid) {
          yield state.copyWith(
            failureOrSuccessOption: none(),
            isProcessing: true,
          );

          failureOrSuccess = (await _authFacade.logInWithEmailAndPassword(
            state.emailAddress,
            state.password,
          ));
        }

        yield state.copyWith(
          failureOrSuccessOption: optionOf(failureOrSuccess),
          isProcessing: false,
          showErrorMessages: true,
        );
      },
      logInWithGooglePressed: (value) async* {
        yield state.copyWith(
          failureOrSuccessOption: none(),
          isProcessing: true,
        );
      },
      passwordChanged: (value) async* {
        yield state.copyWith(
          failureOrSuccessOption: none(),
          password: Password(value.passwordStr),
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
      failureOrSuccessOption: optionOf(failureOrSuccess),
      isProcessing: isSuccess,
      showErrorMessages: true,
    );

    if (isSuccess) {
      add(LogInEvent.loggedIn(user));
    }
  }
}
