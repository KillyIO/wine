import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:logger/logger.dart';
import 'package:meta/meta.dart';
import 'package:wine/models/session.dart';
import 'package:wine/models/session_member.dart';
import 'package:wine/models/user.dart';
import 'package:wine/repositories/authentication_repository.dart';
import 'package:wine/repositories/local_storage_repository.dart';
import 'package:wine/repositories/user_repository.dart';
import 'package:wine/utils/exceptions.dart';
import 'package:wine/utils/validators.dart';

part 'account_event.dart';
part 'account_state.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final Logger _logger = Logger();
  final AuthenticationRepository _authenticationRepository =
      AuthenticationRepository();
  final LocalStorageRepository _localStorageRepository =
      LocalStorageRepository();
  final UserRepository _userRepository = UserRepository();

  @override
  AccountState get initialState => AccountInitial();

  @override
  Stream<AccountState> mapEventToState(
    AccountEvent event,
  ) async* {
    if (event is EVTOnSignInWithGoogleClicked) {
      yield* _mapOnSignInWithGoogleClickedToState();
    }
    if (event is EVTOnSubmitUsernameClicked) {
      yield* _mapOnSubmitUsernameClickedToState(event);
    }
    if (event is EVTOnSignUpClicked) {
      yield* _mapOnSignUpClickedToState(event);
    }
    if (event is EVTOnLogInClicked) {
      yield* _mapOnLogInClickedToState(event);
    }
    if (event is EVTOnEmailNotVerified) {
      yield* _mapOnEmailNotVerifiedToState(event);
    }
  }

  Stream<AccountState> _mapOnSignInWithGoogleClickedToState() async* {
    yield STEAuthenticating();
    try {
      User user = await _authenticationRepository?.convertWithGoogle();
      await _localStorageRepository?.setSession(Session.fromUser(user));
      await Future.wait([
        _localStorageRepository?.setSessionData(
            SessionMember.is_anonymous, false),
        _userRepository?.saveDetailsFromUser(user),
      ]);
      yield STENavigating(route: '/account/complete');
      yield STENavigated();
    } catch (error) {
      if (error.code == 'ERROR_CREDENTIAL_ALREADY_IN_USE') {
        User user = await _authenticationRepository?.signInWithGoogle();
        await _localStorageRepository?.setSession(Session.fromUser(user));
        await Future.wait([
          _localStorageRepository?.setSessionData(
              SessionMember.is_anonymous, false),
          _userRepository?.saveDetailsFromUser(user),
        ]);
        yield STENavigating(route: '/splash');
        yield STENavigated();
      } else {
        yield STEAccountError(error: error);
      }
    }
  }

  Stream<AccountState> _mapOnSubmitUsernameClickedToState(
    EVTOnSubmitUsernameClicked event,
  ) async* {
    try {
      if (Validators.username(event.username.trim().replaceAll(' ', '_')) !=
          true) {
        throw UsernameNotNullOrEmptyException();
      }
      yield STESubmittingUsername();
      final Session session = _localStorageRepository?.getSession();
      await Future.wait([
        _userRepository?.updateUsername(
            session.uid, event.username.trim().replaceAll(' ', '_')),
        _localStorageRepository?.setSessionData(
            SessionMember.username, event.username.trim().replaceAll(' ', '_')),
      ]);
      yield STEUpdatedUsername();
    } catch (error) {
      yield STEAccountError(error: error);
    }
  }

  Stream<AccountState> _mapOnSignUpClickedToState(
    EVTOnSignUpClicked event,
  ) async* {
    try {
      if (Validators.email(event.email.trim()) != true) {
        throw InvalidEmailException();
      }
      if (Validators.password(event.password) != true) {
        throw InvalidPasswordException();
      }
      if (Validators.confirmPassword(event.password, event.confirmPassword) !=
          true) {
        throw InvalidConfirmPasswordException();
      }
      if (Validators.username(event.username.trim()) != true) {
        throw InvalidUsernameException();
      }
      yield STEAuthenticating();
      User user = await _authenticationRepository?.convertWithEmailAndPassword(
          event.email.trim(), event.password);
      user.username = event.username.trim().replaceAll(' ', '_');
      user.name = event.username.trim();
      await _localStorageRepository?.setSession(Session.fromUser(user));
      await Future.wait([
        _localStorageRepository?.setSessionData(
            SessionMember.is_anonymous, false),
        _userRepository?.saveDetailsFromUser(user),
      ]);
      await _userRepository?.updateUsername(user.uid, user.username);
      yield STENavigating(route: '/splash');
      yield STENavigated();
    } catch (error) {
      yield STEAccountError(error: error);
    }
  }

  Stream<AccountState> _mapOnLogInClickedToState(
    EVTOnLogInClicked event,
  ) async* {
    try {
      if (Validators.email(event.email.trim()) != true) {
        throw InvalidEmailException();
      }
      if (Validators.password(event.password) != true) {
        throw InvalidPasswordException();
      }
      yield STEAuthenticating();
      User user = await _authenticationRepository?.signInWithEmailAndPassword(
          event.email.trim(), event.password);
      await _localStorageRepository?.setSession(Session.fromUser(user));
      await Future.wait([
        _localStorageRepository?.setSessionData(
            SessionMember.is_anonymous, false),
        _userRepository?.saveDetailsFromUser(user),
      ]);
      yield STENavigating(route: '/splash');
      yield STENavigated();
    } catch (error) {
      yield STEAccountError(error: error);
    }
  }

  Stream<AccountState> _mapOnEmailNotVerifiedToState(
    EVTOnEmailNotVerified event,
  ) async* {
    yield STEDisplayingEmailNotVerifiedDialog();
    try {
      await Future.wait([
        _userRepository?.updateIsEmailVerified(event.sessionUid, true),
        _localStorageRepository?.setSessionData(
            SessionMember.is_email_verified, true),
      ]);
      yield STEEmailNotVerifiedDialogDismissed();
    } catch (error) {
      yield STEAccountError(error: error);
    }
  }
}
