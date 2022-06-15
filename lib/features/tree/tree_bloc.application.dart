import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/core/core_failure.domain.dart';
import 'package:wine/core/unique_id.domain.dart';
import 'package:wine/features/auth/i_auth_facade.domain.dart';
import 'package:wine/features/branch/branch.domain.dart';
import 'package:wine/features/branch/i_branch_repository.domain.dart';
import 'package:wine/features/sessions/i_sessions_repository.domain.dart';
import 'package:wine/features/settings/i_settings_repository.domain.dart';
import 'package:wine/features/settings/settings.domain.dart';
import 'package:wine/features/tree/i_tree_repository.domain.dart';
import 'package:wine/features/tree/tree.domain.dart';
import 'package:wine/features/user/i_user_repository.domain.dart';
import 'package:wine/features/user/user.domain.dart';

part 'tree_bloc.application.freezed.dart';
part 'tree_event.application.dart';
part 'tree_state.application.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class TreeBloc extends Bloc<TreeEvent, TreeState> {
  /// @nodoc
  TreeBloc(
    this._authFacade,
    this._branchRepository,
    this._sessionsRepository,
    this._settingsRepository,
    this._treeRepository,
    this._userRepository,
  ) : super(TreeState.initial()) {
    // TODO(SSebigo): try fetching last branch read
    on<AuthorLoaded>((_, emit) async {
      await _fetchSettings(emit);
    });
    on<BookmarkButtonPressed>((value, emit) async {
      final session = state.session;

      if (session != null) {
        (await _treeRepository.updateTreeBookmarks(
          session.uid,
          state.tree.uid,
          isBookmarked: !value.isBookmarked,
        ))
            .match(
          (_) {
            final bookmarksCount = state.tree.bookmarksCount;

            emit(
              state.copyWith(
                isBookmarked: !value.isBookmarked,
                failureOption: const None(),
                tree: state.tree.copyWith(
                  bookmarksCount: !value.isBookmarked
                      ? bookmarksCount + 1
                      : bookmarksCount - 1,
                ),
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
      }
    });
    on<BranchOneLoaded>((_, emit) async => _updateTreeViews(emit));
    on<BranchOneNotFound>((_, emit) async => _updateTreeViews(emit));
    on<LaunchWithUID>((value, emit) async {
      emit(state.copyWith(isProcessing: true));

      final tree = value.tree;

      if (tree != null) {
        emit(
          state.copyWith(
            failureOption: const None(),
            tree: tree,
          ),
        );

        add(const TreeEvent.treeSet());
      } else {
        (await _treeRepository.loadTreeByUID(value.uid)).match(
          (tree) {
            emit(
              state.copyWith(
                failureOption: const None(),
                tree: tree,
              ),
            );

            add(const TreeEvent.treeSet());
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
    on<LikeButtonPressed>((value, emit) async {
      final session = state.session;

      if (session != null) {
        (await _treeRepository.updateTreeLikes(
          session.uid,
          state.tree.uid,
          isLiked: !value.isLiked,
        ))
            .match(
          (_) {
            final likesCount = state.tree.likesCount;

            emit(
              state.copyWith(
                isLiked: !value.isLiked,
                failureOption: const None(),
                tree: state.tree.copyWith(
                  likesCount: !value.isLiked ? likesCount + 1 : likesCount - 1,
                ),
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
      }
    });
    on<LikeStatusLoaded>((_, emit) async {
      final session = state.session;

      if (session != null) {
        (await _treeRepository.loadBookmarkStatus(
          session.uid,
          state.tree.uid,
        ))
            .match(
          (isBookmarked) {
            emit(
              state.copyWith(
                failureOption: const None(),
                isBookmarked: isBookmarked,
                isProcessing: false,
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
    on<SessionFetched>((_, emit) async {
      if (!state.authorIsUser) {
        await _loadAuthor(emit);
      } else {
        await _fetchSettings(emit);
      }
    });
    on<SettingsFetched>((_, emit) async {
      (await _branchRepository.loadBranchByTreeUIDAndIndex(
        state.tree.uid,
        1,
      ))
          .match(
        (branch) {
          emit(
            state.copyWith(
              branchOne: branch.isPublished ? branch : null,
              failureOption: const None(),
              isProcessing: !_authFacade.isAnonymous,
            ),
          );

          if (!_authFacade.isAnonymous) {
            add(const TreeEvent.branchOneLoaded());
          }
        },
        (failure) {
          failure.maybeWhen(
            branchNotFound: () {
              if (!_authFacade.isAnonymous) {
                add(const TreeEvent.branchOneNotFound());
              }
            },
            orElse: () {
              emit(
                state.copyWith(
                  failureOption: Option.some(Err(CoreFailure.branch(failure))),
                  isProcessing: false,
                ),
              );
            },
          );
        },
      );
    });
    on<TreeSet>((_, emit) async {
      if (!_authFacade.isAnonymous) {
        (await _sessionsRepository.fetchSession()).match(
          (session) {
            emit(
              state.copyWith(
                author: state.tree.authorUID.getOrCrash() ==
                        session.uid.getOrCrash()
                    ? session
                    : null,
                authorIsUser: state.tree.authorUID.getOrCrash() ==
                    session.uid.getOrCrash(),
                failureOption: const None(),
                session: session,
              ),
            );

            add(const TreeEvent.sessionFetched());
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
      } else {
        emit(
          state.copyWith(
            authorIsUser: false,
            failureOption: const None(),
          ),
        );

        await _loadAuthor(emit);
      }
    });
    on<ViewsUpdated>((_, emit) async {
      final session = state.session;

      if (session != null) {
        (await _treeRepository.loadLikeStatus(
          session.uid,
          state.tree.uid,
        ))
            .match(
          (isLiked) {
            emit(
              state.copyWith(
                failureOption: const None(),
                isLiked: isLiked,
              ),
            );

            add(const TreeEvent.likeStatusLoaded());
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
  }

  final IAuthFacade _authFacade;
  final IBranchRepository _branchRepository;
  final ISessionsRepository _sessionsRepository;
  final ISettingsRepository _settingsRepository;
  final ITreeRepository _treeRepository;
  final IUserRepository _userRepository;

  FutureOr<void> _fetchSettings(Emitter<TreeState> emit) async {
    (await _settingsRepository.fetchSettings()).match(
      (settings) {
        emit(
          state.copyWith(
            failureOption: const None(),
            settings: settings,
          ),
        );

        add(const TreeEvent.settingsFetched());
      },
      (failure) {
        emit(
          state.copyWith(
            failureOption: Option.some(Err(CoreFailure.settings(failure))),
            isProcessing: false,
          ),
        );
      },
    );
  }

  FutureOr<void> _loadAuthor(Emitter<TreeState> emit) async {
    (await _userRepository.loadUser(state.tree.authorUID)).match(
      (user) {
        emit(
          state.copyWith(
            author: user,
            failureOption: const None(),
          ),
        );

        add(const TreeEvent.authorLoaded());
      },
      (failure) {
        emit(
          state.copyWith(
            failureOption: Option.some(Err(CoreFailure.user(failure))),
            isProcessing: false,
          ),
        );
      },
    );
  }

  FutureOr<void> _updateTreeViews(Emitter<TreeState> emit) async {
    final session = state.session;

    if (session != null) {
      (await _treeRepository.updateTreeViews(session.uid, state.tree.uid))
          .match(
        (isUpdated) {
          final viewsCount = state.tree.viewsCount;

          emit(
            state.copyWith(
              failureOption: const None(),
              isProcessing: isUpdated,
              tree: state.tree.copyWith(
                viewsCount: isUpdated ? viewsCount + 1 : viewsCount,
              ),
            ),
          );

          add(const TreeEvent.viewsUpdated());
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
