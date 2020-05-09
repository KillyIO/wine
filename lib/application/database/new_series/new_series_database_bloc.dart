import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:stringprocess/stringprocess.dart';
import 'package:uuid/uuid.dart';
import 'package:wine/domain/database/copyrights.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/summary.dart';
import 'package:wine/domain/database/genre.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/database/language.dart';
import 'package:wine/domain/database/subtitle.dart';
import 'package:wine/domain/database/title.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';

part 'new_series_database_event.dart';
part 'new_series_database_state.dart';

part 'new_series_database_bloc.freezed.dart';

@injectable
class NewSeriesDatabaseBloc
    extends Bloc<NewSeriesDatabaseEvent, NewSeriesDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  final Uuid uuid = Uuid();
  final StringProcessor tps = StringProcessor();

  NewSeriesDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
  );

  @override
  NewSeriesDatabaseState get initialState => NewSeriesDatabaseState.initial();

  @override
  Stream<NewSeriesDatabaseState> mapEventToState(
    NewSeriesDatabaseEvent event,
  ) async* {
    yield* event.map(newSeriesPageLaunched: (event) async* {
      SeriesDraft seriesDraft;

      if (event.seriesDraft != null) {
        seriesDraft = event.seriesDraft;
      } else {
        final Session session = _localSessionDatabaseFacade.getSession();

        seriesDraft = SeriesDraft(
          uid: uuid.v4(),
          authorUid: session.uid,
        );
      }

      yield state.copyWith(
        seriesDraft: seriesDraft,
      );
    }, createSeriesButtonPressed: (event) async* {
      Either<DatabaseFailure, dynamic> failureOrSuccess;

      final bool isTitleValid = state.title.isValid();
      final bool isSummaryValid = state.summary.isValid();
      final bool isGenreValid = state.genre.isValid();
      final bool isLanguageValid = state.language.isValid();
      final bool isCopyrightsValid = state.copyrights.isValid();

      if (isTitleValid &&
          isSummaryValid &&
          isGenreValid &&
          isLanguageValid &&
          isCopyrightsValid) {
        yield state.copyWith(
          isCreating: true,
          databaseFailureOrSuccessOption: none(),
        );

        final SeriesDraft seriesDraft = state.seriesDraft;

        seriesDraft
          ..title = state.title.getOrCrash()
          ..subtitle = state.subtitle.getOrCrash()
          ..summary = state.summary.getOrCrash()
          ..genre = state.genre.getOrCrash()
          ..genreOptional = state.genreOptional.getOrCrash()
          ..language = state.language.getOrCrash()
          ..copyrights = state.copyrights.getOrCrash()
          ..isNSFW = state.isNSFW;

        final Series series = Series.fromMap(seriesDraft.toMap());

        failureOrSuccess = await _onlineUserDatabaseFacade.createSeries(series);
      }

      yield state.copyWith(
        isCreating: false,
        showErrorMessages: true,
        databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }, titleChanged: (event) async* {
      final String titleTrim = event.title.trim();
      final int wordCount = tps.getWordCount(titleTrim);

      yield state.copyWith(
        title: Title(titleTrim),
        titleWordCount: wordCount,
        databaseFailureOrSuccessOption: none(),
      );
    }, subtitleChanged: (event) async* {
      final String subtitleTrim = event.subtitle.trim();
      final int wordCount = tps.getWordCount(subtitleTrim);

      yield state.copyWith(
        subtitle: Subtitle(subtitleTrim),
        subtitleWordCount: wordCount,
        databaseFailureOrSuccessOption: none(),
      );
    }, summaryChanged: (event) async* {
      final String summaryTrim = event.summary.trim();
      final int wordCount = tps.getWordCount(summaryTrim);

      yield state.copyWith(
        summary: Summary(summaryTrim),
        summaryWordCount: wordCount,
        databaseFailureOrSuccessOption: none(),
      );
    }, genreSelected: (event) async* {
      yield state.copyWith(
        genre: Genre(event.genre),
        genreStr: event.genre,
        databaseFailureOrSuccessOption: none(),
      );
    }, genreOptionalSelected: (event) async* {
      yield state.copyWith(
        genreOptional: Genre(event.genreOptional, isOptional: true),
        genreOptionalStr: event.genreOptional,
        databaseFailureOrSuccessOption: none(),
      );
    }, languageSelected: (event) async* {
      yield state.copyWith(
        language: Language(event.language),
        languageStr: event.language,
        databaseFailureOrSuccessOption: none(),
      );
    }, copyrightsSelected: (event) async* {
      yield state.copyWith(
        copyrights: Copyrights(event.copyrights),
        copyrightsStr: event.copyrights,
        databaseFailureOrSuccessOption: none(),
      );
    }, isNSFWChanged: (event) async* {
      yield state.copyWith(
        isNSFW: event.isNSFW,
        databaseFailureOrSuccessOption: none(),
      );
    });
  }
}
