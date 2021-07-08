import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rustic/option.dart';
import 'package:rustic/result.dart';
import 'package:wine/domain/auth/confirm_password.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';
part 'sign_up_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  /// @nodoc
  SignUpBloc(
    this._authFacade,
    this._userRepository,
  ) : super(SignUpState.initial());

  final IAuthFacade _authFacade;
  final IUserRepository _userRepository;

  @override
  Stream<SignUpState> mapEventToState(
    SignUpEvent event,
  ) async* {
    yield* event.map(
      accountCreated: (value) async* {},
      confirmPasswordChanged: (value) async* {
        yield state.copyWith(
          confirmPassword:
              ConfirmPassword(value.confirmPasswordStr, value.passwordStr),
          failureOption: const None(),
        );
      },
      emailChanged: (value) async* {
        yield state.copyWith(
          emailAddress: EmailAddress(value.emailAddressStr),
          failureOption: const None(),
        );
      },
      passwordChanged: (value) async* {
        yield state.copyWith(
          failureOption: const None(),
          password: Password(value.passwordStr),
        );
      },
      signUpPressed: (value) async* {
        final isUsernameValid = state.username.isValid;

        if (isUsernameValid) {
          yield state.copyWith(
            failureOption: const None(),
            isProcessing: true,
          );

          yield* (await _userRepository
                  .checkUsernameAvailability(state.username))
              .match(
            (_) async* {
              add(const SignUpEvent.usernameAvailabilityConfirmed());
            },
            (failure) async* {
              yield state.copyWith(
                failureOption: Option(Err(CoreFailure.user(failure))),
                isProcessing: false,
                showErrorMessages: true,
              );
            },
          );
        }
      },
      userDetailsSaved: (value) async* {},
      usernameAvailabilityConfirmed: (value) async* {},
      usernameChanged: (value) async* {
        yield state.copyWith(
          failureOption: const None(),
          username: Username(value.usernameStr),
        );
      },
    );
  }
}
