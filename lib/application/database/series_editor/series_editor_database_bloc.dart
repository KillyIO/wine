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
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/local/i_local_placeholder_database_facade.dart';
import 'package:wine/domain/database/facades/local/i_local_session_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_chapter_draft_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_series_draft_database_facade.dart';
import 'package:wine/domain/database/failures/placeholder_database_failure.dart';
import 'package:wine/domain/database/genre.dart';
import 'package:wine/domain/database/language.dart';
import 'package:wine/domain/database/subtitle.dart';
import 'package:wine/domain/database/successes/chapter_draft_database_success.dart';
import 'package:wine/domain/database/successes/placeholder_database_success.dart';
import 'package:wine/domain/database/successes/series_draft_database_success.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/domain/database/summary.dart';
import 'package:wine/domain/database/title.dart';
import 'package:wine/domain/enums/editor_content_origin.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/getters.dart';

part 'series_editor_database_bloc.freezed.dart';
part 'series_editor_database_event.dart';
part 'series_editor_database_state.dart';

/// @nodoc
@injectable
class SeriesEditorDatabaseBloc
    extends Bloc<SeriesEditorDatabaseEvent, SeriesEditorDatabaseState>
    with Getters {
  /// @nodoc
  SeriesEditorDatabaseBloc(
    this._localPlaceholderDatabaseFacade,
    this._localSessionDatabaseFacade,
    this._onlineChapterDraftDatabaseFacade,
    this._onlineSeriesDraftDatabaseFacade,
  ) : super(SeriesEditorDatabaseState.initial());

  final ILocalPlaceholderDatabaseFacade _localPlaceholderDatabaseFacade;
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineChapterDraftDatabaseFacade _onlineChapterDraftDatabaseFacade;
  final IOnlineSeriesDraftDatabaseFacade _onlineSeriesDraftDatabaseFacade;

  /// @nodoc
  final StringProcessor tps = StringProcessor();

  @override
  Stream<SeriesEditorDatabaseState> mapEventToState(
    SeriesEditorDatabaseEvent event,
  ) async* {
    yield* event.map(
      addCoverPressedEVT: (event) async* {
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
              chapterDraftDatabaseFailureOrSuccessOption: none(),
              coverURL: coverFile.path,
              placeholderDatabaseFailureOrSuccessOption: none(),
              seriesDraftDatabaseFailureOrSuccessOption: none(),
              sessionDatabaseFailureOrSuccessOption: none(),
            );
          }
        }
      },
      chapterDraftDeletedEVT: (event) async* {
        final failureOrSuccess = await _onlineSeriesDraftDatabaseFacade
            .deleteSeriesDraft(state.seriesDraft.uid);
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          isLoading: callSuccess,
          seriesDraftDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      deleteDraftButtonPressedEVT: (event) async* {
        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          isLoading: true,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );

        final failureOrSuccess = await _onlineChapterDraftDatabaseFacade
            .deleteChapterDraft(seriesDraftUID: state.seriesDraft.uid);
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption:
              optionOf(failureOrSuccess),
          isLoading: callSuccess,
        );

        if (callSuccess) {
          add(const SeriesEditorDatabaseEvent.chapterDraftDeletedEVT());
        }
      },
      genreOptionalSelectedEVT: (event) async* {
        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          genreOptional: Genre(event.genreOptional, isOptional: true),
          genreOptionalStr: event.genreOptional,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      genreSelectedEVT: (event) async* {
        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          genre: Genre(event.genre),
          genreStr: event.genre,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      isNSFWChangedEVT: (event) async* {
        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          isNSFW: event.isNSFW,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      languageSelectedEVT: (event) async* {
        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          language: Language(event.language),
          languageStr: event.language,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      seriesEditorLaunchedFromHomeEVT: (event) async* {
        yield state.copyWith(
          isLoading: true,
        );

        final uuid = Uuid();

        final seriesDraft = state.seriesDraft;

        final failureOrSuccess =
            await _localSessionDatabaseFacade.fetchSession()
              ..fold(
                (_) {},
                (success) {
                  if (success is SessionFetchedSCS) {
                    seriesDraft
                      ..authorUID = success.session.uid
                      ..authorUsername = success.session.username
                      ..uid = uuid.v4();
                  }
                },
              );
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          editorContentOrigin: EditorContentOrigin.home,
          isLoading: callSuccess,
          seriesDraft: seriesDraft,
          placeholderDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (callSuccess) {
          add(const SeriesEditorDatabaseEvent.sessionFetchedEVT());
        }
      },
      seriesEditorLaunchedFromLibraryEVT: (event) async* {
        state.subtitleController.text = state.seriesDraft.subtitle;
        state.summaryController.text = state.seriesDraft.summary;
        state.titleController.text = state.seriesDraft.title;

        yield state.copyWith(
          coverURL: state.seriesDraft.coverURL,
          editorContentOrigin: EditorContentOrigin.library,
          genre: Genre(state.seriesDraft.genre),
          genreOptional: Genre(
            state.seriesDraft.genreOptional,
            isOptional: true,
          ),
          genreOptionalStr: state.seriesDraft.genreOptional,
          genreStr: state.seriesDraft.genre,
          isEditMode: true,
          isNSFW: state.seriesDraft.isNSFW,
          language: Language(state.seriesDraft.language),
          languageStr: state.seriesDraft.language,
          seriesDraft: state.seriesDraft,
          subtitle: Subtitle(state.seriesDraft.subtitle),
          subtitleController: state.subtitleController,
          subtitleStr: state.seriesDraft.subtitle,
          subtitleWordCount: tps.getWordCount(state.seriesDraft.subtitle),
          summary: Summary(state.seriesDraft.summary),
          summaryController: state.summaryController,
          summaryStr: state.seriesDraft.summary,
          summaryWordCount: tps.getWordCount(state.seriesDraft.summary),
          title: Title(state.seriesDraft.title),
          titleController: state.titleController,
          titleStr: state.seriesDraft.title,
          titleWordCount: tps.getWordCount(state.seriesDraft.title),
        );
      },
      sessionFetchedEVT: (event) async* {
        final random = Random();
        final randomKey =
            placeholderKeys[random.nextInt(placeholderKeys.length)];

        var coverURL = state.coverURL;

        final failureOrSuccess = await _localPlaceholderDatabaseFacade
            .fetchPlaceholderByKey(randomKey)
          ..fold(
            (_) {},
            (success) {
              if (success is PlaceholderFetchedSCS) {
                coverURL = success.placeholder;
              }
            },
          );

        yield state.copyWith(
          coverURL: coverURL,
          editorContentOrigin: EditorContentOrigin.home,
          isLoading: false,
          placeholderDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          sessionDatabaseFailureOrSuccessOption: none(),
        );
      },
      saveSeriesDraftButtonPressedEVT: (event) async* {
        Either<DatabaseFailure, SeriesDraftDatabaseSuccess> failureOrSuccess;

        final isTitleValid = state.title.isValid();
        final isSummaryValid = state.summary.isValid();
        final isGenreValid = state.genre.isValid();
        final isLanguageValid = state.language.isValid();

        final seriesDraft = state.seriesDraft;

        if (isTitleValid && isSummaryValid && isGenreValid && isLanguageValid) {
          yield state.copyWith(
            chapterDraftDatabaseFailureOrSuccessOption: none(),
            isLoading: true,
            placeholderDatabaseFailureOrSuccessOption: none(),
            seriesDraftDatabaseFailureOrSuccessOption: none(),
            sessionDatabaseFailureOrSuccessOption: none(),
            showErrorMessages: false,
          );

          final currentTime = DateTime.now().millisecondsSinceEpoch;
          seriesDraft
            ..coverURL = state.coverURL
            ..createdAt = currentTime
            ..genre = state.genre.getOrCrash()
            ..genreOptional = state.genreOptional.getOrCrash()
            ..isNSFW = state.isNSFW
            ..language = state.language.getOrCrash()
            ..subtitle = state.subtitle.getOrCrash()
            ..summary = state.summary.getOrCrash()
            ..title = state.title.getOrCrash()
            ..updatedAt = currentTime;

          failureOrSuccess = await _onlineSeriesDraftDatabaseFacade
              .saveSeriesDraft(seriesDraft);
        }

        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          disclaimerAlreadyDisplayed: true,
          isLoading: false,
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDraft: seriesDraft,
          seriesDraftDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          sessionDatabaseFailureOrSuccessOption: none(),
          showErrorMessages: true,
        );
      },
      subtitleChangedEVT: (event) async* {
        final subtitleTrim = event.subtitle.trim();
        final wordCount = tps.getWordCount(subtitleTrim);

        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
          subtitle: Subtitle(subtitleTrim),
          subtitleStr: subtitleTrim,
          subtitleWordCount: wordCount,
        );
      },
      summaryChangedEVT: (event) async* {
        final summaryTrim = event.summary.trim();
        final wordCount = tps.getWordCount(summaryTrim);

        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          placeholderDatabaseFailureOrSuccessOption: none(),
          seriesDraftDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
          summary: Summary(summaryTrim),
          summaryStr: summaryTrim,
          summaryWordCount: wordCount,
        );
      },
      titleChangedEVT: (event) async* {
        final titleTrim = event.title.trim();
        final wordCount = tps.getWordCount(titleTrim);

        yield state.copyWith(
          chapterDraftDatabaseFailureOrSuccessOption: none(),
          placeholderDatabaseFailureOrSuccessOption: none(),
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
