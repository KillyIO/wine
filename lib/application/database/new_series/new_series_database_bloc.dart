import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart' hide Summary;
import 'package:flutter/widgets.dart' hide Title;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:stringprocess/stringprocess.dart';
import 'package:uuid/uuid.dart';

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/genre.dart';
import 'package:wine/domain/database/i_local_chapter_draft_database_facade.dart';
import 'package:wine/domain/database/i_local_placeholder_database_facade.dart';
import 'package:wine/domain/database/i_local_series_draft_database_facade.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/language.dart';
import 'package:wine/domain/database/subtitle.dart';
import 'package:wine/domain/database/summary.dart';
import 'package:wine/domain/database/title.dart';
import 'package:wine/domain/models/hive/chapter_draft.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/injection.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/methods.dart';

part 'new_series_database_bloc.freezed.dart';
part 'new_series_database_event.dart';
part 'new_series_database_state.dart';

@injectable
class NewSeriesDatabaseBloc extends Bloc<NewSeriesDatabaseEvent, NewSeriesDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final ILocalChapterDraftDatabaseFacade _localChapterDraftDatabaseFacade;
  final ILocalSeriesDraftDatabaseFacade _localSeriesDraftDatabaseFacade;
  final ILocalPlaceholderDatabaseFacade _localPlaceholderDatabaseFacade;

  final ImagePicker imagePicker = ImagePicker();
  final StringProcessor tps = StringProcessor();
  final Uuid uuid = Uuid();

  NewSeriesDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._localChapterDraftDatabaseFacade,
    this._localSeriesDraftDatabaseFacade,
    this._localPlaceholderDatabaseFacade,
  ) : super(NewSeriesDatabaseState.initial());

  @override
  Stream<NewSeriesDatabaseState> mapEventToState(NewSeriesDatabaseEvent event) async* {
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
      chapterDraftDeletedEVT: (event) async* {
        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _localSeriesDraftDatabaseFacade.deleteSeriesDraft(state.seriesDraft.uid);

        yield state.copyWith(isCreatingOrDeleting: false, databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      deleteDraftButtonPressedEVT: (event) async* {
        yield state.copyWith(isCreatingOrDeleting: true, databaseFailureOrSuccessOption: none());

        final List<ChapterDraft> chapterDrafts = getIt<Box<ChapterDraft>>().values.toList();

        if (chapterDrafts.isNotEmpty) {
          final ChapterDraft chapterDraft = chapterDrafts.singleWhere((cD) => cD.seriesUid == state.seriesDraft.uid);

          final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
              await _localChapterDraftDatabaseFacade.deleteChapterDraft(chapterDraft.uid);
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is ChapterDraftDeletedSCS) {
                add(const NewSeriesDatabaseEvent.chapterDraftDeletedEVT());
              }
            },
          );
          yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
        } else {
          add(const NewSeriesDatabaseEvent.chapterDraftDeletedEVT());
        }
      },
      editModeLaunchedEVT: (event) async* {
        state.subtitleController.text = event.seriesDraft.subtitle;
        state.summaryController.text = event.seriesDraft.summary;
        state.titleController.text = event.seriesDraft.title;

        yield state.copyWith(
          coverUrl: event.seriesDraft.coverUrl,
          genre: Genre(event.seriesDraft.genre),
          genreOptional: Genre(event.seriesDraft.genreOptional, isOptional: true),
          genreOptionalStr: event.seriesDraft.genreOptional,
          genreStr: event.seriesDraft.genre,
          isEditMode: true,
          isNSFW: event.seriesDraft.isNSFW,
          language: Language(event.seriesDraft.language),
          languageStr: event.seriesDraft.language,
          seriesDraft: event.seriesDraft,
          subtitle: Subtitle(event.seriesDraft.subtitle),
          subtitleController: state.subtitleController,
          subtitleStr: event.seriesDraft.subtitle,
          subtitleWordCount: tps.getWordCount(event.seriesDraft.subtitle),
          summary: Summary(event.seriesDraft.summary),
          summaryController: state.summaryController,
          summaryStr: event.seriesDraft.summary,
          summaryWordCount: tps.getWordCount(event.seriesDraft.summary),
          title: Title(event.seriesDraft.title),
          titleController: state.titleController,
          titleStr: event.seriesDraft.title,
          titleWordCount: tps.getWordCount(event.seriesDraft.title),
        );
      },
      genreOptionalSelectedEVT: (event) async* {
        yield state.copyWith(
          genreOptional: Genre(event.genreOptional, isOptional: true),
          genreOptionalStr: event.genreOptional,
          databaseFailureOrSuccessOption: none(),
        );
      },
      genreSelectedEVT: (event) async* {
        yield state.copyWith(databaseFailureOrSuccessOption: none(), genre: Genre(event.genre), genreStr: event.genre);
      },
      isNSFWChangedEVT: (event) async* {
        yield state.copyWith(isNSFW: event.isNSFW, databaseFailureOrSuccessOption: none());
      },
      languageSelectedEVT: (event) async* {
        yield state.copyWith(
          databaseFailureOrSuccessOption: none(),
          language: Language(event.language),
          languageStr: event.language,
        );
      },
      newSeriesPageLaunchedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        if (event.seriesDraft != null) {
          add(NewSeriesDatabaseEvent.editModeLaunchedEVT(event.seriesDraft));
        } else {
          failureOrSuccess = await _localSessionDatabaseFacade.fetchSession();
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SessionFetchedSCS) {
                final SeriesDraft seriesDraft = SeriesDraft(uid: uuid.v4(), authorUid: success.session.uid);

                add(NewSeriesDatabaseEvent.sessionFetchedEVT(
                  seriesDraft: seriesDraft,
                  session: success.session,
                ));
              }
            },
          );
        }

        yield state.copyWith(
          genresMap: Methods.getGenres(event.context),
          languagesMap: Methods.getLanguages(event.context),
        );
      },
      saveSeriesDraftButtonPressedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final bool isTitleValid = state.title.isValid();
        final bool isSummaryValid = state.summary.isValid();
        final bool isGenreValid = state.genre.isValid();
        final bool isLanguageValid = state.language.isValid();

        if (isTitleValid && isSummaryValid && isGenreValid && isLanguageValid) {
          yield state.copyWith(isCreatingOrDeleting: true, databaseFailureOrSuccessOption: none());

          final SeriesDraft seriesDraft = state.seriesDraft;

          seriesDraft
            ..coverUrl = state.coverUrl
            ..title = state.title.getOrCrash()
            ..subtitle = state.subtitle.getOrCrash()
            ..summary = state.summary.getOrCrash()
            ..genre = state.genre.getOrCrash()
            ..genreOptional = state.genreOptional.getOrCrash()
            ..language = state.language.getOrCrash()
            ..isNSFW = state.isNSFW;

          failureOrSuccess = await _localSeriesDraftDatabaseFacade.saveSeriesDraft(seriesDraft);
        }

        yield state.copyWith(
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          isCreatingOrDeleting: false,
          showErrorMessages: true,
        );
      },
      sessionFetchedEVT: (event) async* {
        final Random random = Random();
        final List<String> placeholderUrls = Methods.getPlaceholderKeys();
        final String randomKey = placeholderUrls[random.nextInt(placeholderUrls.length)];

        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        String coverUrl;

        failureOrSuccess = await _localPlaceholderDatabaseFacade.fetchPlaceholderUrlByKey(randomKey);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is PlaceholderFetchedSCS) {
              coverUrl = success.placeholderUrl;
            }
          },
        );

        yield state.copyWith(
          coverUrl: coverUrl,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          isEditMode: false,
          seriesDraft: event.seriesDraft,
        );
      },
      subtitleChangedEVT: (event) async* {
        final String subtitleTrim = event.subtitle.trim();
        final int wordCount = tps.getWordCount(subtitleTrim);

        yield state.copyWith(
          databaseFailureOrSuccessOption: none(),
          subtitle: Subtitle(subtitleTrim),
          subtitleStr: subtitleTrim,
          subtitleWordCount: wordCount,
        );
      },
      summaryChangedEVT: (event) async* {
        final String summaryTrim = event.summary.trim();
        final int wordCount = tps.getWordCount(summaryTrim);

        yield state.copyWith(
          databaseFailureOrSuccessOption: none(),
          summary: Summary(summaryTrim),
          summaryStr: summaryTrim,
          summaryWordCount: wordCount,
        );
      },
      titleChangedEVT: (event) async* {
        final String titleTrim = event.title.trim();
        final int wordCount = tps.getWordCount(titleTrim);

        yield state.copyWith(
          databaseFailureOrSuccessOption: none(),
          title: Title(titleTrim),
          titleStr: titleTrim,
          titleWordCount: wordCount,
        );
      },
    );
  }
}
