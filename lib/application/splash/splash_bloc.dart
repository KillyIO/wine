import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:wine/domain/authentication/authentication_failure.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/default_cover/default_cover_failure.dart';
import 'package:wine/domain/default_cover/i_local_default_cover_repository.dart';
import 'package:wine/domain/default_cover/i_online_default_cover_repository.dart';
import 'package:wine/domain/models/settings.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/domain/session/i_session_repository.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user_failure.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

/// @nodoc
@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  /// @nodoc
  SplashBloc(
    this._authenticationFacade,
    this._localDefaultCoverRepository,
    this._onlineDefaultCoverRepository,
    this._sessionRepository,
    this._settingsRepository,
    this._userRepository,
  ) : super(const SplashState.initial());

  final IAuthenticationFacade _authenticationFacade;
  final ILocalDefaultCoverRepository _localDefaultCoverRepository;
  final IOnlineDefaultCoverRepository _onlineDefaultCoverRepository;
  final ISessionRepository _sessionRepository;
  final ISettingsRepository _settingsRepository;
  final IUserRepository _userRepository;

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    yield* event.map(
      authenticated: (value) async* {},
      defaultCoverURLsCached: (value) async* {},
      defaultCoverURLsLoaded: (value) async* {},
      sessionFetched: (value) async* {},
      splashPageLaunched: (value) async* {
        Either<AuthenticationFailure, Unit> failureOrSuccess;

        yield const SplashState.processing();

        if (!_authenticationFacade.isSignedIn()) {
          failureOrSuccess = await _authenticationFacade.signInAnonymously();
        }

        yield SplashState.authenticated(optionOf(failureOrSuccess));

        if (failureOrSuccess.isRight()) {
          add(const SplashEvent.authenticated());
        }
      },
      settingsInitialized: (value) async* {},
      userLoaded: (value) async* {},
    );
  }
}
