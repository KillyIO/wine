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
import 'package:wine/domain/database/database_success.dart';
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
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/chapter_minified.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/domain/models/series_minified.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/extensions.dart';
import 'package:wine/utils/methods.dart';

part 'new_chapter_database_bloc.freezed.dart';
part 'new_chapter_database_event.dart';
part 'new_chapter_database_state.dart';

/// Business logic used in `new-chapter-page`
///
/// Consult workflow at this path `root/assets/workflow/WINE_publish_series_workflow.png`
@injectable
class NewChapterDatabaseBloc extends Bloc<NewChapterDatabaseEvent, NewChapterDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final ILocalChapterDraftDatabaseFacade _localChapterDraftDatabaseFacade;
  final ILocalSeriesDraftDatabaseFacade _localSeriesDraftDatabaseFacade;
  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;
  final ILocalPlaceholderDatabaseFacade _localPlaceholderDatabaseFacade;

  final ImagePicker imagePicker = ImagePicker();
  final StringProcessor tps = StringProcessor();
  final Uuid uuid = Uuid();

  NewChapterDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._localChapterDraftDatabaseFacade,
    this._localSeriesDraftDatabaseFacade,
    this._onlineChapterDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
    this._localPlaceholderDatabaseFacade,
  ) : super(NewChapterDatabaseState.initial());

  @override
  Stream<NewChapterDatabaseState> mapEventToState(NewChapterDatabaseEvent event) async* {
    yield* event.map(
      addCoverPressedEVT: (event) async* {
        final PickedFile pickedFile = await imagePicker.getImage(
          source: ImageSource.gallery,
          maxWidth: Constants.coverMaxWidthAsDouble,
          maxHeight: Constants.coverMaxHeightAsDouble,
        );

        if (pickedFile != null) {
          final File image = File(pickedFile.path);

          final File croppedFile = await ImageCropper.cropImage(
            sourcePath: image.path,
            maxWidth: Constants.coverMaxWidth,
            maxHeight: Constants.coverMaxHeight,
            aspectRatio: const CropAspectRatio(ratioX: Constants.coverRatioX, ratioY: Constants.coverRatioY),
          );

          if (croppedFile != null) {
            final Directory appDocDir = await getApplicationDocumentsDirectory();
            final String coverPath = appDocDir.uri.resolve(p.basename(croppedFile.path)).path;
            final File coverFile = await croppedFile.copy(coverPath);

            yield state.copyWith(coverUrl: coverFile.path, databaseFailureOrSuccessOption: none());
          }
        }
      },
      chapterCoverDeletedEVT: (event) async* {
        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.deleteChapter(state.chapterDraft.uid);

        yield state.copyWith(
          isDeletingOrPublishingOrSaving: false,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      chapterPublishedEVT: (event) async* {
        if (state.isFirstChapter) {
          final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
              await _localSeriesDraftDatabaseFacade.fetchSeriesDraft(event.chapter.seriesUid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SeriesDraftFetchedSCS) {
                add(NewChapterDatabaseEvent.seriesDraftFetchedEVT(success.seriesDraft));
              }
            },
          );

          yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
        } else {
          yield state.copyWith(isDeletingOrPublishingOrSaving: false, databaseFailureOrSuccessOption: none());
        }
      },
      copyrightsSelectedEVT: (event) async* {
        yield state.copyWith(
          copyrights: Copyrights(event.copyrights),
          copyrightsStr: event.copyrights,
          databaseFailureOrSuccessOption: none(),
        );
      },
      chapterCoverUploadedEVT: (event) async* {
        final Chapter chapter = Chapter.fromMap(event.chapterDraft.toMap());
        chapter.coverUrl = event.coverUrl;

        final ChapterMinified chapterMinified = ChapterMinified.fromChapter(chapter);
        chapterMinified
          ..authorUid = state.session.uid
          ..authorUsername = state.session.username;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.publishChapter(chapterMinified, chapter);
        failureOrSuccess.fold(
          (_) {
            add(NewChapterDatabaseEvent.failureWhenPublishingChapterEVT(event.coverUrl));
          },
          (success) {
            if (success is ChapterPublishedSCS) {
              add(NewChapterDatabaseEvent.chapterPublishedEVT(chapter));
            }
          },
        );

        yield state.copyWith(
          chapterCoverUrl: event.coverUrl,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      chapterDeletedEVT: (event) async* {
        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.deleteChapter(state.chapterDraft.uid);

        yield state.copyWith(
          isDeletingOrPublishingOrSaving: false,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      deleteDraftButtonPressedEVT: (event) async* {
        yield state.copyWith(isDeletingOrPublishingOrSaving: true, databaseFailureOrSuccessOption: none());

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _localSeriesDraftDatabaseFacade.deleteSeriesDraft(state.chapterDraft.seriesUid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesDraftDeletedSCS) {
              add(const NewChapterDatabaseEvent.seriesDraftDeletedEVT());
            }
          },
        );

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      editModeLaunchedEVT: (event) async* {
        state.titleController.text = event.chapterDraft.title;
        state.storyController.text = event.chapterDraft.story;

        yield state.copyWith(
          chapterDraft: event.chapterDraft,
          copyrights: Copyrights(event.chapterDraft.copyrights),
          copyrightsStr: event.chapterDraft.copyrights,
          coverUrl: event.chapterDraft.coverUrl,
          genre: Genre(event.chapterDraft.genre),
          genreOptional: Genre(event.chapterDraft.genreOptional, isOptional: true),
          genreOptionalStr: event.chapterDraft.genreOptional,
          genreStr: event.chapterDraft.genre,
          isEditMode: true,
          isFirstChapter: event.chapterDraft.index == 1,
          isNSFW: event.chapterDraft.isNSFW,
          language: Language(event.chapterDraft.language),
          languageStr: event.chapterDraft.language,
          story: Story(event.chapterDraft.story),
          storyController: state.storyController,
          storyStr: event.chapterDraft.story,
          storyWordCount: tps.getWordCount(event.chapterDraft.story),
          title: Title(event.chapterDraft.title),
          titleController: state.titleController,
          titleStr: event.chapterDraft.title,
          titleWordCount: tps.getWordCount(event.chapterDraft.title),
        );
      },
      failureWhenPublishingChapterEVT: (event) async* {
        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineChapterDatabaseFacade.deleteChapterCover(event.coverUrl);

        yield state.copyWith(
          isDeletingOrPublishingOrSaving: false,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      failureWhenPublishingSeriesEVT: (event) async* {
        if (event.coverUrl != null) {
          final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
              await _onlineSeriesDatabaseFacade.deleteSeriesCover(event.coverUrl);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SeriesCoverDeletedSCS) {
                add(const NewChapterDatabaseEvent.seriesCoverDeletedEVT());
              }
            },
          );
        } else {
          yield* seriesHasNotUploadedCover(state);
        }
      },
      failureWhenUploadingSeriesCoverEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        if (state.chapterCoverUrl.isNotEmptyOrNull) {
          failureOrSuccess = await _onlineChapterDatabaseFacade.deleteChapterCover(state.chapterCoverUrl);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is ChapterCoverDeletedSCS) {
                add(const NewChapterDatabaseEvent.chapterDeletedEVT());
              }
            },
          );

          yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
        } else {
          failureOrSuccess = await _onlineChapterDatabaseFacade.deleteChapter(state.chapterDraft.uid);

          yield state.copyWith(
            isDeletingOrPublishingOrSaving: false,
            databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }
      },
      genreOptionalSelectedEVT: (event) async* {
        yield state.copyWith(
          genreOptional: Genre(event.genreOptional, isOptional: true),
          genreOptionalStr: event.genreOptional,
          databaseFailureOrSuccessOption: none(),
        );
      },
      genreSelectedEVT: (event) async* {
        yield state.copyWith(
          genre: Genre(event.genre),
          genreStr: event.genre,
          databaseFailureOrSuccessOption: none(),
        );
      },
      isEndChangedEVT: (event) async* {
        yield state.copyWith(isEnd: event.isEnd, databaseFailureOrSuccessOption: none());
      },
      isNSFWChangedEVT: (event) async* {
        yield state.copyWith(isNSFW: event.isNSFW, databaseFailureOrSuccessOption: none());
      },
      languageSelectedEVT: (event) async* {
        yield state.copyWith(
          language: Language(event.language),
          languageStr: event.language,
          databaseFailureOrSuccessOption: none(),
        );
      },
      newChapterPageLaunchedEVT: (event) async* {
        yield state.copyWith(
          chapterDraft: event.chapterDraft ?? ChapterDraft(),
          copyrightsMap: Methods.getCopyrights(event.context),
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
          previousChapter: event.previousChapter ?? Chapter(),
          seriesDraft: event.seriesDraft ?? SeriesDraft(),
        );

        if (event.chapterDraft != null) {
          add(NewChapterDatabaseEvent.editModeLaunchedEVT(event.chapterDraft));
        } else {
          Session session;

          final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
              await _localSessionDatabaseFacade.fetchSession();
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SessionFetchedSCS) {
                session = success.session;
                add(NewChapterDatabaseEvent.sessionFetchedEVT(
                  previousChapter: event.previousChapter,
                  seriesDraft: event.seriesDraft,
                ));
              }
            },
          );

          yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess), session: session);
        }
      },
      placeholderFetchedEVT: (event) async* {
        final ChapterDraft chapterDraft = ChapterDraft(authorUid: state.session.uid, uid: uuid.v4());

        bool isNSFW;
        String genreOptionalStr;
        String genreStr;
        String languageStr;

        if (state.seriesDraft.isNotEmpty) {
          chapterDraft
            ..genre = state.seriesDraft.genre
            ..genreOptional = state.seriesDraft.genreOptional
            ..index = 1
            ..language = state.seriesDraft.language
            ..seriesUid = state.seriesDraft.uid;

          isNSFW = state.seriesDraft.isNSFW;
          genreOptionalStr = state.seriesDraft.genreOptional;
          genreStr = state.seriesDraft.genre;
          languageStr = state.seriesDraft.language;
        } else if (state.previousChapter.isNotEmpty) {
          chapterDraft
            ..genre = state.previousChapter.genre
            ..genreOptional = state.previousChapter.genreOptional ?? ''
            ..index = state.previousChapter.index + 1
            ..language = state.previousChapter.language
            ..previousChapterUid = state.previousChapter.uid
            ..seriesUid = state.previousChapter.seriesUid;

          isNSFW = state.previousChapter.isNSFW;
          genreOptionalStr = state.previousChapter.genreOptional ?? '';
          genreStr = state.previousChapter.genre;
          languageStr = state.previousChapter.language;
        }

        yield state.copyWith(
          chapterDraft: chapterDraft,
          genre: Genre(genreStr),
          genreOptional: Genre(genreOptionalStr, isOptional: true),
          genreOptionalStr: genreOptionalStr,
          genreStr: genreStr,
          isEditMode: false,
          isFirstChapter: state.seriesDraft.isNotEmpty,
          isNSFW: isNSFW,
          language: Language(languageStr),
          languageStr: languageStr,
        );
      },
      publishButtonPressedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final bool isTitleValid = state.title.isValid();
        final bool isStoryValid = state.story.isValid();
        final bool isGenreValid = state.genre.isValid();
        final bool isLanguageValid = state.language.isValid();
        final bool isCopyrightsValid = state.copyrights.isValid();

        if (isTitleValid && isStoryValid && isGenreValid && isLanguageValid && isCopyrightsValid) {
          yield state.copyWith(isDeletingOrPublishingOrSaving: true, databaseFailureOrSuccessOption: none());

          final ChapterDraft chapterDraft = state.chapterDraft;

          chapterDraft
            ..copyrights = state.copyrights.getOrCrash()
            ..coverUrl = state.coverUrl
            ..genre = state.genre.getOrCrash()
            ..genreOptional = state.genreOptional.getOrCrash().isEmptyToNull
            ..isEnd = state.isEnd
            ..isNSFW = state.isNSFW
            ..language = state.language.getOrCrash()
            ..story = state.story.getOrCrash()
            ..title = state.title.getOrCrash();

          if (!Methods.isUrl(state.coverUrl)) {
            failureOrSuccess = await _onlineChapterDatabaseFacade.uploadCover(File(chapterDraft.coverUrl));
            failureOrSuccess.fold((_) {}, (success) {
              if (success is ChapterCoverUploadedSCS) {
                add(NewChapterDatabaseEvent.chapterCoverUploadedEVT(success.coverUrl, chapterDraft));
              }
            });
          } else {
            final Chapter chapter = Chapter.fromMap(chapterDraft.toMap());

            final ChapterMinified chapterMinified = ChapterMinified.fromChapter(chapter);
            chapterMinified.authorUsername = state.session.username;

            failureOrSuccess = await _onlineChapterDatabaseFacade.publishChapter(chapterMinified, chapter);
            failureOrSuccess.fold((_) {}, (success) {
              if (success is ChapterPublishedSCS) {
                add(NewChapterDatabaseEvent.chapterPublishedEVT(chapter));
              }
            });
          }
        }

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess), showErrorMessages: true);
      },
      saveOrBackButtonPressedEVT: (event) async* {
        yield state.copyWith(isDeletingOrPublishingOrSaving: true, databaseFailureOrSuccessOption: none());

        final ChapterDraft chapterDraft = state.chapterDraft;

        chapterDraft
          ..copyrights = state.copyrightsStr
          ..coverUrl = state.coverUrl
          ..genre = state.genreStr
          ..genreOptional = state.genreOptionalStr
          ..isEnd = state.isEnd
          ..isNSFW = state.isNSFW
          ..language = state.languageStr
          ..story = state.storyStr
          ..title = state.titleStr;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _localChapterDraftDatabaseFacade.saveChapterDraft(chapterDraft);

        yield state.copyWith(
          isDeletingOrPublishingOrSaving: false,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      seriesCoverDeletedEVT: (event) async* {
        yield* seriesHasNotUploadedCover(state);
      },
      seriesCoverUploadedEVT: (event) async* {
        final Series series = Series.fromMap(event.seriesDraft.toMap())
          ..coverUrl = event.coverUrl
          ..subtitle = event.seriesDraft.subtitle.isEmptyToNull
          ..genreOptional = event.seriesDraft.genreOptional.isEmptyToNull;

        final SeriesMinified seriesMinified = SeriesMinified.fromSeries(series);
        seriesMinified.authorUsername = state.session.username;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _onlineSeriesDatabaseFacade.publishSeries(seriesMinified, series);
        failureOrSuccess.fold(
          (_) {
            add(NewChapterDatabaseEvent.failureWhenPublishingSeriesEVT(coverUrl: event.coverUrl));
          },
          (success) {
            if (success is SeriesPublishedSCS) {
              add(NewChapterDatabaseEvent.seriesPublishedEVT(series));
            }
          },
        );

        yield state.copyWith(
          seriesCoverUrl: event.coverUrl,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      seriesDraftDeletedEVT: (event) async* {
        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _localChapterDraftDatabaseFacade.deleteChapterDraft(state.chapterDraft.uid);

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          isDeletingOrPublishingOrSaving: false,
        );
      },
      seriesDraftFetchedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        if (!Methods.isUrl(event.seriesDraft.coverUrl)) {
          failureOrSuccess = await _onlineSeriesDatabaseFacade.uploadCover(File(event.seriesDraft.coverUrl));
          failureOrSuccess.fold(
            (_) {
              add(const NewChapterDatabaseEvent.failureWhenUploadingSeriesCoverEVT());
            },
            (success) {
              if (success is SeriesCoverUploadedSCS) {
                add(NewChapterDatabaseEvent.seriesCoverUploadedEVT(success.coverUrl, event.seriesDraft));
              }
            },
          );
        } else {
          final Series series = Series.fromMap(event.seriesDraft.toMap())
            ..subtitle = event.seriesDraft.subtitle.isEmptyToNull
            ..genreOptional = event.seriesDraft.genreOptional.isEmptyToNull;

          final SeriesMinified seriesMinified = SeriesMinified.fromSeries(series);
          seriesMinified.authorUsername = state.session.username;

          failureOrSuccess = await _onlineSeriesDatabaseFacade.publishSeries(seriesMinified, series);
          failureOrSuccess.fold(
            (_) {
              add(const NewChapterDatabaseEvent.failureWhenPublishingSeriesEVT());
            },
            (success) {
              if (success is SeriesPublishedSCS) {
                add(NewChapterDatabaseEvent.seriesPublishedEVT(series));
              }
            },
          );
        }

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      seriesPublishedEVT: (event) async* {
        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _localSeriesDraftDatabaseFacade.deleteSeriesDraft(event.series.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SeriesDraftDeletedSCS) {
              add(const NewChapterDatabaseEvent.seriesDraftDeletedEVT());
            }
          },
        );

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          isDeletingOrPublishingOrSaving: false,
        );
      },
      sessionFetchedEVT: (event) async* {
        final Random random = Random();

        final List<String> placeholderUrls = Methods.getPlaceholderKeys();
        final String randomKey = placeholderUrls[random.nextInt(placeholderUrls.length)];

        String coverUrl = '';

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _localPlaceholderDatabaseFacade.fetchPlaceholderUrlByKey(randomKey);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is PlaceholderFetchedSCS) {
              coverUrl = success.placeholderUrl;

              add(NewChapterDatabaseEvent.placeholderFetchedEVT(coverUrl: coverUrl));
            }
          },
        );

        yield state.copyWith(coverUrl: coverUrl, databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      storyChangedEVT: (event) async* {
        final String storyTrim = event.story.trim();
        final int wordCount = tps.getWordCount(storyTrim);

        yield state.copyWith(
          story: Story(storyTrim),
          storyStr: storyTrim,
          storyWordCount: wordCount,
          databaseFailureOrSuccessOption: none(),
        );
      },
      titleChangedEVT: (event) async* {
        final String titleTrim = event.title.trim();
        final int wordCount = tps.getWordCount(titleTrim);

        yield state.copyWith(
          title: Title(titleTrim),
          titleStr: titleTrim,
          titleWordCount: wordCount,
          databaseFailureOrSuccessOption: none(),
        );
      },
    );
  }

  Stream<NewChapterDatabaseState> seriesHasNotUploadedCover(NewChapterDatabaseState state) async* {
    if (state.chapterCoverUrl.isNotEmptyOrNull) {
      final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
          await _onlineChapterDatabaseFacade.deleteChapterCover(state.chapterCoverUrl);
      failureOrSuccess.fold(
        (_) {},
        (success) {
          if (success is ChapterCoverDeletedSCS) {
            add(const NewChapterDatabaseEvent.chapterCoverDeletedEVT());
          }
        },
      );

      yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
    } else {
      final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
          await _onlineChapterDatabaseFacade.deleteChapter(state.chapterDraft.uid);

      yield state.copyWith(
        databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        isDeletingOrPublishingOrSaving: false,
      );
    }
  }
}
