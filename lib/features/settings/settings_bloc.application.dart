import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';

import 'package:wine/core/core_failure.domain.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/features/auth/i_auth_facade.domain.dart';

part 'settings_bloc.application.freezed.dart';
part 'settings_event.application.dart';
part 'settings_state.application.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  /// @nodoc
  SettingsBloc(
    this._authFacade,
    this._sessionsRepository,
    this._settingsRepository,
  ) : super(SettingsState.initial()) {
    on<Init>((_, emit) async {
      emit(
        state.copyWith(
          failureOption: const None(),
          isProcessing: true,
        ),
      );

      if (!_authFacade.isAnonymous) {
        (await _sessionsRepository.fetchSession()).match(
          (user) {
            emit(state.copyWith(username: user.username.getOrCrash()));

            add(const SettingsEvent.sessionFetched());
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.sessions(failure))),
                isProcessing: false,
              ),
            );
          },
        );
      } else {
        await _fetchSettings(emit);
      }
    });
    on<LogOutPressed>((_, emit) async {
      emit(
        state.copyWith(
          failureOption: const None(),
          isProcessing: true,
        ),
      );

      (await _sessionsRepository.deleteSession()).match(
        (_) {
          add(const SettingsEvent.sessionDeleted());
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.sessions(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    });
    on<SessionDeleted>(
      (_, emit) async => (await _authFacade.logOut()).match(
        (_) {
          emit(
            state.copyWith(
              isLoggedOut: true,
              isProcessing: false,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.auth(failure))),
              isProcessing: false,
            ),
          );
        },
      ),
    );
    on<SessionFetched>((_, emit) async => await _fetchSettings(emit));
  }

  final IAuthFacade _authFacade;
  final ISessionsRepository _sessionsRepository;
  final ISettingsRepository _settingsRepository;

  FutureOr<void> _fetchSettings(Emitter<SettingsState> emit) async {
    (await _settingsRepository.fetchSettings()).match(
      (settings) {
        emit(
          state.copyWith(
            isProcessing: false,
            settings: settings,
          ),
        );
      },
      (failure) {
        emit(
          state.copyWith(
            failureOption: Option.some(Err(CoreFailure.settings(failure))),
            isProcessing: false,
          ),
        );
      },
    );
  }
}
