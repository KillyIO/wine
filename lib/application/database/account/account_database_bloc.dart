import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/models/chapter_minified.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series_minified.dart';
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
      chapterTileHeldEVT: (event) async* {},
      loadMoreSeriesMinifiedEVT: (event) async* {
        final List<SeriesMinified> seriesMinified = state.seriesMinified;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess = await _onlineSeriesDatabaseFacade
            .loadSeriesMinifiedByUserUid(state.session.uid, lastSeriesMinified: seriesMinified.last);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesMinifiedListLoadedSCS) {
              seriesMinified.addAll(success.seriesMinified);
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          seriesMinified: seriesMinified,
        );
      },
      loadMoreChaptersMinifiedEVT: (event) async* {},
      seriesMinifiedLoadedEVT: (event) async* {
        final List<ChapterMinified> chaptersMinified = <ChapterMinified>[];

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.loadChaptersMinifiedByUserUid(state.session.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is ChapterMinifiedListLoadedSCS) {
              chaptersMinified.addAll(success.chaptersMinified);
            }
          },
        );

        yield state.copyWith(
          chaptersMinified: chaptersMinified,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          isFetching: false,
        );
      },
      sessionFetchedEVT: (event) async* {
        final List<SeriesMinified> seriesMinified = <SeriesMinified>[];

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineSeriesDatabaseFacade.loadSeriesMinifiedByUserUid(event.session.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesMinifiedListLoadedSCS) {
              seriesMinified.addAll(success.seriesMinified);
              add(const AccountDatabaseEvent.seriesMinifiedLoadedEVT());
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          seriesMinified: seriesMinified,
        );
      },
    );
  }
}
