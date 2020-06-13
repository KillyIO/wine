import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_placeholder_database_facade.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/injection.dart';
import 'package:wine/utils/methods.dart';

part 'account_database_event.dart';
part 'account_database_state.dart';

part 'account_database_bloc.freezed.dart';

@injectable
class AccountDatabaseBloc
    extends Bloc<AccountDatabaseEvent, AccountDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;
  final ILocalPlaceholderDatabaseFacade _localPlaceholderDatabaseFacade;

  AccountDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
    this._onlineChapterDatabaseFacade,
    this._localPlaceholderDatabaseFacade,
  );

  @override
  AccountDatabaseState get initialState => AccountDatabaseState.initial();

  @override
  Stream<AccountDatabaseState> mapEventToState(
    AccountDatabaseEvent event,
  ) async* {
    yield* event.map(
      accountPageLaunched: (event) async* {
        final Random random = Random();

        Either<DatabaseFailure, dynamic> failureOrSuccess;
        Session session = Session();

        final List<Series> series = <Series>[];
        final List<Chapter> chapters = <Chapter>[];
        final List<String> placeholderUrls = <String>[];
        Map<String, Series> seriesMap = <String, Series>{};

        yield state.copyWith(
          isFetching: true,
          databaseFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _localSessionDatabaseFacade.getSession();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is Session) {
              session = success;
            }
          },
        );

        if (failureOrSuccess.isRight()) {
          failureOrSuccess =
              await _onlineSeriesDatabaseFacade.getSeriesByUserId(session.uid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is List<Series>) {
                series.addAll(success);
              }
            },
          );

          if (failureOrSuccess.isRight()) {
            failureOrSuccess = await _onlineChapterDatabaseFacade
                .getChaptersByUserId(session.uid, getSeries: true);

            failureOrSuccess.fold(
              (_) {},
              (success) {
                if (success is List<Chapter>) {
                  chapters.addAll(success);
                }
              },
            );

            if (failureOrSuccess.isRight()) {
              final List<String> placeholderKeys = Methods.getPlaceholderKeys();
              final List<String> randomKeys = <String>[
                placeholderKeys[random.nextInt(placeholderKeys.length)],
                placeholderKeys[random.nextInt(placeholderKeys.length)],
              ];

              for (final String key in randomKeys) {
                failureOrSuccess = await _localPlaceholderDatabaseFacade
                    .getPlaceholderUrlByKey(key);
                failureOrSuccess.fold(
                  (_) {},
                  (success) {
                    if (success is String) {
                      placeholderUrls.add(success);
                    }
                  },
                );
              }

              final List<String> seriesUids = getIt<Box<ChapterDraft>>()
                  .values
                  .toList()
                  .map((chapterDraft) => chapterDraft.seriesUid)
                  .toList();
              if (seriesUids.isNotEmpty) {
                failureOrSuccess = await _onlineSeriesDatabaseFacade
                    .getSeriesAsMapByUidList(seriesUids);
                failureOrSuccess.fold(
                  (_) {},
                  (success) {
                    if (success is Map<String, Series>) {
                      seriesMap = success;
                    }
                  },
                );
              }
            }
          }
        }

        yield state.copyWith(
          session: session,
          series: series,
          chapters: chapters,
          genres: Methods.getGenres(event.context),
          languages: Methods.getLanguages(event.context),
          copyrights: Methods.getCopyrights(event.context),
          placeholderUrls: placeholderUrls,
          seriesMap: seriesMap,
          isFetching: false,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      fetchMoreSeries: (event) async* {
        final Session session = state.session;
        final List<Series> series = state.series;

        final Either<DatabaseFailure, dynamic> failureOrSuccess =
            await _onlineSeriesDatabaseFacade.getSeriesByUserId(
          session.uid,
          lastSeries: series.last,
        );
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is List<Series>) {
              series.addAll(success);
            }
          },
        );

        yield state.copyWith(
          series: series,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      fetchMoreChapters: (event) async* {},
    );
  }
}
