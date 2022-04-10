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
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/tree/i_tree_repository.dart';
import 'package:wine/domain/tree/subtitle.dart';
import 'package:wine/domain/tree/synopsis.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/utils/constants/cover.dart';

part 'typewriter_tree_bloc.freezed.dart';
part 'typewriter_tree_event.dart';
part 'typewriter_tree_state.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class TypewriterTreeBloc
    extends Bloc<TypewriterTreeEvent, TypewriterTreeState> {
  /// @nodoc
  TypewriterTreeBloc(
    this._defaultCoversRepository,
    this._sessionsRepository,
    this._treeRepository,
  ) : super(TypewriterTreeState.initial()) {
    on<AddCoverPressed>((_, emit) async {
      final imagePicker = ImagePicker();

      final pickedFile = await imagePicker.pickImage(
        source: ImageSource.gallery,
        maxWidth: maxWidthAsDouble,
        maxHeight: maxHeightAsDouble,
      );

      if (pickedFile != null) {
        final image = File(pickedFile.path);

        final croppedFile = await ImageCropper().cropImage(
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
      (await _treeRepository.deleteTree(state.tree.uid)).match(
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
              failureOption: Option.some(Err(CoreFailure.tree(failure))),
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
    on<LaunchAsNewTree>((_, emit) async {
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
              tree: state.tree.copyWith(authorUID: user.uid),
              failureOption: const None(),
            ),
          );

          add(const TypewriterTreeEvent.sessionFetched());
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
    on<LaunchWithUID>((value, emit) async {
      emit(
        state.copyWith(
          failureOption: Option.none(),
          isProcessing: true,
        ),
      );

      final tree = value.tree;
      if (tree != null) {
        emit(
          state.copyWith(
            coverURL: tree.coverURL.getOrCrash(),
            genres: tree.genres,
            isEdit: true,
            isNSFW: tree.isNSFW,
            isProcessing: false,
            language: tree.language,
            tree: tree,
            subtitle: tree.subtitle ?? Subtitle(''),
            subtitleWordCount: tree.subtitle?.getOrNull()?.countWords() ?? 0,
            subtitleController:
                TextEditingController(text: tree.subtitle?.getOrNull()),
            synopsis: tree.synopsis,
            synopsisWordCount: tree.synopsis.getOrNull()?.countWords() ?? 0,
            synopsisController:
                TextEditingController(text: tree.synopsis.getOrNull()),
            title: tree.title,
            titleWordCount: tree.title.getOrNull()?.countWords() ?? 0,
            titleController:
                TextEditingController(text: tree.title.getOrNull()),
          ),
        );
      } else {
        (await _treeRepository.loadTreeByUID(value.uid)).match(
          (tree) {
            emit(
              state.copyWith(
                coverURL: tree.coverURL.getOrCrash(),
                genres: tree.genres,
                isEdit: true,
                isNSFW: tree.isNSFW,
                isProcessing: false,
                language: tree.language,
                tree: tree,
                subtitle: tree.subtitle ?? Subtitle(''),
                subtitleWordCount:
                    tree.subtitle?.getOrNull()?.countWords() ?? 0,
                subtitleController:
                    TextEditingController(text: tree.subtitle?.getOrNull()),
                synopsis: tree.synopsis,
                synopsisWordCount: tree.synopsis.getOrNull()?.countWords() ?? 0,
                synopsisController:
                    TextEditingController(text: tree.synopsis.getOrNull()),
                title: tree.title,
                titleWordCount: tree.title.getOrNull()?.countWords() ?? 0,
                titleController:
                    TextEditingController(text: tree.title.getOrNull()),
              ),
            );
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.tree(failure))),
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
          state.synopsis.isValid &&
          state.title.isValid;

      if (isValid) {
        final tree = state.tree.copyWith(
          coverURL: isURL(state.coverURL)
              ? CoverURL(state.coverURL)
              : CoverURL.fromFile(state.coverURL),
          genres: state.genres,
          isNSFW: state.isNSFW,
          language: state.language,
          isPublished: true,
          subtitle: state.subtitle,
          synopsis: state.synopsis,
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
          tree,
          emit,
        );
      }
    });
    on<SaveButtonPressed>((_, emit) async {
      final tree = state.tree.copyWith(
        coverURL: CoverURL(state.coverURL),
        genres: state.genres,
        isNSFW: state.isNSFW,
        language: Language.forSaving(state.language.value),
        subtitle: state.subtitle,
        synopsis: Synopsis.forSaving(state.synopsis.value),
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
        tree,
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
    on<SynopsisChanged>((value, emit) {
      final synopsisTrim = value.synopsis.trim();
      final wordCount = synopsisTrim.countWords();

      emit(
        state.copyWith(
          failureOption: const None(),
          synopsis: Synopsis(synopsisTrim),
          synopsisWordCount: wordCount,
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
  final ISessionsRepository _sessionsRepository;
  final ITreeRepository _treeRepository;

  FutureOr<void> _publishOrSave(
    bool isEdit,
    TypewriterEndState endState,
    Tree tree,
    Emitter<TypewriterTreeState> emit,
  ) async {
    if (state.isEdit) {
      (await _treeRepository.updateTree(tree)).match(
        (tree_) {
          emit(
            state.copyWith(
              endState: endState,
              failureOption: const None(),
              isProcessing: false,
              tree: tree_,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.tree(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    } else {
      (await _treeRepository.createTree(tree)).match(
        (tree_) {
          emit(
            state.copyWith(
              endState: endState,
              failureOption: const None(),
              isProcessing: false,
              tree: tree_,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.tree(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    }
  }
}
