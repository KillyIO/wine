import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/series/i_series_repository.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
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
    this._seriesRepository,
    this._sessionsRepository,
    this._userRepository,
  ) : super(SeriesState.initial()) {
    on<FetchSession>((_, emit) async {
      (await _sessionsRepository.fetchSession()).match(
        (session) {
          emit(
            state.copyWith(
              failureOption: const None(),
              session: session,
            ),
          );

          if (state.series.authorUID.getOrCrash() != session.uid.getOrCrash()) {
            add(const SeriesEvent.loadAuthor());
          }
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

        add(const SeriesEvent.fetchSession());
      } else {
        (await _seriesRepository.loadSeriesByID(value.id)).match(
          (series) {
            emit(
              state.copyWith(
                failureOption: const None(),
                series: series,
              ),
            );

            add(const SeriesEvent.fetchSession());
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
    });
    on<LoadAuthor>((_, emit) async {
      (await _userRepository.loadUser(state.series.authorUID)).match(
        (user) {
          emit(
            state.copyWith(
              author: user,
              failureOption: const None(),
            ),
          );
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
    });
  }

  final ISeriesRepository _seriesRepository;
  final ISessionsRepository _sessionsRepository;
  final IUserRepository _userRepository;
}
