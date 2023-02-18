import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/auth/confirm_password.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/default_covers/default_cover.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';

part 'sign_up_bloc.freezed.dart';
part 'sign_up_event.dart';
part 'sign_up_state.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  /// @nodoc
  SignUpBloc(
    this._authFacade,
    this._defaultCoversRepository,
    this._sessionsRepository,
    this._userRepository,
  ) : super(SignUpState.initial()) {
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
    on<UserDetailsSaved>(
      (value, emit) async =>
          (await _sessionsRepository.insertSession(value.user)).match(
        (_) {
          add(const SignUpEvent.sessionInserted());
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
    on<SessionInserted>((_, emit) async {
      (await _defaultCoversRepository.loadDefaultCovers()).match(
        (defaultCoverURLs) {
          add(SignUpEvent.defaultCoversLoaded(defaultCoverURLs));
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption:
                  Option.some(Err(CoreFailure.defaultCovers(failure))),
              isProcessing: false,
              showErrorMessages: true,
            ),
          );
        },
      );
    });
    on<DefaultCoversLoaded>((value, emit) async {
      (await _defaultCoversRepository.cacheDefaultCovers(value.defaultCovers))
          .match(
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
              failureOption:
                  Option.some(Err(CoreFailure.defaultCovers(failure))),
              isProcessing: false,
              showErrorMessages: true,
            ),
          );
        },
      );
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
  final IDefaultCoversRepository _defaultCoversRepository;
  final ISessionsRepository _sessionsRepository;
  final IUserRepository _userRepository;
}
