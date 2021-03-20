import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/session/i_session_repository.dart';
import 'package:wine/domain/settings/i_ssettings_repository.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';

part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

/// @nodoc
@injectable
class SplashBloc extends Bloc<SplashEvent, SplashState> {
  /// @nodoc
  SplashBloc(
    this._authFacade,
    this._defaultCoversRepository,
    this._sessionRepository,
    this._settingsRepository,
    this._userRepository,
  ) : super(const SplashState.initial());

  final IAuthFacade _authFacade;
  final IDefaultCoversRepository _defaultCoversRepository;
  final ISessionRepository _sessionRepository;
  final ISettingsRepository _settingsRepository;
  final IUserRepository _userRepository;

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(
      authenticated: (_) async* {
        debugPrint('=== authenticated ===');
        yield* (await _defaultCoversRepository.loadDefaultCoverURLs()).fold(
          (failure) async* {
            yield SplashState.failure(CoreFailure.defaultCovers(failure));
          },
          (defaultCoverURLs) async* {
            add(SplashEvent.defaultCoverURLsLoaded(defaultCoverURLs));
          },
        );
      },
      defaultCoverURLsCached: (_) async* {
        debugPrint('=== defaultCoverURLsCached ===');
        (await _settingsRepository.fetchSettings()).fold(
          (_) {
            add(const SplashEvent.settingsNotFound());
          },
          (_) {
            add(const SplashEvent.settingsFetched());
          },
        );
      },
      defaultCoverURLsLoaded: (value) async* {
        debugPrint('=== defaultCoverURLsLoaded ===');
        yield* (await _defaultCoversRepository
                .cacheDefaultCoverURLs(value.defaultCoverURLs))
            .fold(
          (failure) async* {
            yield SplashState.failure(CoreFailure.defaultCovers(failure));
          },
          (_) async* {
            add(const SplashEvent.defaultCoverURLsCached());
          },
        );
      },
      sessionFetched: (value) async* {
        debugPrint('=== sessionFetched ===');
        yield* (await _userRepository.loadUser(value.session.uid.getOrCrash()))
            .fold(
          (failure) async* {
            yield SplashState.failure(CoreFailure.user(failure));
          },
          (user) async* {
            add(SplashEvent.userLoaded(user));
          },
        );
      },
      sessionNotFound: (_) async* {
        debugPrint('=== sessionNotFound ===');
        yield* (await _sessionRepository.fetchSession()).fold(
          (failure) async* {
            yield SplashState.failure(CoreFailure.session(failure));
          },
          (session) async* {
            yield const SplashState.goToOnboarding();
          },
        );
      },
      splashPageLaunched: (_) async* {
        debugPrint('=== splashPageLaunched ===');
        Either<AuthFailure, Unit> failureOrSuccess;

        if (!_authFacade.isLoggedIn()) {
          failureOrSuccess = await _authFacade.logInAnonymously();
        }

        yield* failureOrSuccess.fold(
          (failure) async* {
            yield SplashState.failure(CoreFailure.auth(failure));
          },
          (_) async* {
            add(const SplashEvent.authenticated());
          },
        );
      },
      settingsFetched: (_) async* {
        debugPrint('=== settingsFetched ===');
        await _fetchSession();
      },
      settingsInitialized: (_) async* {
        debugPrint('=== settingsInitialized ===');
        await _fetchSession();
      },
      settingsNotFound: (_) async* {
        debugPrint('=== settingsNotFound ===');
        yield* (await _settingsRepository.initializeSettings()).fold(
          (failure) async* {
            yield SplashState.failure(CoreFailure.settings(failure));
          },
          (_) async* {
            add(const SplashEvent.settingsInitialized());
          },
        );
      },
      userLoaded: (value) async* {
        debugPrint('=== userLoaded ===');
        yield* (await _sessionRepository.updateSession(value.user)).fold(
            (failure) async* {
          yield SplashState.failure(CoreFailure.session(failure));
        }, (_) async* {
          yield const SplashState.goToHome();
        });
      },
    );
  }

  Future<void> _fetchSession() async {
    (await _sessionRepository.fetchSession()).fold(
      (_) {
        add(const SplashEvent.sessionNotFound());
      },
      (session) {
        add(SplashEvent.sessionFetched(session));
      },
    );
  }
}
