import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' hide Title;
import 'package:flutter_quill/flutter_quill.dart' hide Leaf;
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
import 'package:wine/features/branch/branch.domain.dart';
import 'package:wine/features/branch/i_branch_repository.domain.dart';
import 'package:wine/features/branch/leaf.domain.dart';
import 'package:wine/features/branch/licence.domain.dart';
import 'package:wine/features/branch/licence_type.domain.dart';
import 'package:wine/features/default_covers/i_default_covers_repository.domain.dart';
import 'package:wine/features/sessions/i_sessions_repository.domain.dart';
import 'package:wine/features/tree/tree.domain.dart';
import 'package:wine/utils/constants/cover.dart';
import 'package:wine/utils/constants/typewriter.dart';

part 'typewriter_branch_bloc.application.freezed.dart';
part 'typewriter_branch_event.application.dart';
part 'typewriter_branch_state.application.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class TypewriterBranchBloc
    extends Bloc<TypewriterBranchEvent, TypewriterBranchState> {
  /// @nodoc
  TypewriterBranchBloc(
    this._branchRepository,
    this._defaultCoversRepository,
    this._sessionsRepository,
  ) : super(TypewriterBranchState.initial()) {
    on<LaunchAsNewBranch>((value, emit) async {
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
              branch: state.branch.copyWith(
                authorUID: user.uid,
                index: (value.previousBranch?.index ?? 0) + 1,
                previousBranchUID: value.previousBranch?.uid,
                treeUID: value.tree?.uid ?? value.previousBranch!.treeUID,
              ),
              failureOption: const None(),
              genres: value.tree?.genres ?? value.previousBranch!.genres,
              isNSFW: value.tree?.isNSFW ?? value.previousBranch!.isNSFW,
              language: value.tree?.language ?? value.previousBranch!.language,
              leafController: QuillController.basic()
                ..changes.listen((_) => add(const LeafChanged())),
            ),
          );

          add(const TypewriterBranchEvent.sessionFetched());
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
    on<PublishButtonPressed>((_, emit) async {
      final isValid = state.genres.isNotEmpty &&
          state.language.isValid &&
          state.leaf.isValid &&
          state.title.isValid;

      if (isValid) {
        emit(
          state.copyWith(
            failureOption: Option.none(),
            isProcessing: true,
          ),
        );

        if (state.branch.previousBranchUID == null) {
          (await _branchRepository
                  .checkBranchOneAlreadyExists(state.branch.treeUID))
              .match(
            (_) {
              add(const TypewriterBranchEvent.branchOneExistenceChecked());
            },
            (failure) {
              emit(
                state.copyWith(
                  failureOption: Option.some(Err(CoreFailure.branch(failure))),
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
    on<BranchOneExistenceChecked>((_, emit) async => await _publish(emit));
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

          emit(
            state.copyWith(
              coverURL: coverPath,
              failureOption: const None(),
            ),
          );
        }
      }
    });
    on<DeleteButtonPressed>((_, emit) async {
      (await _branchRepository.deleteBranch(state.branch.uid)).match(
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
              failureOption: Option.some(Err(CoreFailure.branch(failure))),
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
    on<LaunchWithUID>((value, emit) async {
      emit(
        state.copyWith(
          failureOption: Option.none(),
          isProcessing: true,
        ),
      );

      final branch = value.branch;
      if (branch != null) {
        final quillController = (branch.leaf.getOrNull() != null
            ? QuillController(
                document: Document.fromJson(
                  jsonDecode(branch.leaf.getOrNull()!) as List<dynamic>,
                ),
                selection: const TextSelection.collapsed(offset: 0),
              )
            : QuillController.basic())
          ..changes.listen((_) => add(const LeafChanged()));

        emit(
          state.copyWith(
            branch: branch,
            coverURL: branch.coverURL.getOrCrash(),
            genres: branch.genres,
            isEdit: true,
            isNSFW: branch.isNSFW,
            isProcessing: false,
            language: branch.language,
            leaf: branch.leaf,
            leafWordCount:
                quillController.document.toPlainText().trim().countWords(),
            leafController: quillController,
            licence: branch.licence,
            title: branch.title,
            titleWordCount: branch.title.getOrNull()?.countWords() ?? 0,
            titleController:
                TextEditingController(text: branch.title.getOrNull()),
          ),
        );
      } else {
        (await _branchRepository.loadBranchByUID(value.uid)).match(
          (branch_) {
            final quillController = (branch_.leaf.getOrNull() != null
                ? QuillController(
                    document: Document.fromJson(
                      jsonDecode(branch_.leaf.getOrNull()!) as List<dynamic>,
                    ),
                    selection: const TextSelection.collapsed(offset: 0),
                  )
                : QuillController.basic())
              ..changes.listen((_) => add(const LeafChanged()));

            emit(
              state.copyWith(
                branch: branch_,
                coverURL: branch_.coverURL.getOrCrash(),
                genres: branch_.genres,
                isEdit: true,
                isNSFW: branch_.isNSFW,
                isProcessing: false,
                language: branch_.language,
                leaf: branch_.leaf,
                leafWordCount:
                    quillController.document.toPlainText().trim().countWords(),
                leafController: quillController,
                licence: branch_.licence,
                title: branch_.title,
                titleWordCount: branch_.title.getOrNull()?.countWords() ?? 0,
                titleController:
                    TextEditingController(text: branch_.title.getOrNull()),
              ),
            );
          },
          (failure) {
            emit(
              state.copyWith(
                failureOption: Option.some(Err(CoreFailure.branch(failure))),
                isProcessing: false,
              ),
            );
          },
        );
      }
    });
    on<LeafChanged>((_, emit) {
      final valuePlainText = state.leafController.document.toPlainText();
      final valueJson = state.leafController.document.toDelta().toJson();

      final leafTrim = valuePlainText.trim();
      final wordCount = leafTrim.countWords();

      emit(
        state.copyWith(
          failureOption: const None(),
          leaf: Leaf(valuePlainText, valueJson),
          leafWordCount: wordCount,
        ),
      );
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
        if (value.index > typewriterBranchPageViewKeys.length - 1) {
          newIdx = 0;
        }
        if (value.index < 0) {
          newIdx = typewriterBranchPageViewKeys.length - 1;
        }
        emit(
          state.copyWith(
            currentPageViewIdx: newIdx,
            failureOption: Option.none(),
          ),
        );
      }
    });
    on<SaveButtonPressed>((_, emit) async {
      final branch = state.branch.copyWith(
        coverURL: CoverURL(state.coverURL),
        genres: state.genres,
        isNSFW: state.isNSFW,
        language: Language.forSaving(state.language.value),
        leaf: Leaf.forSaving(state.leaf.value),
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
        branch,
        emit,
      );
    });
    on<TitleChanged>((value, emit) {
      final titleTrim = value.title.trim();
      final wordCount = titleTrim.countWords();

      emit(
        state.copyWith(
          failureOption: const None(),
          isProcessing: false,
          title: Title(titleTrim),
          titleWordCount: wordCount,
        ),
      );
    });
  }

  final IBranchRepository _branchRepository;
  final IDefaultCoversRepository _defaultCoversRepository;
  final ISessionsRepository _sessionsRepository;

  FutureOr<void> _publish(Emitter<TypewriterBranchState> emit) async {
    final branch = state.branch.copyWith(
      coverURL: isURL(state.coverURL)
          ? CoverURL(state.coverURL)
          : CoverURL.fromFile(state.coverURL),
      genres: state.genres,
      isNSFW: state.isNSFW,
      language: state.language,
      leaf: state.leaf,
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
      branch,
      emit,
    );
  }

  FutureOr<void> _publishOrSave(
    bool isEdit,
    TypewriterEndState endState,
    Branch branch,
    Emitter<TypewriterBranchState> emit,
  ) async {
    if (state.isEdit) {
      (await _branchRepository.updateBranch(branch)).match(
        (branch) {
          emit(
            state.copyWith(
              branch: branch,
              endState: endState,
              failureOption: const None(),
              isProcessing: false,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.branch(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    } else {
      (await _branchRepository.createBranch(branch)).match(
        (branch) {
          emit(
            state.copyWith(
              branch: branch,
              endState: endState,
              failureOption: const None(),
              isProcessing: false,
            ),
          );
        },
        (failure) {
          emit(
            state.copyWith(
              failureOption: Option.some(Err(CoreFailure.branch(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    }
  }
}
