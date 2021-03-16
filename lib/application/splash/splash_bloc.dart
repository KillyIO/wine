import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/domain/settings/i_ssettings_repository.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

/// @nodoc
@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  /// @nodoc
  SplashBloc(
    this._authFacade,
    this._settingsRepository,
  ) : super(const SplashState.initial());

  final IAuthFacade _authFacade;
  final ISettingsRepository _settingsRepository;

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(
      authenticated: (_) async* {
        yield const SplashState.processing();

        final failureOrSuccess = await _settingsRepository.initializeSettings();
        // final callSuccess = failureOrSuccess.isRight();

        // yield state.copyWith(
        //   configDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        //   isUpdating: callSuccess,
        //   placeholderDatabaseFailureOrSuccessOption: none(),
        //   sessionDatabaseFailureOrSuccessOption: none(),
        //   userDatabaseFailureOrSuccessOption: none(),
        // );

        if (failureOrSuccess.isRight()) {
          add(const SplashEvent.settingsInitialized());
        }
      },
      defaultCoverURLsCached: (_) async* {},
      defaultCoverURLsLoaded: (value) async* {},
      sessionFetched: (value) async* {},
      sessionNotFetched: (_) async* {},
      splashPageLaunched: (_) async* {
        yield const SplashState.processing();

        Either<AuthFailure, Unit> failureOrSuccess;

        if (!_authFacade.isSignedIn()) {
          failureOrSuccess = await _authFacade.logInAnonymously();
        }

        if (failureOrSuccess.isRight()) {
          add(const SplashEvent.authenticated());
        } else {
          yield const SplashState.failure();
        }
      },
      settingsInitialized: (_) async* {},
      userLoaded: (value) async* {},
    );
  }
}
