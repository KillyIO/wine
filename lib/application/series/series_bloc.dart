import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/chapter/chapter.dart';
import 'package:wine/domain/chapter/i_chapter_repository.dart';
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
    this._chapterRepository,
    this._seriesRepository,
    this._sessionsRepository,
    this._settingsRepository,
    this._userRepository,
  ) : super(SeriesState.initial()) {
    // TODO(SSebigo): try fetching last chapter read
    on<AuthorLoaded>((_, emit) async {
      await _fetchSettings(emit);
    });
    on<BookmarkButtonPressed>((value, emit) async {
      (await _seriesRepository.updateSeriesBookmarks(
        state.session.uid,
        state.series.uid,
        isBookmarked: !value.isBookmarked,
      ))
          .match(
        (_) {
          final bookmarksCount = state.series.bookmarksCount;

          emit(
            state.copyWith(
              isLiked: !value.isBookmarked,
              failureOption: const None(),
              series: state.series.copyWith(
                bookmarksCount: !value.isBookmarked
                    ? bookmarksCount + 1
                    : bookmarksCount - 1,
              ),
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.series(failure))),
            ),
          );
        },
      );
    });
    on<ChapterOneLoaded>((_, emit) async {
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

          add(const SeriesEvent.viewsUpdated());
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

        add(const SeriesEvent.seriesSet());
      } else {
        (await _seriesRepository.loadSeriesByID(state.series.uid)).match(
          (series) {
            emit(
              state.copyWith(
                failureOption: const None(),
                series: series,
              ),
            );

            add(const SeriesEvent.seriesSet());
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
    on<LikeButtonPressed>((value, emit) async {
      (await _seriesRepository.updateSeriesLikes(
        state.session.uid,
        state.series.uid,
        isLiked: !value.isLiked,
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
            ),
          );
        },
      );
    });
    on<LikeStatusLoaded>((_, emit) async {
      (await _seriesRepository.loadBookmarkStatus(
        state.session.uid,
        state.series.uid,
      ))
          .match(
        (isBookmarked) {
          emit(
            state.copyWith(
              failureOption: const None(),
              isBookmarked: isBookmarked,
              isProcessing: false,
            ),
          );

          add(const SeriesEvent.likeStatusLoaded());
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
    on<SeriesSet>((_, emit) async {
      (await _sessionsRepository.fetchSession()).match(
        (session) {
          emit(
            state.copyWith(
              authorIsUser: state.series.authorUID.getOrCrash() ==
                  session.uid.getOrCrash(),
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
    on<SessionFetched>((_, emit) async {
      if (!state.authorIsUser) {
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
      (await _chapterRepository.loadChapterBySeriesIDAndIndex(
        state.series.uid,
        1,
      ))
          .match(
        (chapter) {
          emit(
            state.copyWith(
              chapterOne: chapter.isPublished ? chapter : null,
              failureOption: const None(),
              isProcessing: !_authFacade.isAnonymous,
            ),
          );

          if (!_authFacade.isAnonymous) {
            add(const SeriesEvent.chapterOneLoaded());
          }
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.chapter(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    });
    on<ViewsUpdated>((_, emit) async {
      (await _seriesRepository.loadLikeStatus(
        state.session.uid,
        state.series.uid,
      ))
          .match(
        (isLiked) {
          emit(
            state.copyWith(
              failureOption: const None(),
              isLiked: isLiked,
            ),
          );

          add(const SeriesEvent.likeStatusLoaded());
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
  }

  final IAuthFacade _authFacade;
  final IChapterRepository _chapterRepository;
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
}
