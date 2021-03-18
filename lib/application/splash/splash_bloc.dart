import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/settings/i_ssettings_repository.dart';
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
    this._settingsRepository,
  ) : super(const SplashState.initial());

  final IAuthFacade _authFacade;
  final IDefaultCoversRepository _defaultCoversRepository;
  final ISettingsRepository _settingsRepository;

  @override
  Stream<SplashState> mapEventToState(
    SplashEvent event,
  ) async* {
    yield* event.map(
      authenticated: (_) async* {
        yield* (await _defaultCoversRepository.loadDefaultCoverURLs()).fold(
          (failure) async* {
            yield SplashState.failure(CoreFailure.defaultCovers(failure));
          },
          (defaultCoverURLs) async* {
            add(SplashEvent.defaultCoverURLsLoaded(defaultCoverURLs));
          },
        );
      },
      defaultCoverURLsCached: (_) async* {},
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
      sessionFetched: (value) async* {},
      sessionNotFound: (_) async* {},
      splashPageLaunched: (_) async* {
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
      settingsFetched: (_) async* {},
      settingsInitialized: (_) async* {},
      settingsNotFound: (_) async* {},
      userLoaded: (value) async* {},
    );
  }
}
