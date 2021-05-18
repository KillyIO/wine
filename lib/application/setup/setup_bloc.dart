import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';

part 'setup_bloc.freezed.dart';
part 'setup_event.dart';
part 'setup_state.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class SetupBloc extends Bloc<SetupEvent, SetupState> {
  /// @nodoc
  SetupBloc(
    this._authFacade,
    this._defaultCoversRepository,
    this._sessionsRepository,
    this._settingsRepository,
    this._userRepository,
  ) : super(const SetupState.initial());

  final IAuthFacade _authFacade;
  final IDefaultCoversRepository _defaultCoversRepository;
  final ISessionsRepository _sessionsRepository;
  final ISettingsRepository _settingsRepository;
  final IUserRepository _userRepository;

  @override
  Stream<SetupState> mapEventToState(
    SetupEvent event,
  ) async* {
    yield* event.map(
      appLaunched: (_) async* {
        yield const SetupState.initial();

        if (_authFacade.isLoggedIn) {
          add(const SetupEvent.authenticated());
        } else {
          yield* (await _authFacade.logInAnonymously()).match(
            (_) async* {
              add(const SetupEvent.authenticated());
            },
            (failure) async* {
              yield SetupState.failure(CoreFailure.auth(failure));
            },
          );
        }
      },
      authenticated: (_) async* {
        if (_authFacade.isAnonymous) {
          await _fetchSettings();
        } else {
          yield* (await _defaultCoversRepository.loadDefaultCoverURLs()).match(
            (defaultCoverURLs) async* {
              add(SetupEvent.defaultCoverURLsLoaded(defaultCoverURLs));
            },
            (failure) async* {
              yield SetupState.failure(CoreFailure.defaultCovers(failure));
            },
          );
        }
      },
      defaultCoverURLsCached: (_) async* {
        await _fetchSettings();
      },
      defaultCoverURLsLoaded: (value) async* {
        yield* (await _defaultCoversRepository
                .cacheDefaultCoverURLs(value.defaultCoverURLs))
            .match(
          (_) async* {
            add(const SetupEvent.defaultCoverURLsCached());
          },
          (failure) async* {
            yield SetupState.failure(CoreFailure.defaultCovers(failure));
          },
        );
      },
      sessionFetched: (value) async* {
        if (_authFacade.isAnonymous) {
          yield const SetupState.initHomeBloc();
        } else {
          yield* (await _userRepository
                  .loadUser(value.session.uid.getOrCrash()))
              .match(
            (user) async* {
              add(SetupEvent.userLoaded(user));
            },
            (failure) async* {
              yield SetupState.failure(CoreFailure.user(failure));
            },
          );
        }
      },
      sessionNotFound: (_) async* {
        yield* (await _sessionsRepository.createSession()).match(
          (session) async* {
            yield const SetupState.navigateToOnboarding();
          },
          (failure) async* {
            yield SetupState.failure(CoreFailure.sessions(failure));
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
        yield* (await _settingsRepository.initializeSettings()).match(
          (_) async* {
            add(const SetupEvent.settingsInitialized());
          },
          (failure) async* {
            yield SetupState.failure(CoreFailure.settings(failure));
          },
        );
      },
      userLoaded: (value) async* {
        yield* (await _sessionsRepository.updateSession(value.user)).match(
          (_) async* {
            yield const SetupState.initHomeBloc();
          },
          (failure) async* {
            yield SetupState.failure(CoreFailure.sessions(failure));
          },
        );
      },
    );
  }

  Future<void> _fetchSession() async {
    (await _sessionsRepository.fetchSession()).match(
      (session) {
        add(SetupEvent.sessionFetched(session));
      },
      (_) {
        add(const SetupEvent.sessionNotFound());
      },
    );
  }

  Future<void> _fetchSettings() async {
    (await _settingsRepository.fetchSettings()).match(
      (_) {
        add(const SetupEvent.settingsFetched());
      },
      (_) {
        add(const SetupEvent.settingsNotFound());
      },
    );
  }
}
