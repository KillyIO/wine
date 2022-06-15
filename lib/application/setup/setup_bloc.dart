import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/core/core_failure.domain.dart';
import 'package:wine/domain/default_covers/default_cover.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/features/auth/i_auth_facade.domain.dart';
import 'package:wine/features/user/i_user_repository.domain.dart';
import 'package:wine/features/user/user.domain.dart';

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
        (await _defaultCoversRepository.loadDefaultCovers()).match(
          (defaultCoverURLs) {
            add(SetupEvent.defaultCoversLoaded(defaultCoverURLs));
          },
          (failure) {
            emit(SetupState.failure(CoreFailure.defaultCovers(failure)));
          },
        );
      }
    });
    on<DefaultCoversCached>((_, __) async => _fetchSettings());
    on<DefaultCoversLoaded>((value, emit) async {
      (await _defaultCoversRepository.cacheDefaultCovers(value.defaultCovers))
          .match(
        (_) {
          add(const SetupEvent.defaultCoversCached());
        },
        (failure) {
          emit(SetupState.failure(CoreFailure.defaultCovers(failure)));
        },
      );
    });
    on<SessionFetched>((value, emit) async {
      (await _userRepository.loadUser(value.session.uid)).match(
        (user) {
          add(SetupEvent.userLoaded(user));
        },
        (failure) {
          emit(SetupState.failure(CoreFailure.user(failure)));
        },
      );
    });
    on<SettingsFetched>((_, emit) async {
      if (!_authFacade.isAnonymous) {
        await _fetchSession(emit);
      } else {
        emit(const SetupState.content());
      }
    });
    on<SettingsInitialized>((_, emit) async {
      if (!_authFacade.isAnonymous) {
        await _fetchSession(emit);
      } else {
        emit(const SetupState.content());
      }
    });
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
          (await _sessionsRepository.insertSession(value.user)).match(
        (_) {
          emit(const SetupState.content());
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

  FutureOr<void> _fetchSession(Emitter<SetupState> emit) async {
    (await _sessionsRepository.fetchSession()).match(
      (session) {
        add(SetupEvent.sessionFetched(session));
      },
      (failure) {
        emit(const SetupState.content());
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
