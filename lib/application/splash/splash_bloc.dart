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
import 'package:wine/domain/sessions/i_sessions_repository.dart';
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
    this._sessionsRepository,
    this._settingsRepository,
    this._userRepository,
  ) : super(const SplashState.initial());

  final IAuthFacade _authFacade;
  final IDefaultCoversRepository _defaultCoversRepository;
  final ISessionsRepository _sessionsRepository;
  final ISettingsRepository _settingsRepository;
  final IUserRepository _userRepository;

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(
      authenticated: (_) async* {
        if (_authFacade.isAnonymous) {
          _fetchSettings();
        } else {
          yield* (await _defaultCoversRepository.loadDefaultCoverURLs()).fold(
            (failure) async* {
              yield SplashState.failure(CoreFailure.defaultCovers(failure));
            },
            (defaultCoverURLs) async* {
              add(SplashEvent.defaultCoverURLsLoaded(defaultCoverURLs));
            },
          );
        }
      },
      defaultCoverURLsCached: (_) async* {
        _fetchSettings();
      },
      defaultCoverURLsLoaded: (value) async* {
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
        if (_authFacade.isAnonymous) {
          yield const SplashState.goToHome();
        } else {
          yield* (await _userRepository
                  .loadUser(value.session.uid.getOrCrash()))
              .fold(
            (failure) async* {
              yield SplashState.failure(CoreFailure.user(failure));
            },
            (user) async* {
              add(SplashEvent.userLoaded(user));
            },
          );
        }
      },
      sessionNotFound: (_) async* {
        yield* (await _sessionsRepository.createSession()).fold(
          (failure) async* {
            yield SplashState.failure(CoreFailure.sessions(failure));
          },
          (session) async* {
            yield const SplashState.goToOnboarding();
          },
        );
      },
      splashPageLaunched: (_) async* {
        Either<AuthFailure, Unit> failureOrSuccess;

        if (!_authFacade.isLoggedIn) {
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
        await _fetchSession();
      },
      settingsInitialized: (_) async* {
        await _fetchSession();
      },
      settingsNotFound: (_) async* {
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
        yield* (await _sessionsRepository.updateSession(value.user)).fold(
            (failure) async* {
          yield SplashState.failure(CoreFailure.sessions(failure));
        }, (_) async* {
          yield const SplashState.goToHome();
        });
      },
    );
  }

  Future<void> _fetchSession() async {
    _sessionsRepository.fetchSession().fold(
      (_) {
        add(const SplashEvent.sessionNotFound());
      },
      (session) {
        add(SplashEvent.sessionFetched(session));
      },
    );
  }

  void _fetchSettings() {
    _settingsRepository.fetchSettings().fold(
      (_) {
        add(const SplashEvent.settingsNotFound());
      },
      (_) {
        add(const SplashEvent.settingsFetched());
      },
    );
  }
}
