import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/chapter/chapter.dart';
import 'package:wine/domain/chapter/i_chapter_repository.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/tree/i_tree_repository.dart';
import 'package:wine/domain/tree/tree.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/utils/constants/library.dart';

part 'library_bloc.freezed.dart';
part 'library_event.dart';
part 'library_state.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  /// @nodoc
  LibraryBloc(
    this._chapterRepository,
    this._sessionsRepository,
    this._treeRepository,
  ) : super(LibraryState.initial()) {
    on<ChapterDeleted>((value, emit) async {});
    on<InitBloc>((_, emit) async {
      emit(
        state.copyWith(
          failureOption: const None(),
          isProcessing: true,
        ),
      );

      (await _sessionsRepository.fetchSession()).match(
        (user) {
          emit(
            state.copyWith(
              failureOption: const None(),
              session: user,
            ),
          );

          add(const LibraryEvent.sessionFetched());
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
    on<PageViewIndexChanged>((value, emit) async {
      if (state.currentPageViewIdx != value.index) {
        var newIdx = value.index;
        if (value.index > libraryPageViewKeys.length - 1) {
          newIdx = 0;
        }
        if (value.index < 0) {
          newIdx = libraryPageViewKeys.length - 1;
        }
        emit(
          state.copyWith(
            currentPageViewIdx: newIdx,
            failureOption: Option.none(),
          ),
        );

        switch (state.currentPageViewIdx) {
          case 0:
            if (state.trees.isEmpty) {
              (await _treeRepository.loadTreesByUserID(state.session.uid))
                  .match(
                (trees) {
                  emit(
                    state.copyWith(
                      failureOption: Option.none(),
                      isProcessing: false,
                      trees: trees,
                    ),
                  );
                },
                (failure) {
                  emit(
                    state.copyWith(
                      failureOption:
                          Option.some(Err(CoreFailure.tree(failure))),
                      isProcessing: false,
                    ),
                  );
                },
              );
            }
            break;
          case 1:
            if (state.chapters.isEmpty) {
              (await _chapterRepository.loadChaptersByUserID(state.session.uid))
                  .match(
                (chapters) {
                  emit(
                    state.copyWith(
                      failureOption: Option.none(),
                      isProcessing: false,
                      chapters: chapters,
                    ),
                  );
                },
                (failure) {
                  emit(
                    state.copyWith(
                      failureOption:
                          Option.some(Err(CoreFailure.chapter(failure))),
                      isProcessing: false,
                    ),
                  );
                },
              );
            }
            break;
          default:
        }
      }
    });
    on<SessionFetched>((_, emit) async {
      (await _treeRepository.loadTreesByUserID(state.session.uid)).match(
        (trees) {
          emit(
            state.copyWith(
              failureOption: Option.none(),
              isProcessing: false,
              trees: trees,
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
    });
    on<TreeDeleted>((value, emit) async {
      emit(
        state.copyWith(
          failureOption: const None(),
          isProcessing: true,
        ),
      );

      final trees = state.trees
          .where((s) => s.uid.getOrCrash() != value.uid.getOrCrash())
          .toList();

      emit(
        state.copyWith(
          failureOption: const None(),
          isProcessing: false,
          trees: trees,
        ),
      );
    });
    on<VerticalNavbarIndexChanged>((value, emit) {
      if (state.currentVerticalNavbarIdx != value.index) {
        var newIdx = value.index;
        if (value.index > libraryVerticalNavbarKeys.length - 1) {
          newIdx = 0;
        }
        if (value.index < 0) {
          newIdx = libraryVerticalNavbarKeys.length - 1;
        }
        emit(
          state.copyWith(
            currentVerticalNavbarIdx: newIdx,
            failureOption: Option.none(),
          ),
        );
      }
    });
  }

  final IChapterRepository _chapterRepository;
  final ISessionsRepository _sessionsRepository;
  final ITreeRepository _treeRepository;
}
