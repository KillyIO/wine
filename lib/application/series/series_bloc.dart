import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/i_series_repository.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';

part 'series_event.dart';
part 'series_state.dart';
part 'series_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class SeriesBloc extends Bloc<SeriesEvent, SeriesState> {
  /// @nodoc
  SeriesBloc(
    this._authFacade,
    this._seriesRepository,
    this._sessionsRepository,
    this._settingsRepository,
    this._userRepository,
  ) : super(SeriesState.initial()) {
    on<AuthorLoaded>((_, emit) async {
      await _fetchSettings(emit);
    });
    on<BookmarkButtonPressed>((_, emit) async {});
    on<DataSet>((_, emit) async {
      (await _sessionsRepository.fetchSession()).match(
        (session) {
          emit(
            state.copyWith(
              failureOption: const None(),
              session: session,
            ),
          );

          add(const SeriesEvent.sessionFetched());
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
    on<LaunchWithID>((value, emit) async {
      emit(state.copyWith(isProcessing: true));

      final series = value.series;

      if (series != null) {
        emit(
          state.copyWith(
            failureOption: const None(),
            series: series,
          ),
        );
      }

      await _loadSeries(emit);
    });
    on<LikeButtonPressed>((value, emit) async {
      (await _seriesRepository.updateSeriesLikes(
        state.session.uid,
        state.series.uid,
        liked: !value.isLiked,
      ))
          .match(
        (_) {
          final likesCount = state.series.likesCount;

          emit(
            state.copyWith(
              isLiked: !value.isLiked,
              failureOption: const None(),
              series: state.series.copyWith(
                likesCount: !value.isLiked ? likesCount + 1 : likesCount - 1,
              ),
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.series(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    });
    on<SeriesViewsUpdated>((_, emit) async {
      await _loadSeries(emit, reload: true);
    });
    on<SessionFetched>((_, emit) async {
      if (state.series.authorUID.getOrCrash() !=
          state.session.uid.getOrCrash()) {
        (await _userRepository.loadUser(state.series.authorUID)).match(
          (user) {
            emit(
              state.copyWith(
                author: user,
                failureOption: const None(),
              ),
            );

            add(const SeriesEvent.authorLoaded());
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.user(failure))),
                isProcessing: false,
              ),
            );
          },
        );
      } else {
        await _fetchSettings(emit);
      }
    });
    on<SettingsFetched>((_, emit) async {
      // TODO(SSebigo): fetch first chapter
      if (!_authFacade.isAnonymous) {
        await _updateSeriesViews(emit);
      }
    });
  }

  final IAuthFacade _authFacade;
  final ISeriesRepository _seriesRepository;
  final ISessionsRepository _sessionsRepository;
  final ISettingsRepository _settingsRepository;
  final IUserRepository _userRepository;

  FutureOr<void> _fetchSettings(Emitter<SeriesState> emit) async {
    (await _settingsRepository.fetchSettings()).match(
      (settings) {
        emit(
          state.copyWith(
            failureOption: const None(),
            settings: settings,
          ),
        );

        add(const SeriesEvent.settingsFetched());
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

  FutureOr<void> _loadSeries(
    Emitter<SeriesState> emit, {
    bool reload = false,
  }) async {
    (await _seriesRepository.loadSeriesByID(state.series.uid)).match(
      (series) {
        emit(
          state.copyWith(
            failureOption: const None(),
            isProcessing: !reload,
            series: series,
          ),
        );

        if (!reload) {
          add(const SeriesEvent.dataSet());
        }
      },
      (failure) {
        emit(
          state.copyWith(
            failureOption: Option.some(Err(CoreFailure.series(failure))),
            isProcessing: false,
          ),
        );
      },
    );
  }

  FutureOr<void> _updateSeriesViews(Emitter<SeriesState> emit) async {
    (await _seriesRepository.updateSeriesViews(
      state.session.uid,
      state.series.uid,
    ))
        .match(
      (updated) {
        emit(
          state.copyWith(
            failureOption: const None(),
            isProcessing: updated,
          ),
        );

        if (updated) {
          add(const SeriesEvent.seriesViewsUpdated());
        }
      },
      (failure) {
        emit(
          state.copyWith(
            failureOption: Option.some(Err(CoreFailure.series(failure))),
            isProcessing: false,
          ),
        );
      },
    );
  }
}
