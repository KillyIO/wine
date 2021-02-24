import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';

import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/models/config.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/domain/session/i_session_facade.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/domain/user/i_user_facade.dart';
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
    this._configFacade,
    this._palceholderFacade,
    this._sessionFacade,
    this._userFacade,
  ) : super(const SplashState.initial());

  final IAuthenticationFacade _authenticationFacade;
  final IConfigFacade _configFacade;
  final IPlaceholderFacade _palceholderFacade;
  final ISessionFacade _sessionFacade;
  final IUserFacade _userFacade;

  @override
  Stream<SplashState> mapEventToState(SplashEvent event) async* {
    yield* event.map(
      authenticated: (value) async* {},
      configFetched: (value) async* {},
      placeholdersCached: (value) async* {},
      placeholdersLoaded: (value) async* {},
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
      userLoaded: (value) async* {},
    );
  }
}
