import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/series/i_series_repository.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/utils/constants/library.dart';

part 'library_event.dart';
part 'library_state.dart';
part 'library_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  /// @nodoc
  LibraryBloc(
    this._seriesRepository,
    this._sessionsRepository,
  ) : super(LibraryState.initial()) {
    on<InitBloc>((_, emit) async {
      emit(
        state.copyWith(
          failureOption: const None(),
          isProcessing: true,
        ),
      );

      (await _sessionsRepository.fetchSession()).match(
        (user) {
          emit(
            state.copyWith(
              failureOption: const None(),
              session: user,
            ),
          );

          add(const LibraryEvent.sessionFetched());
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
    on<PageViewIndexChanged>((value, emit) {
      if (state.currentPageViewIdx != value.index) {
        var newIdx = value.index;
        if (value.index > libraryPageViewKeys.length - 1) {
          newIdx = 0;
        }
        if (value.index < 0) {
          newIdx = libraryPageViewKeys.length - 1;
        }
        emit(
          state.copyWith(
            currentPageViewIdx: newIdx,
            failureOption: Option.none(),
          ),
        );

        switch (state.currentPageViewIdx) {
          case 0:
            break;
          case 1:
            break;
          default:
        }
      }
    });
    on<SessionFetched>((value, emit) async {
      (await _seriesRepository.loadSeriesbyUserID(state.session.uid)).match(
        (series) {
          emit(
            state.copyWith(
              failureOption: Option.none(),
              isProcessing: false,
              seriesList: series,
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
    on<VerticalNavbarIndexChanged>((value, emit) {
      if (state.currentVerticalNavbarIdx != value.index) {
        var newIdx = value.index;
        if (value.index > libraryVerticalNavbarKeys.length - 1) {
          newIdx = 0;
        }
        if (value.index < 0) {
          newIdx = libraryVerticalNavbarKeys.length - 1;
        }
      }
    });
  }

  final ISeriesRepository _seriesRepository;
  final ISessionsRepository _sessionsRepository;
}
