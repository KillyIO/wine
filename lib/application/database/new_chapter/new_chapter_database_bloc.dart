import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' hide Summary;
import 'package:flutter/widgets.dart' hide Title;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:stringprocess/stringprocess.dart';
import 'package:uuid/uuid.dart';

import 'package:wine/domain/database/copyrights.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/genre.dart';
import 'package:wine/domain/database/i_local_chapter_draft_database_facade.dart';
import 'package:wine/domain/database/i_local_placeholder_database_facade.dart';
import 'package:wine/domain/database/i_local_series_draft_database_facade.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/i_online_series_database_facade.dart';
import 'package:wine/domain/database/language.dart';
import 'package:wine/domain/database/story.dart';
import 'package:wine/domain/database/title.dart';
import 'package:wine/domain/enums/parent_type.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/extensions.dart';
import 'package:wine/utils/methods.dart';

part 'new_chapter_database_bloc.freezed.dart';
part 'new_chapter_database_event.dart';
part 'new_chapter_database_state.dart';

@injectable
class NewChapterDatabaseBloc
    extends Bloc<NewChapterDatabaseEvent, NewChapterDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final ILocalChapterDraftDatabaseFacade _localChapterDraftDatabaseFacade;
  final ILocalSeriesDraftDatabaseFacade _localSeriesDraftDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;
  final ILocalPlaceholderDatabaseFacade _localPlaceholderDatabaseFacade;

  final Uuid uuid = Uuid();
  final StringProcessor tps = StringProcessor();

  NewChapterDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._localChapterDraftDatabaseFacade,
    this._localSeriesDraftDatabaseFacade,
    this._onlineChapterDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
    this._localPlaceholderDatabaseFacade,
  );

  @override
  NewChapterDatabaseState get initialState => NewChapterDatabaseState.initial();

  @override
  Stream<NewChapterDatabaseState> mapEventToState(
    NewChapterDatabaseEvent event,
  ) async* {
    yield* event.map(
      newChapterPageLaunched: (event) async* {
        final Random random = Random();

        Either<DatabaseFailure, dynamic> failureOrSuccess;

        ChapterDraft chapterDraft = ChapterDraft();
        bool isEditMode = false;
        bool isFirstChapter = false;

        String coverUrl = '';
        String genreStr = '';
        String genreOptionalStr = '';
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

        if (failureOrSuccess.isRight()) {
          final List<String> placeholderUrls = Methods.getPlaceholderKeys();
          final String randomKey =
              placeholderUrls[random.nextInt(placeholderUrls.length)];

          failureOrSuccess = await _localPlaceholderDatabaseFacade
              .getPlaceholderUrlByKey(randomKey);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is String) {
                coverUrl = success;
              }
            },
          );

          if (failureOrSuccess.isRight()) {
            switch (event.parentType) {
              case ParentType.series:
                chapterDraft = ChapterDraft(
                  uid: uuid.v4(),
                  seriesUid: event.seriesDraft.uid,
                  authorUid: session.uid,
                  index: 1,
                  genre: event.seriesDraft.genre,
                  genreOptional: event.seriesDraft.genreOptional,
                  language: event.seriesDraft.language,
                  isNSFW: event.seriesDraft.isNSFW,
                );
                coverUrl = event.seriesDraft.coverUrl;
                genreStr = event.seriesDraft.genre;
                genreOptionalStr = event.seriesDraft.genreOptional;
                languageStr = event.seriesDraft.language;
                isNSFW = event.seriesDraft.isNSFW;
                isFirstChapter = true;
                break;
              case ParentType.chapter:
                chapterDraft = ChapterDraft(
                  uid: uuid.v4(),
                  seriesUid: event.previousChapter.seriesUid,
                  previousChapterUid: event.previousChapter.uid,
                  authorUid: session.uid,
                  index: event.previousChapter.index + 1,
                );
                break;
              default:
                chapterDraft = event.chapterDraft;
                isEditMode = true;
                isFirstChapter = chapterDraft.index == 1;
            }
          }
        }

        yield state.copyWith(
          chapterDraft: chapterDraft,
          isEditMode: isEditMode,
          isFirstChapter: isFirstChapter,
          coverUrl: coverUrl,
          genre: Genre(genreStr),
          genreStr: genreStr,
          genreOptional: Genre(genreOptionalStr, isOptional: true),
          genreOptionalStr: genreOptionalStr,
          language: Language(languageStr),
          languageStr: languageStr,
          isNSFW: isNSFW,
          isPublishedOrSaved: false,
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
          copyrightsMap: Methods.getCopyrights(event.context),
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      addCoverPressed: (event) async* {
        final File image = await ImagePicker.pickImage(
          source: ImageSource.gallery,
          maxWidth: Constants.coverMaxWidthAsDouble,
          maxHeight: Constants.coverMaxHeightAsDouble,
        );

        if (image != null) {
          final File croppedFile = await ImageCropper.cropImage(
            sourcePath: image.path,
            maxWidth: Constants.coverMaxWidth,
            maxHeight: Constants.coverMaxHeight,
            aspectRatio: const CropAspectRatio(
              ratioX: Constants.coverRatioX,
              ratioY: Constants.coverRatioY,
            ),
          );

          if (croppedFile != null) {
            final Directory appDocDir =
                await getApplicationDocumentsDirectory();
            final String coverPath =
                appDocDir.uri.resolve(p.basename(croppedFile.path)).path;
            final File coverFile = await croppedFile.copy(coverPath);

            yield state.copyWith(
              coverUrl: coverFile.path,
              databaseFailureOrSuccessOption: none(),
            );
          }
        }
      },
      titleChanged: (event) async* {
        final String titleTrim = event.title.trim();
        final int wordCount = tps.getWordCount(titleTrim);

        yield state.copyWith(
          title: Title(titleTrim),
          titleStr: titleTrim,
          titleWordCount: wordCount,
          databaseFailureOrSuccessOption: none(),
        );
      },
      storyChanged: (event) async* {
        final String storyTrim = event.story.trim();
        final int wordCount = tps.getWordCount(storyTrim);

        yield state.copyWith(
          story: Story(storyTrim),
          storyStr: storyTrim,
          storyWordCount: wordCount,
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
        final bool isGenreValid = state.genre.isValid();
        final bool isLanguageValid = state.language.isValid();
        final bool isCopyrightsValid = state.copyrights.isValid();

        if (isTitleValid &&
            isStoryValid &&
            isGenreValid &&
            isLanguageValid &&
            isCopyrightsValid) {
          yield state.copyWith(
            isPublishingOrSaving: true,
            isPublishedOrSaved: isPublishedOrSaved,
            databaseFailureOrSuccessOption: none(),
          );

          final ChapterDraft chapterDraft = state.chapterDraft;

          chapterDraft
            ..coverUrl = state.coverUrl
            ..title = state.title.getOrCrash()
            ..story = state.story.getOrCrash()
            ..genre = state.genre.getOrCrash()
            ..genreOptional = state.genreOptional.getOrCrash().isEmptyToNull
            ..language = state.language.getOrCrash()
            ..copyrights = state.copyrights.getOrCrash()
            ..isNSFW = state.isNSFW
            ..isEnd = state.isEnd;

          if (state.isFirstChapter) {
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

            if (failureOrSuccess.isRight()) {
              String coverUrl;

              if (!Methods.isUrl(seriesDraft.coverUrl)) {
                failureOrSuccess = await _onlineSeriesDatabaseFacade
                    .uploadCover(File(seriesDraft.coverUrl));

                failureOrSuccess.fold(
                  (_) {},
                  (success) {
                    if (success is String) {
                      coverUrl = success;
                    }
                  },
                );
              }

              if (failureOrSuccess.isRight()) {
                final Series series = Series.fromMap(seriesDraft.toMap())
                  ..coverUrl = coverUrl ?? seriesDraft.coverUrl
                  ..subtitle = seriesDraft.subtitle.isEmptyToNull
                  ..genreOptional = seriesDraft.genreOptional.isEmptyToNull;

                failureOrSuccess =
                    await _onlineSeriesDatabaseFacade.publishSeries(series);

                if (failureOrSuccess.isRight()) {
                  final Chapter chapter = Chapter.fromMap(chapterDraft.toMap());

                  failureOrSuccess =
                      await _onlineChapterDatabaseFacade.createChapter(chapter);

                  if (failureOrSuccess.isRight()) {
                    failureOrSuccess = await _localSeriesDraftDatabaseFacade
                        .deleteSeriesDraft(seriesDraft.uid);
                    isPublishedOrSaved = true;
                  }
                }
              }
            }
          } else {
            final Chapter chapter = Chapter.fromMap(chapterDraft.toMap());

            failureOrSuccess =
                await _onlineChapterDatabaseFacade.createChapter(chapter);

            if (failureOrSuccess.isRight()) {
              isPublishedOrSaved = true;
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
        bool isPublishedOrSaved = false;

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
        if (failureOrSuccess.isRight()) {
          isPublishedOrSaved = true;
        }

        yield state.copyWith(
          isPublishingOrSaving: false,
          isPublishedOrSaved: isPublishedOrSaved,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
