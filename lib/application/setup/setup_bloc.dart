import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
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
  ) : super(const SetupState.initial()) {
    on<AppLaunched>((_, emit) async {
      emit(const SetupState.initial());

      if (_authFacade.isLoggedIn) {
        add(const SetupEvent.authenticated());
      } else {
        (await _authFacade.logInAnonymously()).match(
          (_) {
            add(const SetupEvent.authenticated());
          },
          (failure) {
            emit(SetupState.failure(CoreFailure.auth(failure)));
          },
        );
      }
    });
    on<Authenticated>((_, emit) async {
      if (_authFacade.isAnonymous) {
        await _fetchSettings();
      } else {
        (await _defaultCoversRepository.loadDefaultCoverURLs()).match(
          (defaultCoverURLs) {
            add(SetupEvent.defaultCoverURLsLoaded(defaultCoverURLs));
          },
          (failure) {
            emit(SetupState.failure(CoreFailure.defaultCovers(failure)));
          },
        );
      }
    });
    on<DefaultCoverURLsCached>((_, __) async => _fetchSettings());
    on<DefaultCoverURLsLoaded>(
      (value, emit) async => (await _defaultCoversRepository
              .cacheDefaultCoverURLs(value.defaultCoverURLs))
          .match(
        (_) {
          add(const SetupEvent.defaultCoverURLsCached());
        },
        (failure) {
          emit(SetupState.failure(CoreFailure.defaultCovers(failure)));
        },
      ),
    );
    on<SessionFetched>((value, emit) async {
      if (_authFacade.isAnonymous) {
        emit(const SetupState.initHomeBloc());
      } else {
        (await _userRepository.loadUser(value.session.uid.getOrCrash())).match(
          (user) {
            add(SetupEvent.userLoaded(user));
          },
          (failure) {
            emit(SetupState.failure(CoreFailure.user(failure)));
          },
        );
      }
    });
    on<SessionNotFound>(
      (_, emit) async => (await _sessionsRepository.createSession()).match(
        (session) {
          if (kIsWeb) {
            emit(const SetupState.initHomeBloc());
          } else {
            emit(const SetupState.navigateToOnboarding());
          }
        },
        (failure) {
          emit(SetupState.failure(CoreFailure.sessions(failure)));
        },
      ),
    );
    on<SettingsFetched>((_, __) async => await _fetchSession());
    on<SettingsInitialized>((_, __) async => await _fetchSession());
    on<SettingsNotFound>(
      (_, emit) async => (await _settingsRepository.initializeSettings()).match(
        (_) {
          add(const SetupEvent.settingsInitialized());
        },
        (failure) {
          emit(SetupState.failure(CoreFailure.settings(failure)));
        },
      ),
    );
    on<UserLoaded>(
      (value, emit) async =>
          (await _sessionsRepository.updateSession(value.user)).match(
        (_) {
          emit(const SetupState.initHomeBloc());
        },
        (failure) {
          emit(SetupState.failure(CoreFailure.sessions(failure)));
        },
      ),
    );
  }

  final IAuthFacade _authFacade;
  final IDefaultCoversRepository _defaultCoversRepository;
  final ISessionsRepository _sessionsRepository;
  final ISettingsRepository _settingsRepository;
  final IUserRepository _userRepository;

  FutureOr<void> _fetchSession() async {
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
