import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart' hide Title;
import 'package:flutter/foundation.dart' hide Summary;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:stringprocess/stringprocess.dart';
import 'package:uuid/uuid.dart';
import 'package:wine/domain/database/copyrights.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_chapter_draft_database_facade.dart';
import 'package:wine/domain/database/i_local_series_draft_database_facade.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/database/language.dart';
import 'package:wine/domain/database/story.dart';
import 'package:wine/domain/database/title.dart';
import 'package:wine/domain/enums/parent_type.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/utils/methods.dart';

part 'new_chapter_database_event.dart';
part 'new_chapter_database_state.dart';

part 'new_chapter_database_bloc.freezed.dart';

@injectable
class NewChapterDatabaseBloc
    extends Bloc<NewChapterDatabaseEvent, NewChapterDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final ILocalChapterDraftDatabaseFacade _localChapterDraftDatabaseFacade;
  final ILocalSeriesDraftDatabaseFacade _localSeriesDraftDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;

  final Uuid uuid = Uuid();
  final StringProcessor tps = StringProcessor();

  NewChapterDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._localChapterDraftDatabaseFacade,
    this._localSeriesDraftDatabaseFacade,
    this._onlineChapterDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
  );

  @override
  NewChapterDatabaseState get initialState => NewChapterDatabaseState.initial();

  @override
  Stream<NewChapterDatabaseState> mapEventToState(
    NewChapterDatabaseEvent event,
  ) async* {
    yield* event.map(
      newChapterPageLaunched: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        ChapterDraft chapterDraft;
        bool isEditMode = false;
        bool isFirstChapter = false;

        String languageStr = '';
        bool isNSFW = false;

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

        switch (event.parentType) {
          case ParentType.series:
            chapterDraft = ChapterDraft(
              uid: uuid.v4(),
              seriesUid: event.seriesDraft.uid,
              authorUid: session.uid,
              index: 1,
              language: event.seriesDraft.language,
              isNSFW: event.seriesDraft.isNSFW,
            );
            isFirstChapter = true;
            languageStr = event.seriesDraft.language;
            isNSFW = event.seriesDraft.isNSFW;
            break;
          case ParentType.chapter:
            chapterDraft = ChapterDraft(
              uid: uuid.v4(),
              previousChapterUid: event.previousChapterDraft.uid,
              authorUid: session.uid,
              index: event.previousChapterDraft.index + 1,
            );
            break;
          default:
            chapterDraft = event.chapterDraft;
            isEditMode = true;
            isFirstChapter = chapterDraft.index == 1;
        }

        yield state.copyWith(
          chapterDraft: chapterDraft,
          isEditMode: isEditMode,
          isFirstChapter: isFirstChapter,
          language: Language(languageStr),
          languageStr: languageStr,
          isNSFW: isNSFW,
          isPublishedOrSaved: false,
          languagesMap: Methods.getLanguages(event.context),
          copyrightsMap: Methods.getCopyrights(event.context),
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
      storyChanged: (event) async* {
        final String storyTrim = event.story.trim();
        final int wordCount = tps.getWordCount(storyTrim);

        yield state.copyWith(
          story: Story(storyTrim),
          storyWordCount: wordCount,
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
      copyrightsSelected: (event) async* {
        yield state.copyWith(
          copyrights: Copyrights(event.copyrights),
          copyrightsStr: event.copyrights,
          databaseFailureOrSuccessOption: none(),
        );
      },
      isNSFWChanged: (event) async* {
        yield state.copyWith(
          isNSFW: event.isNSFW,
          databaseFailureOrSuccessOption: none(),
        );
      },
      isEndChanged: (event) async* {
        yield state.copyWith(
          isEnd: event.isEnd,
          databaseFailureOrSuccessOption: none(),
        );
      },
      publishButtonPressed: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;
        bool isPublishedOrSaved = false;

        final bool isTitleValid = state.title.isValid();
        final bool isStoryValid = state.story.isValid();
        final bool isLanguageValid = state.language.isValid();
        final bool isCopyrightsValid = state.copyrights.isValid();

        if (isTitleValid &&
            isStoryValid &&
            isLanguageValid &&
            isCopyrightsValid) {
          yield state.copyWith(
            isPublishingOrSaving: true,
            isPublishedOrSaved: isPublishedOrSaved,
            databaseFailureOrSuccessOption: none(),
          );

          final ChapterDraft chapterDraft = state.chapterDraft;

          chapterDraft
            ..title = state.title.getOrCrash()
            ..story = state.story.getOrCrash()
            ..language = state.language.getOrCrash()
            ..copyrights = state.copyrights.getOrCrash()
            ..isNSFW = state.isNSFW
            ..isEnd = state.isEnd;

          SeriesDraft seriesDraft;

          failureOrSuccess = await _localSeriesDraftDatabaseFacade
              .getSeriesDraft(chapterDraft.seriesUid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SeriesDraft) {
                seriesDraft = success;
              }
            },
          );

          if (seriesDraft != null) {
            final Series series = Series.fromMap(seriesDraft.toMap());
            bool seriesCreated = false;

            failureOrSuccess =
                await _onlineSeriesDatabaseFacade.createSeries(series);
            failureOrSuccess.fold(
              (_) {},
              (_) {
                seriesCreated = true;
              },
            );

            if (seriesCreated) {
              final Chapter chapter = Chapter.fromMap(chapterDraft.toMap());
              bool chapterCreated = false;

              failureOrSuccess =
                  await _onlineChapterDatabaseFacade.createChapter(chapter);
              failureOrSuccess.fold(
                (_) {},
                (_) {
                  chapterCreated = true;
                },
              );

              if (chapterCreated) {
                failureOrSuccess = await _localSeriesDraftDatabaseFacade
                    .deleteSeriesDraft(seriesDraft.uid);
                isPublishedOrSaved = true;
              }
            }
          }
        }

        yield state.copyWith(
          isPublishingOrSaving: false,
          isPublishedOrSaved: isPublishedOrSaved,
          showErrorMessages: true,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      saveOrBackButtonPressed: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        yield state.copyWith(
          isPublishingOrSaving: true,
          databaseFailureOrSuccessOption: none(),
        );

        final ChapterDraft chapterDraft = state.chapterDraft;

        chapterDraft
          ..title = state.titleStr
          ..story = state.storyStr
          ..language = state.languageStr
          ..copyrights = state.copyrightsStr
          ..isNSFW = state.isNSFW
          ..isEnd = state.isEnd;

        failureOrSuccess = await _localChapterDraftDatabaseFacade
            .saveChapterDraft(chapterDraft);

        yield state.copyWith(
          isPublishingOrSaving: false,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
