import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rustic/option.dart';
import 'package:rustic/result.dart';

import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings.dart';

part 'settings_bloc.freezed.dart';
part 'settings_event.dart';
part 'settings_state.dart';

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
  ) : super(SettingsState.initial());

  final IAuthFacade _authFacade;
  final ISessionsRepository _sessionsRepository;
  final ISettingsRepository _settingsRepository;

  @override
  Stream<SettingsState> mapEventToState(
    SettingsEvent event,
  ) async* {
    yield* event.map(
      initBloc: (_) async* {
        yield state.copyWith(
          failureOption: const None(),
          isProcessing: true,
        );

        yield* (await _sessionsRepository.fetchSession()).match(
          (user) async* {
            yield state.copyWith(
              isProcessing: false,
              username: user.username.getOrCrash(),
            );

            add(const SettingsEvent.sessionFetched());
          },
          (failure) async* {
            yield state.copyWith(
              failureOption: Option(Err(CoreFailure.sessions(failure))),
              isProcessing: false,
            );
          },
        );
      },
      loggedOut: (_) async* {
        yield* (await _sessionsRepository.createSession()).match(
          (_) async* {
            add(const SettingsEvent.sessionCreated());
          },
          (failure) async* {
            yield state.copyWith(
              failureOption: Option(Err(CoreFailure.sessions(failure))),
              isProcessing: false,
            );
          },
        );
      },
      logOutPressed: (_) async* {
        yield state.copyWith(
          failureOption: const None(),
          isProcessing: true,
        );

        yield* (await _sessionsRepository.deleteSession()).match(
          (_) async* {
            add(const SettingsEvent.sessionDeleted());
          },
          (failure) async* {
            yield state.copyWith(
              failureOption: Option(Err(CoreFailure.sessions(failure))),
              isProcessing: false,
            );
          },
        );
      },
      sessionCreated: (_) async* {
        yield* (await _settingsRepository.initializeSettings()).match(
          (_) async* {
            yield state.copyWith(
              isLoggedOut: true,
              isProcessing: false,
            );
          },
          (failure) async* {
            yield state.copyWith(
              failureOption: Option(Err(CoreFailure.settings(failure))),
              isProcessing: false,
            );
          },
        );
      },
      sessionDeleted: (_) async* {
        yield* (await _authFacade.logOut()).match(
          (_) async* {
            add(const SettingsEvent.loggedOut());
          },
          (failure) async* {
            yield state.copyWith(
              failureOption: Option(Err(CoreFailure.auth(failure))),
              isProcessing: false,
            );
          },
        );
      },
      sessionFetched: (_) async* {
        yield* (await _settingsRepository.fetchSettings()).match(
          (settings) async* {
            yield state.copyWith(
              isProcessing: false,
              settings: settings,
            );
          },
          (failure) async* {
            yield state.copyWith(
              failureOption: Option(Err(CoreFailure.settings(failure))),
              isProcessing: false,
            );
          },
        );
      },
    );
  }
}
