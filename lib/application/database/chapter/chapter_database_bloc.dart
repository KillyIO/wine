import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/local/i_local_config_database_facade.dart';
import 'package:wine/domain/database/facades/local/i_local_session_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/failures/config_database_failure.dart';
import 'package:wine/domain/database/successes/chapter_database_success.dart';
import 'package:wine/domain/database/successes/config_database_success.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/count.dart';
import 'package:wine/domain/models/hive/config.dart';
import 'package:wine/domain/models/hive/session.dart';

part 'chapter_database_bloc.freezed.dart';
part 'chapter_database_event.dart';
part 'chapter_database_state.dart';

/// @nodoc
@injectable
class ChapterDatabaseBloc
    extends Bloc<ChapterDatabaseEvent, ChapterDatabaseState> {
  /// @nodoc
  ChapterDatabaseBloc(
    this._authenticationFacade,
    this._localConfigDatabaseFacade,
    this._localSessionDatabaseFacade,
    this._onlineChapterDatabaseFacade,
  ) : super(ChapterDatabaseState.initial());

  final IAuthenticationFacade _authenticationFacade;
  final ILocalConfigDatabaseFacade _localConfigDatabaseFacade;
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;

  @override
  Stream<ChapterDatabaseState> mapEventToState(
      ChapterDatabaseEvent event) async* {
    yield* event.map(
      bookmarkButtonPressedEVT: (event) async* {
        final failureOrSuccess = await _onlineChapterDatabaseFacade
            .updateChapterBookmarksAndBookmarksCount(
          userUID: state.session.uid,
          chapterUID: state.chapter.uid,
        );

        final isBookmarked = !state.isBookmarked;

        final count = state.bookmarksCount..count += isBookmarked ? 1 : -1;

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          bookmarksCount: count,
          isBookmarked: isBookmarked,
        );
      },
      bookmarksUpdatedEVT: (event) async* {
        var bookmarksCount = Count(count: 0);

        final failureOrSuccess = await _onlineChapterDatabaseFacade
            .loadChapterBookmarksCount(state.chapter.uid)
          ..fold(
            (_) {},
            (success) {
              if (success is ChapterStatsCountLoadedSCS) {
                bookmarksCount = success.count;
              }
            },
          );

        yield state.copyWith(
          bookmarksCount: bookmarksCount,
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      chapterBookmarksLoadedEVT: (event) async* {
        var isLiked = state.isLiked;

        final failureOrSuccess =
            await _onlineChapterDatabaseFacade.loadUserLikeStatus(
          userUID: state.session.uid,
          chapterUID: state.chapter.uid,
        )
              ..fold(
                (_) {},
                (success) {
                  if (success is ChapterStatsStatusLoadedSCS) {
                    isLiked = success.status;
                  }
                },
              );

        yield state.copyWith(
          isLiked: isLiked,
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (failureOrSuccess.isRight()) {
          add(const ChapterDatabaseEvent.chapterLikeStatusLoadedEVT());
        }
      },
      chapterLikesLoadedEVT: (event) async* {
        Either<DatabaseFailure, ChapterDatabaseSuccess> failureOrSuccess;

        var bookmarksCount = Count(count: 0);

        if (state.config.enableChaptersBookmarksCount) {
          failureOrSuccess = await _onlineChapterDatabaseFacade
              .loadChapterBookmarksCount(state.chapter.uid)
            ..fold(
              (_) {},
              (success) {
                if (success is ChapterStatsCountLoadedSCS) {
                  bookmarksCount = success.count;
                }
              },
            );
        }

        yield state.copyWith(
          bookmarksCount: bookmarksCount,
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (!_authenticationFacade.isAnonymous() &&
            (failureOrSuccess == null || failureOrSuccess.isRight())) {
          add(const ChapterDatabaseEvent.chapterBookmarksLoadedEVT());
        }
      },
      chapterLikeStatusLoadedEVT: (event) async* {
        var isBookmarked = state.isBookmarked;

        final failureOrSuccess =
            await _onlineChapterDatabaseFacade.loadUserBookmarkStatus(
          userUID: state.session.uid,
          chapterUID: state.chapter.uid,
        )
              ..fold(
                (_) {},
                (success) {
                  if (success is ChapterStatsStatusLoadedSCS) {
                    isBookmarked = success.status;
                  }
                },
              );

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          isBookmarked: isBookmarked,
        );
      },
      chapterLaunchedEVT: (event) async* {
        var session = state.session;

        final failureOrSuccess =
            await _localSessionDatabaseFacade.fetchSession()
              ..fold(
                (_) {},
                (success) {
                  if (success is SessionFetchedSCS) {
                    session = success.session;
                  }
                },
              );

        yield state.copyWith(
          chapter: event.chapter,
          session: session,
          sessionDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (failureOrSuccess.isRight()) {
          add(const ChapterDatabaseEvent.sessionFetchedEVT());
        }
      },
      chapterPublishedEVT: (event) async* {},
      chapterViewsLoadedEVT: (event) async* {
        Either<DatabaseFailure, ChapterDatabaseSuccess> failureOrSuccess;

        var likesCount = Count(count: 0);

        if (state.config.enableChaptersLikesCount) {
          failureOrSuccess = await _onlineChapterDatabaseFacade
              .loadChapterLikesCount(state.chapter.uid)
            ..fold(
              (_) {},
              (success) {
                if (success is ChapterStatsCountLoadedSCS) {
                  likesCount = success.count;
                }
              },
            );
        }

        yield state.copyWith(
          likesCount: likesCount,
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (failureOrSuccess == null || failureOrSuccess.isRight()) {
          add(const ChapterDatabaseEvent.chapterLikesLoadedEVT());
        }
      },
      chapterViewsUpdatedEVT: (event) async* {
        var viewsCount = Count(count: 0);

        Either<DatabaseFailure, ChapterDatabaseSuccess> failureOrSuccess;

        if (state.config.enableChaptersViewsCount) {
          failureOrSuccess = await _onlineChapterDatabaseFacade
              .loadChapterViewsCount(state.chapter.uid)
            ..fold(
              (_) {},
              (success) {
                if (success is ChapterStatsCountLoadedSCS) {
                  viewsCount = success.count;
                }
              },
            );
        }

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          viewsCount: viewsCount,
        );

        if (failureOrSuccess == null || failureOrSuccess.isRight()) {
          add(const ChapterDatabaseEvent.chapterViewsLoadedEVT());
        }
      },
      configFetchedEVT: (event) async* {
        Either<DatabaseFailure, ChapterDatabaseSuccess> failureOrSuccess;

        if (!_authenticationFacade.isAnonymous()) {
          failureOrSuccess = await _onlineChapterDatabaseFacade
              .updateChapterViewsAndViewsCount(
            userUID: state.session.uid,
            chapterUID: state.chapter.uid,
          );
        }

        yield state.copyWith(
          configDatabaseFailureOrSuccessOption: none(),
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (failureOrSuccess == null || failureOrSuccess.isRight()) {
          add(const ChapterDatabaseEvent.chapterViewsUpdatedEVT());
        }
      },
      likeButtonPressedEVT: (event) async* {
        final failureOrSuccess =
            await _onlineChapterDatabaseFacade.updateChapterLikesAndLikesCount(
          userUID: state.session.uid,
          chapterUID: state.chapter.uid,
        );

        final isLiked = !state.isLiked;

        final count = state.likesCount..count += isLiked ? 1 : -1;

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          likesCount: count,
          isLiked: isLiked,
        );
      },
      likesUpdatedEVT: (event) async* {
        var likesCount = Count(count: 0);

        final failureOrSuccess = await _onlineChapterDatabaseFacade
            .loadChapterLikesCount(state.chapter.uid)
          ..fold(
            (_) {},
            (success) {
              if (success is ChapterStatsCountLoadedSCS) {
                likesCount = success.count;
              }
            },
          );

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          likesCount: likesCount,
        );
      },
      loadNextChaptersEVT: (event) async* {
        var sameAuthorChapter = Chapter();
        var nextChapters = <Chapter>[];

        final failureOrSuccess = await _onlineChapterDatabaseFacade
            .loadChaptersBySeriesUIDAndIndex(
          state.chapter.seriesUID,
          state.chapter.index + 1,
        )
          ..fold(
            (_) {},
            (success) {
              if (success is ChaptersLoadedSCS) {
                if (success.chapters.isNotEmpty) {
                  final sameAuthorIdx = success.chapters.indexWhere(
                    (chapter) => chapter.authorUID == state.chapter.authorUID,
                  );

                  if (sameAuthorIdx != -1) {
                    sameAuthorChapter =
                        success.chapters.removeAt(sameAuthorIdx);
                  }
                  nextChapters = success.chapters;
                }
              }
            },
          );

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          nextChapters: nextChapters,
          nextSameAuthorChapter: sameAuthorChapter,
        );
      },
      previousChapterButtonPressedEVT: (event) async* {},
      scrollEVT: (event) async* {
        final percentProgress =
            event.currentScrollPosition / event.maxScrollPosition;

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          percentProgress: percentProgress,
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      sessionFetchedEVT: (event) async* {
        var config = state.config;

        final failureOrSuccess = await _localConfigDatabaseFacade.fetchConfig()
          ..fold(
            (_) {},
            (success) {
              if (success is ConfigFetchedSCS) {
                config = success.config;
              }
            },
          );

        yield state.copyWith(
          config: config,
          configDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          sessionDatabaseFailureOrSuccessOption: none(),
        );

        if (failureOrSuccess.isRight()) {
          add(const ChapterDatabaseEvent.configFetchedEVT());
        }
      },
      showOrHideNavbarEVT: (event) async* {
        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
          showNavbar: !state.showNavbar,
        );
      },
      toggleChapterAdditionalInfoEVT: (event) async* {
        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
          showChapterAdditionalInfo: !state.showChapterAdditionalInfo,
        );
      },
    );
  }
}
