import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart' hide Title;
import 'package:flutter/foundation.dart' hide Summary;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:stringprocess/stringprocess.dart';
import 'package:uuid/uuid.dart';
import 'package:wine/domain/database/copyrights.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_series_draft_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
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
import 'package:wine/utils/methods.dart';

part 'new_series_database_event.dart';
part 'new_series_database_state.dart';

part 'new_series_database_bloc.freezed.dart';

@injectable
class NewSeriesDatabaseBloc
    extends Bloc<NewSeriesDatabaseEvent, NewSeriesDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final ILocalSeriesDraftDatabaseFacade _localSeriesDraftDatabaseFacade;

  final Uuid uuid = Uuid();
  final StringProcessor tps = StringProcessor();

  NewSeriesDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._localSeriesDraftDatabaseFacade,
  );

  @override
  NewSeriesDatabaseState get initialState => NewSeriesDatabaseState.initial();

  @override
  Stream<NewSeriesDatabaseState> mapEventToState(
    NewSeriesDatabaseEvent event,
  ) async* {
    yield* event.map(
      newSeriesPageLaunched: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        SeriesDraft seriesDraft;
        bool isEditMode = false;

        if (event.seriesDraft != null) {
          seriesDraft = event.seriesDraft;
          isEditMode = true;
        } else {
          Session session;

          failureOrSuccess = await _localSessionDatabaseFacade.getSession();
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is Session) {
                session = success;
              }
            },
          );

          seriesDraft = SeriesDraft(
            uid: uuid.v4(),
            authorUid: session.uid,
          );
        }

        yield state.copyWith(
          seriesDraft: seriesDraft,
          isEditMode: isEditMode,
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      titleChanged: (event) async* {
        final String titleTrim = event.title.trim();
        final int wordCount = tps.getWordCount(titleTrim);

        yield state.copyWith(
          title: Title(titleTrim),
          titleWordCount: wordCount,
          databaseFailureOrSuccessOption: none(),
        );
      },
      subtitleChanged: (event) async* {
        final String subtitleTrim = event.subtitle.trim();
        final int wordCount = tps.getWordCount(subtitleTrim);

        yield state.copyWith(
          subtitle: Subtitle(subtitleTrim),
          subtitleWordCount: wordCount,
          databaseFailureOrSuccessOption: none(),
        );
      },
      summaryChanged: (event) async* {
        final String summaryTrim = event.summary.trim();
        final int wordCount = tps.getWordCount(summaryTrim);

        yield state.copyWith(
          summary: Summary(summaryTrim),
          summaryWordCount: wordCount,
          databaseFailureOrSuccessOption: none(),
        );
      },
      genreSelected: (event) async* {
        yield state.copyWith(
          genre: Genre(event.genre),
          genreStr: event.genre,
          databaseFailureOrSuccessOption: none(),
        );
      },
      genreOptionalSelected: (event) async* {
        yield state.copyWith(
          genreOptional: Genre(event.genreOptional, isOptional: true),
          genreOptionalStr: event.genreOptional,
          databaseFailureOrSuccessOption: none(),
        );
      },
      languageSelected: (event) async* {
        yield state.copyWith(
          language: Language(event.language),
          languageStr: event.language,
          databaseFailureOrSuccessOption: none(),
        );
      },
      isNSFWChanged: (event) async* {
        yield state.copyWith(
          isNSFW: event.isNSFW,
          databaseFailureOrSuccessOption: none(),
        );
      },
      saveSeriesDraftButtonPressed: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        final bool isTitleValid = state.title.isValid();
        final bool isSummaryValid = state.summary.isValid();
        final bool isGenreValid = state.genre.isValid();
        final bool isLanguageValid = state.language.isValid();

        if (isTitleValid && isSummaryValid && isGenreValid && isLanguageValid) {
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
            ..isNSFW = state.isNSFW
            ..thumbnailPath = '';

          failureOrSuccess = await _localSeriesDraftDatabaseFacade
              .saveSeriesDraft(seriesDraft);
        }

        yield state.copyWith(
          isCreating: false,
          showErrorMessages: true,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
