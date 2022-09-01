import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/features/auth/i_auth_facade.domain.dart';
import 'package:wine/features/default_covers/default_cover.domain.dart';
import 'package:wine/features/default_covers/i_default_covers_repository.domain.dart';
import 'package:wine/features/sessions/i_sessions_repository.domain.dart';
import 'package:wine/features/settings/i_settings_repository.domain.dart';
import 'package:wine/features/user/i_user_repository.domain.dart';
import 'package:wine/features/user/user.domain.dart';

part 'setup_bloc.application.freezed.dart';
part 'setup_event.application.dart';
part 'setup_state.application.dart';

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
    on<SettingsFetched>((_, emit) async {
      if (!_authFacade.isAnonymous) {
        await _fetchSession(emit);
      } else {
        emit(const SetupState.content());
      }
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
    on<SettingsInitialized>((_, emit) async {
      if (!_authFacade.isAnonymous) {
        await _fetchSession(emit);
      } else {
        emit(const SetupState.content());
      }
    });
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
    on<DefaultCoversCached>((_, __) async => _fetchSettings());
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
