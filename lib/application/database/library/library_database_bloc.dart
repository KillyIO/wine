import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:models/models.dart';

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/local/i_local_session_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_chapter_draft_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_series_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_series_draft_database_facade.dart';
import 'package:wine/domain/database/successes/chapter_database_success.dart';
import 'package:wine/domain/database/successes/chapter_draft_database_success.dart';
import 'package:wine/domain/database/successes/series_database_success.dart';
import 'package:wine/domain/database/successes/series_draft_database_success.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/utils/getters.dart';

part 'library_database_bloc.freezed.dart';
part 'library_database_event.dart';
part 'library_database_state.dart';

/// @nodoc
@injectable
class LibraryDatabaseBloc
    extends Bloc<LibraryDatabaseEvent, LibraryDatabaseState> with Getters {
  /// @nodoc
  LibraryDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
    this._onlineSeriesDraftDatabaseFacade,
    this._onlineChapterDatabaseFacade,
    this._onlineChapterDraftDatabaseFacade,
  ) : super(LibraryDatabaseState.initial());

  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;
  final IOnlineSeriesDraftDatabaseFacade _onlineSeriesDraftDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;
  final IOnlineChapterDraftDatabaseFacade _onlineChapterDraftDatabaseFacade;

  @override
  Stream<LibraryDatabaseState> mapEventToState(
    LibraryDatabaseEvent event,
  ) async* {
    yield* event.map(
      chapterDraftDeletedEVT: (event) async* {
        final chapterDrafts = state.chapterDrafts
          ..removeWhere((el) => event.chapterDraftUID != null
              ? el.uid == event.chapterDraftUID
              : el.seriesUID == event.seriesDraftUID);

        yield state.copyWith(chapterDrafts: chapterDrafts);
      },
      chapterDraftSavedEVT: (event) async* {
        final chapterDrafts = state.chapterDrafts;

        final idx =
            chapterDrafts.indexWhere((el) => el.uid == event.chapterDraft.uid);

        chapterDrafts.removeAt(idx);
        // ignore: cascade_invocations
        chapterDrafts.insert(idx, event.chapterDraft);

        yield state.copyWith(chapterDrafts: chapterDrafts);
      },
      chapterPublishedEVT: (event) async* {
        final chapters = state.chapters..insert(0, event.chapter);
        yield state.copyWith(chapters: chapters);
      },
      chapterTileHeldEVT: (event) async* {},
      indexChangedToChapterBookmarkedEVT: (event) async* {
        final layoutDataUpdated = state.layoutDataUpdated;

        if (!layoutDataUpdated.last.last) {
          yield* resetFailureOrSuccessOptions();

          final chapters = state.bookmarkedChapters;

          final failureOrSuccess = await _onlineChapterDatabaseFacade
              .loadBookmarkedChaptersByUserUID(state.session.uid)
            ..fold(
              (_) {},
              (success) {
                if (success is ChaptersLoadedSCS) {
                  chapters.addAll(success.chapters);
                }
              },
            );

          layoutDataUpdated.last.last = true;

          yield state.copyWith(
            bookmarkedChapters: chapters,
            chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
            isLoading: false,
          );
        }
      },
      indexChangedToChapterDraftsEVT: (event) async* {
        final layoutDataUpdated = state.layoutDataUpdated;

        if (!layoutDataUpdated.last[1]) {
          yield* resetFailureOrSuccessOptions();

          final chapters = state.chapterDrafts;

          final failureOrSuccess = await _onlineChapterDraftDatabaseFacade
              .loadChapterDraftsByUserUID(state.session.uid)
            ..fold(
              (_) {},
              (success) {
                if (success is ChapterDraftsLoadedSCS) {
                  chapters.addAll(success.chapterDrafts);
                }
              },
            );

          layoutDataUpdated.last[1] = true;

          yield state.copyWith(
            chapterDraftDatabaseFailureOrSuccessOption:
                optionOf(failureOrSuccess),
            chapterDrafts: chapters,
            isLoading: false,
            layoutDataUpdated: layoutDataUpdated,
          );
        }
      },
      indexChangedToChapterPublishedEVT: (event) async* {
        final layoutDataUpdated = state.layoutDataUpdated;

        if (!layoutDataUpdated.last.first) {
          yield* resetFailureOrSuccessOptions();

          final chapters = <Chapter>[];

          final failureOrSuccess = await _onlineChapterDatabaseFacade
              .loadChaptersByUserUID(state.session.uid)
            ..fold(
              (_) {},
              (success) {
                if (success is ChaptersLoadedSCS) {
                  chapters.addAll(success.chapters);
                }
              },
            );

          layoutDataUpdated.last.first = true;

          yield state.copyWith(
            chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
            chapters: chapters,
            isLoading: false,
            layoutDataUpdated: layoutDataUpdated,
          );
        }
      },
      indexChangedToSeriesBookmarkedEVT: (event) async* {
        final layoutDataUpdated = state.layoutDataUpdated;

        if (!layoutDataUpdated.first.last) {
          yield* resetFailureOrSuccessOptions();

          final seriesList = <Series>[];

          final failureOrSuccess = await _onlineSeriesDatabaseFacade
              .loadBookmarkedSeriesListByUserUID(state.session.uid)
            ..fold(
              (_) {},
              (success) {
                if (success is SeriesListLoadedSCS) {
                  seriesList.addAll(success.seriesList);
                }
              },
            );

          layoutDataUpdated.first.last = true;

          yield state.copyWith(
            bookmarkedSeriesList: seriesList,
            isLoading: false,
            layoutDataUpdated: layoutDataUpdated,
            seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }
      },
      indexChangedToSeriesDraftsEVT: (event) async* {
        final layoutDataUpdated = state.layoutDataUpdated;

        if (!layoutDataUpdated.first[1]) {
          yield* resetFailureOrSuccessOptions();

          final seriesDrafts = <Series>[];

          final failureOrSuccess = await _onlineSeriesDraftDatabaseFacade
              .loadSeriesDraftsByUserUID(state.session.uid)
            ..fold(
              (_) {},
              (success) {
                if (success is SeriesDraftsLoadedSCS) {
                  seriesDrafts.addAll(success.seriesDrafts);
                }
              },
            );

          layoutDataUpdated.first[1] = true;

          yield state.copyWith(
            isLoading: false,
            layoutDataUpdated: layoutDataUpdated,
            seriesDraftDatabaseFailureOrSuccessOption:
                optionOf(failureOrSuccess),
            seriesDrafts: seriesDrafts,
          );
        }
      },
      indexChangedToSeriesPublishedEVT: (event) async* {
        final layoutDataUpdated = state.layoutDataUpdated;

        if (!layoutDataUpdated.first.first) {
          yield* resetFailureOrSuccessOptions();

          final seriesList = <Series>[];

          final failureOrSuccess = await _onlineSeriesDatabaseFacade
              .loadSeriesListByUserUID(state.session.uid)
            ..fold(
              (_) {},
              (success) {
                if (success is SeriesListLoadedSCS) {
                  seriesList.addAll(success.seriesList);
                }
              },
            );

          layoutDataUpdated.first.first = true;

          yield state.copyWith(
            isLoading: false,
            layoutDataUpdated: layoutDataUpdated,
            seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
            seriesList: seriesList,
          );
        }
      },
      libraryLaunchedEVT: (event) async* {
        yield* resetFailureOrSuccessOptions();

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
        final callSuccess = failureOrSuccess.isRight();

        final layoutDataUpdated = <List<bool>>[];
        for (var i = 0; i < libraryNavbarItemsKeys.length; i++) {
          layoutDataUpdated.add(<bool>[]);
          for (var j = 0; j < libraryVerticalNavbarItemsKeys.length; j++) {
            layoutDataUpdated[i].add(false);
          }
        }

        yield state.copyWith(
          isLoading: callSuccess,
          layoutDataUpdated: layoutDataUpdated,
          session: session,
          sessionDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (callSuccess) {
          add(const LibraryDatabaseEvent.indexChangedToSeriesPublishedEVT());
        }
      },
      seriesDraftDeletedEVT: (event) async* {
        final seriesDrafts = state.seriesDrafts
          ..removeWhere((el) => el.uid == event.seriesDraftUID);

        yield state.copyWith(seriesDrafts: seriesDrafts);
      },
      seriesDraftSavedEVT: (event) async* {
        final seriesDrafts = state.seriesDrafts;

        final idx =
            seriesDrafts.indexWhere((el) => el.uid == event.seriesDraft.uid);

        seriesDrafts.removeAt(idx);
        // ignore: cascade_invocations
        seriesDrafts.insert(idx, event.seriesDraft);

        yield state.copyWith(seriesDrafts: seriesDrafts);
      },
      seriesPublishedEVT: (event) async* {
        final seriesList = state.seriesList..insert(0, event.series);
        yield state.copyWith(seriesList: seriesList);
      },
    );
  }

  /// @nodoc
  Stream<LibraryDatabaseState> resetFailureOrSuccessOptions() async* {
    yield state.copyWith(
      chapterDatabaseFailureOrSuccessOption: none(),
      chapterDraftDatabaseFailureOrSuccessOption: none(),
      isLoading: true,
      seriesDatabaseFailureOrSuccessOption: none(),
      seriesDraftDatabaseFailureOrSuccessOption: none(),
      sessionDatabaseFailureOrSuccessOption: none(),
    );
  }
}
