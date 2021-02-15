import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' hide Summary;
import 'package:flutter/widgets.dart' hide Title;
import 'package:flutter_stringprocess/flutter_stringprocess.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/local/i_local_placeholder_database_facade.dart';
import 'package:wine/domain/database/facades/local/i_session_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_chapter_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_chapter_draft_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_series_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_series_draft_database_facade.dart';
import 'package:wine/domain/database/failures/placeholder_database_failure.dart';
import 'package:wine/domain/database/genre.dart';
import 'package:wine/domain/database/language.dart';
import 'package:wine/domain/database/licence.dart';
import 'package:wine/domain/database/story.dart';
import 'package:wine/domain/database/successes/chapter_database_success.dart';
import 'package:wine/domain/database/successes/chapter_draft_database_success.dart';
import 'package:wine/domain/database/successes/placeholder_database_success.dart';
import 'package:wine/domain/database/successes/series_database_success.dart';
import 'package:wine/domain/database/successes/series_draft_database_success.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/domain/database/title.dart';
import 'package:wine/domain/enums/editor_content_origin.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/utils/constants.dart';

part 'chapter_editor_database_bloc.freezed.dart';
part 'chapter_editor_database_event.dart';
part 'chapter_editor_database_state.dart';

/// @nodoc
@injectable
class ChapterEditorDatabaseBloc
    extends Bloc<ChapterEditorDatabaseEvent, ChapterEditorDatabaseState> {
  /// @nodoc
  ChapterEditorDatabaseBloc(
    this._onlineChapterDatabaseFacade,
    this._onlineChapterDraftDatabaseFacade,
    this._onlineSeriesDatabaseFacade,
    this._onlineSeriesDraftDatabaseFacade,
    this._localPlaceholderDatabaseFacade,
    this._sessionDatabaseFacade,
  ) : super(ChapterEditorDatabaseState.initial());

  final IOnlineChapterDatabaseFacade _onlineChapterDatabaseFacade;
  final IOnlineChapterDraftDatabaseFacade _onlineChapterDraftDatabaseFacade;
  final IOnlineSeriesDatabaseFacade _onlineSeriesDatabaseFacade;
  final IOnlineSeriesDraftDatabaseFacade _onlineSeriesDraftDatabaseFacade;
  final ILocalPlaceholderDatabaseFacade _localPlaceholderDatabaseFacade;
  final ISessionDatabaseFacade _sessionDatabaseFacade;

  /// @nodoc
  final StringProcessor tps = StringProcessor();

  /// @nodoc
  final Uuid uuid = Uuid();

  @override
  Stream<ChapterEditorDatabaseState> mapEventToState(
    ChapterEditorDatabaseEvent event,
  ) async* {
    yield* event.map(
      addCoverPressed: (event) async* {
        final imagePicker = ImagePicker();

        final pickedFile = await imagePicker.getImage(
          source: ImageSource.gallery,
          maxWidth: Constants.coverMaxWidthAsDouble,
          maxHeight: Constants.coverMaxHeightAsDouble,
        );

        if (pickedFile != null) {
          final image = File(pickedFile.path);

          final croppedFile = await ImageCropper.cropImage(
            sourcePath: image.path,
            maxWidth: Constants.coverMaxWidth,
            maxHeight: Constants.coverMaxHeight,
            aspectRatio: const CropAspectRatio(
              ratioX: Constants.coverRatioX,
              ratioY: Constants.coverRatioY,
            ),
          );

          if (croppedFile != null) {
            final appDocDir = await getApplicationDocumentsDirectory();
            final coverPath =
                appDocDir.uri.resolve(p.basename(croppedFile.path)).path;
            final coverFile = await croppedFile.copy(coverPath);

            yield state.copyWith(
              chapterDatabaseFailureOrSuccessOption: none(),
              chapterDraftDatabaseFailureOrSuccessOption: none(),
              chapterCoverURL: coverFile.path,
              placeholderDatabaseFailureOrSuccessOption: none(),
              seriesDatabaseFailureOrSuccessOption: none(),
              seriesDraftDatabaseFailureOrSuccessOption: none(),
              sessionDatabaseFailureOrSuccessOption: none(),
            );
          }
        }
      },
      chapterDraftDeleted: (event) async* {
        Series seriesDraft;

        final failureOrSuccess = await _onlineSeriesDraftDatabaseFacade
            .loadSeriesDraft(state.chapterDraft.seriesUID)
          ..fold(
            (_) {},
            (success) {
              if (success is SeriesDraftLoadedSCS) {
                seriesDraft = success.seriesDraft;
              }
            },
          );
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          isLoading: callSuccess,
          seriesDraftDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (callSuccess) {
          add(ChapterEditorDatabaseEvent.seriesDraftLoaded(seriesDraft));
        }
      },
      chapterPublished: (event) async* {
        final failureOrSuccess = await _onlineChapterDraftDatabaseFacade
            .deleteChapterDraft(chapterDraftUID: state.chapterDraft.uid);
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          chapterDraftDatabaseFailureOrSuccessOption:
              optionOf(failureOrSuccess),
          isLoading: callSuccess && state.isFirstChapter,
        );

        if (callSuccess && state.isFirstChapter) {
          add(const ChapterEditorDatabaseEvent
              .chapterDraftDeletedOrPublished());
        }
      },
      copyrightsSelectedEVT: (event) async* {
        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          copyrights: Copyrights(event.copyrights),
          copyrightsStr: event.copyrights,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      chapterDraftInitializedWithPreviousChapterOrSeriesDraftEVT: (
        event,
      ) async* {
        var chapterDraft = state.chapterDraft;

        final failureOrSuccess =
            await _localSessionDatabaseFacade.fetchSession()
              ..fold(
                (_) {},
                (success) {
                  if (success is SessionFetchedSCS) {
                    chapterDraft = chapterDraft.copyWith(
                      authorUID: success.session.uid,
                    );
                  }
                },
              );
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          chapterDraft: chapterDraft,
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          isLoading: callSuccess,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (callSuccess) {
          add(const ChapterEditorDatabaseEvent.sessionFetchedEVT());
        }
      },
      chapterEditorLaunchedFromLibraryEVT: (event) async* {
        state.storyController.text = event.chapterDraft.story;
        state.titleController.text = event.chapterDraft.title;

        yield state.copyWith(
          chapterCoverURL: event.chapterDraft.coverURL,
          chapterDraft: event.chapterDraft,
          copyrights: Copyrights(event.chapterDraft.copyrights),
          copyrightsStr: event.chapterDraft.copyrights,
          editorContentOrigin: event.editorContentOrigin,
          genre: Genre(event.chapterDraft.genre),
          genreOptional: Genre(
            event.chapterDraft.genreOptional,
            isOptional: true,
          ),
          genreOptionalStr: event.chapterDraft.genreOptional,
          genreStr: event.chapterDraft.genre,
          isEditMode: true,
          isFirstChapter: event.chapterDraft.index == 1,
          isLastChapter: event.chapterDraft.isLastChapter,
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
      chapterEditorLaunchedFromPreviousChapterEVT: (event) async* {
        final uuid = Uuid();

        final chapterDraft = state.chapterDraft.copyWith(
          copyrights: event.previousChapter.copyrights,
          genre: event.previousChapter.genre,
          genreOptional: event.previousChapter.genreOptional,
          index: event.previousChapter.index,
          isNSFW: event.previousChapter.isNSFW,
          language: event.previousChapter.language,
          previousChapterUID: event.previousChapter.uid,
          seriesUID: event.previousChapter.seriesUID,
          uid: uuid.v4(),
        );

        yield state.copyWith(
          chapterDraft: chapterDraft,
          copyrights: Copyrights(chapterDraft.copyrights),
          copyrightsStr: chapterDraft.copyrights,
          editorContentOrigin: event.editorContentOrigin,
          genre: Genre(chapterDraft.genre),
          genreOptional: Genre(chapterDraft.genreOptional, isOptional: true),
          genreOptionalStr: chapterDraft.genreOptional,
          genreStr: chapterDraft.genre,
          isEditMode: false,
          isFirstChapter: chapterDraft.index == 1,
          isLoading: true,
          isNSFW: chapterDraft.isNSFW,
          language: Language(chapterDraft.language),
          languageStr: chapterDraft.language,
        );

        add(const ChapterEditorDatabaseEvent
            .chapterDraftInitializedWithPreviousChapterOrSeriesDraftEVT());
      },
      chapterEditorLaunchedFromSeriesEditorEVT: (event) async* {
        final uuid = Uuid();

        final chapterDraft = state.chapterDraft.copyWith(
          genre: event.seriesDraft.genre,
          genreOptional: event.seriesDraft.genreOptional,
          index: 1,
          isNSFW: event.seriesDraft.isNSFW,
          language: event.seriesDraft.language,
          seriesUID: event.seriesDraft.uid,
          uid: uuid.v4(),
        );

        yield state.copyWith(
          chapterDraft: chapterDraft,
          editorContentOrigin: event.editorContentOrigin,
          genre: Genre(chapterDraft.genre),
          genreOptional: Genre(chapterDraft.genreOptional, isOptional: true),
          genreOptionalStr: chapterDraft.genreOptional,
          genreStr: chapterDraft.genre,
          isEditMode: false,
          isFirstChapter: chapterDraft.index == 1,
          isLoading: true,
          isNSFW: chapterDraft.isNSFW,
          language: Language(chapterDraft.language),
          languageStr: chapterDraft.language,
        );

        add(const ChapterEditorDatabaseEvent
            .chapterDraftInitializedWithPreviousChapterOrSeriesDraftEVT());
      },
      deleteDraftButtonPressedEVT: (event) async* {
        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          isLoading: true,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );

        final failureOrSuccess = await _onlineChapterDraftDatabaseFacade
            .deleteChapterDraft(chapterDraftUID: state.chapterDraft.uid);
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption:
              optionOf(failureOrSuccess),
          isLoading: state.isFirstChapter && callSuccess,
        );

        if (state.isFirstChapter && callSuccess) {
          add(const ChapterEditorDatabaseEvent
              .chapterDraftDeletedOrPublishedEVT());
        }
      },
      genreOptionalSelectedEVT: (event) async* {
        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          genreOptional: Genre(event.genreOptional, isOptional: true),
          genreOptionalStr: event.genreOptional,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      genreSelectedEVT: (event) async* {
        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          genre: Genre(event.genre),
          genreStr: event.genre,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      isLastChapterChangedEVT: (event) async* {
        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          isLastChapter: event.isLastChapter,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      isNSFWChangedEVT: (event) async* {
        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          isNSFW: event.isNSFW,
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      languageSelectedEVT: (event) async* {
        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          language: Language(event.language),
          languageStr: event.language,
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      publishButtonPressedEVT: (event) async* {
        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          isLoading: true,
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );

        Either<DatabaseFailure, ChapterDatabaseSuccess> failureOrSuccess;

        final isTitleValid = state.title.isValid();
        final isStoryValid = state.story.isValid();
        final isGenreValid = state.genre.isValid();
        final isLanguageValid = state.language.isValid();
        final isCopyrightsValid = state.copyrights.isValid();

        var chapterDraft = state.chapterDraft;

        if (isTitleValid &&
            isStoryValid &&
            isGenreValid &&
            isLanguageValid &&
            isCopyrightsValid) {
          final currentTime = DateTime.now().millisecondsSinceEpoch;
          chapterDraft = chapterDraft.copyWith(
            copyrights: state.copyrights.getOrCrash(),
            coverURL: state.chapterCoverURL,
            createdAt: currentTime,
            genre: state.genre.getOrCrash(),
            genreOptional: state.genreOptional.getOrCrash().isEmptyToNull,
            isLastChapter: state.isLastChapter,
            isNSFW: state.isNSFW,
            language: state.language.getOrCrash(),
            story: state.story.getOrCrash(),
            title: state.title.getOrCrash(),
            updatedAt: currentTime,
          );

          failureOrSuccess =
              await _onlineChapterDatabaseFacade.publishChapter(chapterDraft);
        }
        final callSuccess = failureOrSuccess?.isRight() ?? false;

        final continueLoading = callSuccess &&
            (state.isEditMode || (!state.isEditMode && state.isFirstChapter));

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          chapterDraft: chapterDraft,
          isLoading: continueLoading,
          showErrorMessages: true,
        );

        if (callSuccess && state.isEditMode) {
          add(const ChapterEditorDatabaseEvent.chapterPublishedEVT());
        } else {
          if (callSuccess && state.isFirstChapter) {
            add(const ChapterEditorDatabaseEvent
                .chapterDraftDeletedOrPublishedEVT());
          }
        }
      },
      saveOrBackButtonPressedEVT: (event) async* {
        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          isLoading: true,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );

        final currentTime = DateTime.now().millisecondsSinceEpoch;
        final chapterDraft = state.chapterDraft.copyWith(
          copyrights: state.copyrightsStr,
          coverURL: state.chapterCoverURL,
          createdAt: currentTime,
          genre: state.genreStr,
          genreOptional: state.genreOptionalStr,
          isLastChapter: state.isLastChapter,
          isNSFW: state.isNSFW,
          language: state.languageStr,
          story: state.storyStr,
          title: state.titleStr,
          updatedAt: currentTime,
        );

        final failureOrSuccess = await _onlineChapterDraftDatabaseFacade
            .saveChapterDraft(chapterDraft);

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          chapterDraft: chapterDraft,
          chapterDraftDatabaseFailureOrSuccessOption:
              optionOf(failureOrSuccess),
          isLoading: false,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      seriesDraftLoadedEVT: (event) async* {
        final currentTime = DateTime.now().millisecondsSinceEpoch;
        final series = event.seriesDraft.copyWith(
          createdAt: currentTime,
          genreOptional: event.seriesDraft.genreOptional.isEmptyToNull,
          subtitle: event.seriesDraft.subtitle.isEmptyToNull,
          updatedAt: currentTime,
        );

        final failureOrSuccess =
            await _onlineSeriesDatabaseFacade.publishSeries(series);
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          isLoading: callSuccess,
          seriesDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          seriesDraft: series,
          seriesDraftDatabaseFailureOrSuccessOption: none(),
        );

        if (callSuccess) {
          add(ChapterEditorDatabaseEvent.seriesPublishedEVT(series.uid));
        }
      },
      seriesPublishedEVT: (event) async* {
        final failureOrSuccess = await _onlineSeriesDraftDatabaseFacade
            .deleteSeriesDraft(event.seriesDraftUID);

        yield state.copyWith(
          isLoading: false,
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      sessionFetchedEVT: (event) async* {
        final random = Random();
        final randomKey =
            placeholderKeys[random.nextInt(placeholderKeys.length)];

        var chapterDraft = state.chapterDraft;

        final failureOrSuccess = await _localPlaceholderDatabaseFacade
            .fetchPlaceholderByKey(randomKey)
          ..fold(
            (_) {},
            (success) {
              if (success is PlaceholderFetchedSCS) {
                chapterDraft =
                    chapterDraft.copyWith(coverURL: success.placeholder);
              }
            },
          );

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          chapterCoverURL: chapterDraft.coverURL,
          isLoading: false,
          placeholderDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      storyChangedEVT: (event) async* {
        final storyTrim = event.story.trim();
        final wordCount = tps.getWordCount(storyTrim);

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
          story: Story(storyTrim),
          storyStr: storyTrim,
          storyWordCount: wordCount,
        );
      },
      titleChangedEVT: (event) async* {
        final titleTrim = event.title.trim();
        final wordCount = tps.getWordCount(titleTrim);

        yield state.copyWith(
          chapterDatabaseFailureOrSuccessOption: none(),
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
          title: Title(titleTrim),
          titleStr: titleTrim,
          titleWordCount: wordCount,
        );
      },
    );
  }
}
