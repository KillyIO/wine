import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';

part 'splash_event.dart';
part 'splash_state.dart';
part 'splash_bloc.freezed.dart';

/// @nodoc
@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  /// @nodoc
  SplashBloc(
    this._authFacade,
  ) : super(const SplashState.initial());

  final IAuthFacade _authFacade;

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(
      authenticated: (value) async* {},
      defaultCoverURLsCached: (value) async* {},
      defaultCoverURLsLoaded: (value) async* {},
      sessionFetched: (value) async* {},
      splashPageLaunched: (value) async* {
        Either<AuthFailure, Unit> failureOrSuccess;

        yield const SplashState.processing();

        if (!_authFacade.isSignedIn()) {
          failureOrSuccess = await _authFacade.logInAnonymously();
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
