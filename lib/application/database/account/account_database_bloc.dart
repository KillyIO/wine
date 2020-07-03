import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/injection.dart';
import 'package:wine/utils/methods.dart';

part 'account_database_event.dart';
part 'account_database_state.dart';

part 'account_database_bloc.freezed.dart';

@injectable
class AccountDatabaseBloc extends Bloc<AccountDatabaseEvent, AccountDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;

  AccountDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
    this._onlineChapterDatabaseFacade,
  ) : super(AccountDatabaseState.initial());

  @override
  Stream<AccountDatabaseState> mapEventToState(AccountDatabaseEvent event) async* {
    yield* event.map(
      accountPageLaunchedEVT: (event) async* {
        Session session = Session();

        yield state.copyWith(isFetching: true, databaseFailureOrSuccessOption: none());

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _localSessionDatabaseFacade.fetchSession();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SessionFetchedSCS) {
              session = success.session;
              add(AccountDatabaseEvent.sessionFetchedEVT(session));
            }
          },
        );

        yield state.copyWith(
          session: session,
          genres: Methods.getGenres(event.context),
          languages: Methods.getLanguages(event.context),
          copyrights: Methods.getCopyrights(event.context),
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      chaptersLoadedEVT: (event) async* {
        final List<String> seriesUids =
            getIt<Box<ChapterDraft>>().values.toList().map((chapterDraft) => chapterDraft.seriesUid).toList();

        if (seriesUids.isNotEmpty) {
          Map<String, Series> seriesMap = <String, Series>{};

          final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
              await _onlineSeriesDatabaseFacade.loadSeriesAsMapByUidList(seriesUids);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SeriesAsMapLoadedSCS) {
                seriesMap = success.seriesMap;
                add(const AccountDatabaseEvent.seriesAsMapLoadedEVT());
              }
            },
          );

          yield state.copyWith(
            databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
            isFetching: false,
            seriesMap: seriesMap,
          );
        }
      },
      loadMoreSeriesEVT: (event) async* {
        final List<Series> series = state.series;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadSeriesByUserId(state.session.uid, lastSeries: series.last);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesListLoadedSCS) {
              series.addAll(success.series);
            }
          },
        );

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess), series: series);
      },
      loadMoreChaptersEVT: (event) async* {},
      seriesLoadedEVT: (event) async* {
        final List<Chapter> chapters = <Chapter>[];

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.loadChaptersByUserId(state.session.uid, loadSeries: true);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterListLoadedSCS) {
              chapters.addAll(success.chapters);
              add(const AccountDatabaseEvent.chaptersLoadedEVT());
            }
          },
        );

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess), chapters: chapters);
      },
      seriesAsMapLoadedEVT: (event) async* {
        final List<SeriesDraft> seriesDraftsList = getIt<Box<SeriesDraft>>().values.toList();

        final Map<String, SeriesDraft> seriesDraftsMap = {
          for (final SeriesDraft seriesDraft in seriesDraftsList) seriesDraft.uid: seriesDraft,
        };

        yield state.copyWith(seriesDraftsMap: seriesDraftsMap);
      },
      sessionFetchedEVT: (event) async* {
        final List<Series> series = <Series>[];

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadSeriesByUserId(event.session.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesListLoadedSCS) {
              series.addAll(success.series);
              add(const AccountDatabaseEvent.seriesLoadedEVT());
            }
          },
        );

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess), series: series);
      },
    );
  }
}
