import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';
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

  AccountDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
    this._onlineChapterDatabaseFacade,
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
                .getChaptersByUserId(session.uid);

            failureOrSuccess.fold(
              (_) {},
              (success) {
                if (success is List<Chapter>) {
                  chapters.addAll(success);
                }
              },
            );
          }
        }

        final List<String> placeholdersUrls = Methods.getPlaceholderUrls();

        yield state.copyWith(
          session: session,
          series: series,
          chapters: chapters,
          genres: Methods.getGenres(event.context),
          languages: Methods.getLanguages(event.context),
          copyrights: Methods.getCopyrights(event.context),
          placeholders: placeholdersUrls,
          placeholderIndexes: <int>[
            random.nextInt(placeholdersUrls.length),
            random.nextInt(placeholdersUrls.length),
          ],
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
