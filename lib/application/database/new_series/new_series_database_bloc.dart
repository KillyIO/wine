import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart' hide Title;
import 'package:flutter/foundation.dart' hide Summary;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:stringprocess/stringprocess.dart';
import 'package:uuid/uuid.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_placeholder_database_facade.dart';
import 'package:wine/domain/database/i_local_series_draft_database_facade.dart';
import 'package:wine/domain/database/summary.dart';
import 'package:wine/domain/database/genre.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/language.dart';
import 'package:wine/domain/database/subtitle.dart';
import 'package:wine/domain/database/title.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/methods.dart';

part 'new_series_database_event.dart';
part 'new_series_database_state.dart';

part 'new_series_database_bloc.freezed.dart';

@injectable
class NewSeriesDatabaseBloc
    extends Bloc<NewSeriesDatabaseEvent, NewSeriesDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final ILocalSeriesDraftDatabaseFacade _localSeriesDraftDatabaseFacade;
  final ILocalPlaceholderDatabaseFacade _localPlaceholderDatabaseFacade;

  final Uuid uuid = Uuid();
  final StringProcessor tps = StringProcessor();

  NewSeriesDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._localSeriesDraftDatabaseFacade,
    this._localPlaceholderDatabaseFacade,
  );

  @override
  NewSeriesDatabaseState get initialState => NewSeriesDatabaseState.initial();

  @override
  Stream<NewSeriesDatabaseState> mapEventToState(
    NewSeriesDatabaseEvent event,
  ) async* {
    yield* event.map(
      newSeriesPageLaunched: (event) async* {
        final Random random = Random();

        Either<DatabaseFailure, dynamic> failureOrSuccess;

        SeriesDraft seriesDraft;
        bool isEditMode = false;
        String placeholderUrl = '';

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

        final List<String> placeholderUrls = Methods.getPlaceholderKeys();
        final String randomKey =
            placeholderUrls[random.nextInt(placeholderUrls.length)];

        failureOrSuccess = await _localPlaceholderDatabaseFacade
            .getPlaceholderUrlByKey(randomKey);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is String) {
              placeholderUrl = success;
            }
          },
        );

        if (isEditMode) {
          yield state.copyWith(
            seriesDraft: seriesDraft,
            isEditMode: isEditMode,
            coverPath: seriesDraft.coverPath,
            title: Title(seriesDraft.title),
            titleStr: seriesDraft.title,
            titleWordCount: tps.getWordCount(seriesDraft.title),
            subtitle: Subtitle(seriesDraft.subtitle),
            subtitleStr: seriesDraft.subtitle,
            subtitleWordCount: tps.getWordCount(seriesDraft.subtitle),
            summary: Summary(seriesDraft.summary),
            summaryStr: seriesDraft.summary,
            summaryWordCount: tps.getWordCount(seriesDraft.summary),
            genre: Genre(seriesDraft.genre),
            genreStr: seriesDraft.genre,
            genreOptional: Genre(seriesDraft.genreOptional, isOptional: true),
            genreOptionalStr: seriesDraft.genreOptional,
            language: Language(seriesDraft.language),
            languageStr: seriesDraft.language,
            isNSFW: seriesDraft.isNSFW,
            genresMap: Methods.getGenres(event.context),
            languagesMap: Methods.getLanguages(event.context),
            placeholderUrl: placeholderUrl,
            databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        } else {
          yield state.copyWith(
            seriesDraft: seriesDraft,
            isEditMode: isEditMode,
            genresMap: Methods.getGenres(event.context),
            languagesMap: Methods.getLanguages(event.context),
            placeholderUrl: placeholderUrl,
            databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }
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
                appDocDir.uri.resolve('${p.basename(croppedFile.path)}').path;
            final File coverFile = await croppedFile.copy(coverPath);

            yield state.copyWith(
              coverPath: coverFile.path,
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
      subtitleChanged: (event) async* {
        final String subtitleTrim = event.subtitle.trim();
        final int wordCount = tps.getWordCount(subtitleTrim);

        yield state.copyWith(
          subtitle: Subtitle(subtitleTrim),
          subtitleStr: subtitleTrim,
          subtitleWordCount: wordCount,
          databaseFailureOrSuccessOption: none(),
        );
      },
      summaryChanged: (event) async* {
        final String summaryTrim = event.summary.trim();
        final int wordCount = tps.getWordCount(summaryTrim);

        yield state.copyWith(
          summary: Summary(summaryTrim),
          summaryStr: summaryTrim,
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
            isCreatingOrDeleting: true,
            databaseFailureOrSuccessOption: none(),
          );

          final SeriesDraft seriesDraft = state.seriesDraft;

          seriesDraft
            ..coverPath = state.coverPath
            ..title = state.title.getOrCrash()
            ..subtitle = state.subtitle.getOrCrash()
            ..summary = state.summary.getOrCrash()
            ..genre = state.genre.getOrCrash()
            ..genreOptional = state.genreOptional.getOrCrash()
            ..language = state.language.getOrCrash()
            ..isNSFW = state.isNSFW;

          failureOrSuccess = await _localSeriesDraftDatabaseFacade
              .saveSeriesDraft(seriesDraft);
        }

        yield state.copyWith(
          isCreatingOrDeleting: false,
          showErrorMessages: true,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      deleteDraftButtonPressed: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        yield state.copyWith(
          isCreatingOrDeleting: true,
          databaseFailureOrSuccessOption: none(),
        );

        final String seriesDraftUid = state.seriesDraft.uid;

        failureOrSuccess = await _localSeriesDraftDatabaseFacade
            .deleteSeriesDraft(seriesDraftUid);

        yield state.copyWith(
          isCreatingOrDeleting: false,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
