import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' hide Title;
import 'package:flutter_quill/flutter_quill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:string_validator/string_validator.dart';
import 'package:stringr/stringr.dart';
import 'package:wine/domain/chapter/body.dart';
import 'package:wine/domain/chapter/chapter.dart';
import 'package:wine/domain/chapter/i_chapter_repository.dart';
import 'package:wine/domain/chapter/licence.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/language.dart';
import 'package:wine/domain/core/title.dart';
import 'package:wine/domain/core/typewriter_end_state.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/utils/constants/cover.dart';
import 'package:wine/utils/constants/typewriter.dart';

part 'typewriter_chapter_bloc.freezed.dart';
part 'typewriter_chapter_event.dart';
part 'typewriter_chapter_state.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class TypewriterChapterBloc
    extends Bloc<TypewriterChapterEvent, TypewriterChapterState> {
  /// @nodoc
  TypewriterChapterBloc(
    this._chapterRepository,
    this._defaultCoversRepository,
    this._sessionsRepository,
  ) : super(TypewriterChapterState.initial()) {
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
    on<BodyChanged>((_, emit) {
      final valuePlainText = state.bodyController.document.toPlainText();
      final valueJson = state.bodyController.document.toDelta().toJson();

      final bodyTrim = valuePlainText.trim();
      final wordCount = bodyTrim.countWords();

      emit(
        state.copyWith(
          failureOption: const None(),
          body: Body(valuePlainText, valueJson),
          bodyWordCount: wordCount,
        ),
      );
    });
    on<ChapterOneExistenceChecked>((_, emit) async => await _publish(emit));
    on<DeleteButtonPressed>((_, emit) async {
      (await _chapterRepository.deleteChapter(state.chapter.uid)).match(
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
              failureOption: Option.some(Err(CoreFailure.chapter(failure))),
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
    on<LaunchAsNewChapter>((value, emit) async {
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
              bodyController: QuillController.basic()
                ..changes.listen((_) => add(const BodyChanged())),
              chapter: state.chapter.copyWith(
                authorUID: user.uid,
                index: (value.previousChapter?.index ?? 0) + 1,
                previousChapterUID: value.previousChapter?.uid,
                seriesUID: value.series.uid,
              ),
              failureOption: const None(),
              genres: value.previousChapter?.genres ?? value.series.genres,
              isNSFW: value.previousChapter?.isNSFW ?? value.series.isNSFW,
              language:
                  value.previousChapter?.language ?? value.series.language,
            ),
          );

          add(const TypewriterChapterEvent.sessionFetched());
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

      final chapter = value.chapter;
      if (chapter != null) {
        emit(
          state.copyWith(
            body: chapter.body,
            bodyWordCount: chapter.body.getOrNull()?.countWords() ?? 0,
            coverURL: chapter.coverURL.getOrCrash(),
            genres: chapter.genres,
            isEdit: true,
            isNSFW: chapter.isNSFW,
            isProcessing: false,
            language: chapter.language,
            licence: chapter.licence,
            title: chapter.title,
            titleWordCount: chapter.title.getOrNull()?.countWords() ?? 0,
          ),
        );
      } else {
        (await _chapterRepository.loadChapterByID(value.id)).match(
          (chapter) {
            emit(
              state.copyWith(
                body: chapter.body,
                bodyWordCount: chapter.body.getOrNull()?.countWords() ?? 0,
                chapter: chapter,
                coverURL: chapter.coverURL.getOrCrash(),
                genres: chapter.genres,
                isEdit: true,
                isNSFW: chapter.isNSFW,
                isProcessing: false,
                language: chapter.language,
                licence: chapter.licence,
                title: chapter.title,
                titleWordCount: chapter.title.getOrNull()?.countWords() ?? 0,
              ),
            );
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.chapter(failure))),
                isProcessing: false,
              ),
            );
          },
        );
      }
    });
    on<LicenceSelected>(
      (value, emit) => emit(
        state.copyWith(
          failureOption: const None(),
          licence: Licence(value.licence),
        ),
      ),
    );
    on<PageViewIndexChanged>((value, emit) {
      if (state.currentPageViewIdx != value.index) {
        var newIdx = value.index;
        if (value.index > typewriterChapterPageViewKeys.length - 1) {
          newIdx = 0;
        }
        if (value.index < 0) {
          newIdx = typewriterChapterPageViewKeys.length - 1;
        }
        emit(
          state.copyWith(
            currentPageViewIdx: newIdx,
            failureOption: Option.none(),
          ),
        );
      }
    });
    on<PublishButtonPressed>((_, emit) async {
      final isValid = state.body.isValid &&
          state.genres.isNotEmpty &&
          state.language.isValid &&
          state.title.isValid;

      if (isValid) {
        emit(
          state.copyWith(
            failureOption: Option.none(),
            isProcessing: true,
          ),
        );

        if (state.chapter.previousChapterUID == null) {
          (await _chapterRepository
                  .checkChapterOneAlreadyExists(state.chapter.seriesUID))
              .match(
            (_) {
              add(const TypewriterChapterEvent.chapterOneExistenceChecked());
            },
            (failure) {
              emit(
                state.copyWith(
                  failureOption: Option.some(Err(CoreFailure.chapter(failure))),
                  isProcessing: false,
                ),
              );
            },
          );
        } else {
          await _publish(emit);
        }
      }
    });
    on<SaveButtonPressed>((_, emit) async {
      final chapter = state.chapter.copyWith(
        body: Body.forSaving(state.body.value),
        coverURL: CoverURL(state.coverURL),
        genres: state.genres,
        isNSFW: state.isNSFW,
        language: Language.forSaving(state.language.value),
        licence: Licence.forSaving(state.licence.value),
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
        chapter,
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

  final IChapterRepository _chapterRepository;
  final IDefaultCoversRepository _defaultCoversRepository;
  final ISessionsRepository _sessionsRepository;

  FutureOr<void> _publish(Emitter<TypewriterChapterState> emit) async {
    final chapter = state.chapter.copyWith(
      body: state.body,
      coverURL: isURL(state.coverURL)
          ? CoverURL(state.coverURL)
          : CoverURL.fromFile(state.coverURL),
      genres: state.genres,
      isNSFW: state.isNSFW,
      language: state.language,
      licence: state.licence,
      isPublished: true,
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
      chapter,
      emit,
    );
  }

  FutureOr<void> _publishOrSave(
    bool isEdit,
    TypewriterEndState endState,
    Chapter chapter,
    Emitter<TypewriterChapterState> emit,
  ) async {
    if (state.isEdit) {
      (await _chapterRepository.updateChapter(chapter)).match(
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
              failureOption: Option.some(Err(CoreFailure.chapter(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    } else {
      (await _chapterRepository.createChapter(chapter)).match(
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
              failureOption: Option.some(Err(CoreFailure.chapter(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    }
  }
}
