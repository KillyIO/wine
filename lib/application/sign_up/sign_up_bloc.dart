import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/core/core_failure.domain.dart';
import 'package:wine/features/sessions/i_sessions_repository.domain.dart';
import 'package:wine/features/user/i_user_repository.domain.dart';
import 'package:wine/features/user/user.domain.dart';
import 'package:wine/features/auth/confirm_password.domain.dart';
import 'package:wine/features/auth/email_address.domain.dart';
import 'package:wine/features/auth/i_auth_facade.domain.dart';
import 'package:wine/features/auth/password.domain.dart';
import 'package:wine/features/auth/username.fomain.dart';

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
    this._sessionsRepository,
    this._userRepository,
  ) : super(SignUpState.initial()) {
    on<AccountCreated>((_, emit) async {
      final userOption = await _authFacade.getLoggedInUser();
      var userAsPlain = userOption.toNullable();

      if (userAsPlain != null) {
        userAsPlain = userAsPlain.copyWith(username: state.username);

        (await _userRepository.saveUsername(
          userAsPlain.uid,
          userAsPlain.username,
        ))
            .match(
          (_) {
            add(SignUpEvent.usernameSaved(userAsPlain!));
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.user(failure))),
                isProcessing: false,
                showErrorMessages: true,
              ),
            );
          },
        );
      }
    });
    on<ConfirmPasswordChanged>((value, emit) {
      final password = state.password.value.ok().toNullable();

      if (password != null) {
        emit(
          state.copyWith(
            confirmPassword:
                ConfirmPassword(password, value.confirmPasswordStr),
            failureOption: const None(),
          ),
        );
      }
    });
    on<EmailAddressChanged>(
      (value, emit) => emit(
        state.copyWith(
          emailAddress: EmailAddress(value.emailAddressStr),
          failureOption: const None(),
        ),
      ),
    );
    on<PasswordChanged>(
      (value, emit) => emit(
        state.copyWith(
          failureOption: const None(),
          password: Password(value.passwordStr),
        ),
      ),
    );
    on<SignUpPressed>((_, emit) async {
      final isUsernameValid = state.username.isValid;

      if (isUsernameValid) {
        emit(
          state.copyWith(
            failureOption: const None(),
            isProcessing: true,
          ),
        );

        (await _userRepository.checkUsernameAvailability(
          state.username,
        ))
            .match(
          (_) {
            add(const SignUpEvent.usernameAvailabilityConfirmed());
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.user(failure))),
                isProcessing: false,
                showErrorMessages: true,
              ),
            );
          },
        );
      }
    });
    on<UserDetailsSaved>(
      (value, emit) async =>
          (await _sessionsRepository.insertSession(value.user)).match(
        (_) {
          emit(
            state.copyWith(
              failureOption: const None(),
              isAuthenticated: true,
              isProcessing: false,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.sessions(failure))),
              isProcessing: false,
              showErrorMessages: true,
            ),
          );
        },
      ),
    );
    on<UsernameAvailabilityConfirmed>((_, emit) async {
      final isEmailValid = state.emailAddress.isValid;
      final isPasswordValid = state.password.isValid;
      final isConfirmPasswordValid = state.confirmPassword.isValid;

      if (isEmailValid && isPasswordValid && isConfirmPasswordValid) {
        (await _authFacade.convertWithEmailAndPassword(
          state.emailAddress,
          state.password,
        ))
            .match(
          (_) {
            add(const SignUpEvent.accountCreated());
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.auth(failure))),
                isProcessing: false,
                showErrorMessages: true,
              ),
            );
          },
        );
      }
    });
    on<UsernameSaved>(
      (value, emit) async =>
          (await _userRepository.saveDetailsFromUser(value.user)).match(
        (_) {
          add(SignUpEvent.userDetailsSaved(value.user));
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.user(failure))),
              isProcessing: false,
              showErrorMessages: true,
            ),
          );
        },
      ),
    );
    on<UsernameChanged>(
      (value, emit) => emit(
        state.copyWith(
          failureOption: const None(),
          username: Username(value.usernameStr),
        ),
      ),
    );
  }

  final IAuthFacade _authFacade;
  final ISessionsRepository _sessionsRepository;
  final IUserRepository _userRepository;
}
