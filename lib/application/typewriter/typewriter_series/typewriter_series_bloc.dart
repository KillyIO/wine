import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' hide Title;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:string_validator/string_validator.dart';
import 'package:stringr/stringr.dart';

import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/typewriter_end_state.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/series/i_series_repository.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/series/subtitle.dart';
import 'package:wine/domain/series/summary.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/utils/constants/cover.dart';

part 'typewriter_series_bloc.freezed.dart';
part 'typewriter_series_event.dart';
part 'typewriter_series_state.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class TypewriterSeriesBloc
    extends Bloc<TypewriterSeriesEvent, TypewriterSeriesState> {
  /// @nodoc
  TypewriterSeriesBloc(
    this._defaultCoversRepository,
    this._seriesRepository,
    this._sessionsRepository,
  ) : super(TypewriterSeriesState.initial()) {
    on<AddCoverPressed>((_, emit) async {
      final imagePicker = ImagePicker();

      final pickedFile = await imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: maxWidthAsDouble,
        maxHeight: maxHeightAsDouble,
      );

      if (pickedFile != null) {
        final image = File(pickedFile.path);

        final croppedFile = await ImageCropper.cropImage(
          sourcePath: image.path,
          maxWidth: maxWidth,
          maxHeight: maxHeight,
          aspectRatio: const CropAspectRatio(
            ratioX: ratioX,
            ratioY: ratioY,
          ),
        );

        if (croppedFile != null) {
          final appDocDir = await getApplicationDocumentsDirectory();
          final coverPath =
              appDocDir.uri.resolve(p.basename(croppedFile.path)).path;
          final coverFile = await croppedFile.copy(coverPath);

          emit(
            state.copyWith(
              coverURL: coverFile.path,
              failureOption: const None(),
            ),
          );
        }
      }
    });
    on<DeleteButtonPressed>((_, emit) async {
      (await _seriesRepository.deleteSeries(state.series.uid)).match(
        (_) {
          emit(
            state.copyWith(
              failureOption: const None(),
              endState: TypewriterEndState.deleted,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.series(failure))),
            ),
          );
        },
      );
    });
    on<GenreAdded>((value, emit) {
      final genre = Genre(value.genre);
      final genres = List<Genre>.from(state.genres)..add(genre);

      emit(
        state.copyWith(
          failureOption: const None(),
          genres: genres,
        ),
      );
    });
    on<GenreRemoved>((value, emit) {
      final genres =
          state.genres.where((g) => g.getOrCrash() != value.genre).toList();

      emit(
        state.copyWith(
          failureOption: const None(),
          genres: genres,
        ),
      );
    });
    on<IsNSFWChanged>(
      (value, emit) => emit(
        state.copyWith(
          failureOption: const None(),
          isNSFW: value.isNSFW,
        ),
      ),
    );
    on<LanguageSelected>(
      (value, emit) => emit(
        state.copyWith(
          failureOption: const None(),
          language: Language(value.language),
        ),
      ),
    );
    on<LaunchAsNewSeries>((_, emit) async {
      emit(
        state.copyWith(
          failureOption: Option.none(),
          isProcessing: true,
        ),
      );

      (await _sessionsRepository.fetchSession()).match(
        (user) {
          emit(
            state.copyWith(
              series: state.series.copyWith(authorUID: user.uid),
              failureOption: const None(),
            ),
          );

          add(const TypewriterSeriesEvent.sessionFetched());
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.sessions(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    });
    on<LaunchWithID>((value, emit) async {
      emit(
        state.copyWith(
          failureOption: Option.none(),
          isProcessing: true,
        ),
      );

      if (value.series != null) {
        final series = value.series;

        emit(
          state.copyWith(
            coverURL: series!.coverURL.getOrCrash(),
            genres: series.genres,
            isEdit: true,
            isNSFW: series.isNSFW,
            isProcessing: false,
            language: series.language,
            series: series,
            subtitle: series.subtitle ?? Subtitle(''),
            subtitleWordCount: series.subtitle?.getOrNull()?.countWords() ?? 0,
            summary: series.summary,
            summaryWordCount: series.summary.getOrNull()?.countWords() ?? 0,
            title: series.title,
            titleWordCount: series.title.getOrNull()?.countWords() ?? 0,
          ),
        );
      } else {
        (await _seriesRepository.loadSeriesByID(value.id)).match(
          (series) {
            emit(
              state.copyWith(
                coverURL: series.coverURL.getOrCrash(),
                genres: series.genres,
                isEdit: true,
                isNSFW: series.isNSFW,
                isProcessing: false,
                language: series.language,
                series: series,
                subtitle: series.subtitle ?? Subtitle(''),
                subtitleWordCount:
                    series.subtitle?.getOrNull()?.countWords() ?? 0,
                summary: series.summary,
                summaryWordCount: series.summary.getOrNull()?.countWords() ?? 0,
                title: series.title,
                titleWordCount: series.title.getOrNull()?.countWords() ?? 0,
              ),
            );
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.series(failure))),
                isProcessing: false,
              ),
            );
          },
        );
      }
    });
    on<PublishButtonPressed>((_, emit) async {
      final isValid = state.genres.isNotEmpty &&
          state.language.isValid &&
          state.summary.isValid &&
          state.title.isValid;

      if (isValid) {
        final series = state.series.copyWith(
          coverURL: isURL(state.coverURL)
              ? CoverURL(state.coverURL)
              : CoverURL.fromFile(state.coverURL),
          genres: state.genres,
          isNSFW: state.isNSFW,
          language: state.language,
          isPublished: true,
          subtitle: state.subtitle,
          summary: state.summary,
          title: state.title,
        );

        emit(
          state.copyWith(
            failureOption: Option.none(),
            isProcessing: true,
          ),
        );

        await _publishOrSave(
          state.isEdit,
          TypewriterEndState.published,
          series,
          emit,
        );
      }
    });
    on<SaveButtonPressed>((_, emit) async {
      final series = state.series.copyWith(
        coverURL: CoverURL(state.coverURL),
        genres: state.genres,
        isNSFW: state.isNSFW,
        language: Language.forSaving(state.language.value),
        subtitle: state.subtitle,
        summary: Summary.forSaving(state.summary.value),
        title: Title.forSaving(state.title.value),
      );

      emit(
        state.copyWith(
          failureOption: Option.none(),
          isProcessing: true,
        ),
      );

      await _publishOrSave(
        state.isEdit,
        TypewriterEndState.saved,
        series,
        emit,
      );
    });
    on<SessionFetched>((_, emit) async {
      final randomKey =
          placeholdersKeys[Random().nextInt(placeholdersKeys.length)];

      (await _defaultCoversRepository.fetchDefaultCoverByKey(randomKey)).match(
        (defaultCover) {
          emit(
            state.copyWith(
              coverURL: defaultCover.url.getOrCrash(),
              failureOption: const None(),
              isProcessing: false,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption:
                  Option.some(Err(CoreFailure.defaultCovers(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    });
    on<SubtitleChanged>((value, emit) {
      final subtitleTrim = value.subtitle.trim();
      final wordCount = subtitleTrim.countWords();

      emit(
        state.copyWith(
          failureOption: const None(),
          subtitle: Subtitle(subtitleTrim),
          subtitleWordCount: wordCount,
        ),
      );
    });
    on<SummaryChanged>((value, emit) {
      final summaryTrim = value.summary.trim();
      final wordCount = summaryTrim.countWords();

      emit(
        state.copyWith(
          failureOption: const None(),
          summary: Summary(summaryTrim),
          summaryWordCount: wordCount,
        ),
      );
    });
    on<TitleChanged>((value, emit) {
      final titleTrim = value.title.trim();
      final wordCount = titleTrim.countWords();

      emit(
        state.copyWith(
          failureOption: const None(),
          title: Title(titleTrim),
          titleWordCount: wordCount,
        ),
      );
    });
  }

  final IDefaultCoversRepository _defaultCoversRepository;
  final ISeriesRepository _seriesRepository;
  final ISessionsRepository _sessionsRepository;

  FutureOr<void> _publishOrSave(
    bool isEdit,
    TypewriterEndState endState,
    Series series,
    Emitter<TypewriterSeriesState> emit,
  ) async {
    if (state.isEdit) {
      (await _seriesRepository.updateSeries(series)).match(
        (_) {
          emit(
            state.copyWith(
              endState: endState,
              failureOption: const None(),
              isProcessing: false,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.series(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    } else {
      (await _seriesRepository.createSeries(series)).match(
        (_) {
          emit(
            state.copyWith(
              endState: endState,
              failureOption: const None(),
              isProcessing: false,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.series(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    }
  }
}
