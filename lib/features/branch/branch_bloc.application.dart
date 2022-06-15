import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/core/core_failure.domain.dart';
import 'package:wine/core/unique_id.domain.dart';
import 'package:wine/features/sessions/i_sessions_repository.domain.dart';
import 'package:wine/features/settings/i_settings_repository.domain.dart';
import 'package:wine/features/settings/settings.domain.dart';
import 'package:wine/features/auth/i_auth_facade.domain.dart';
import 'package:wine/features/branch/branch.domain.dart';
import 'package:wine/features/branch/i_branch_repository.domain.dart';
import 'package:wine/features/user/i_user_repository.domain.dart';
import 'package:wine/features/user/user.domain.dart';

part 'branch_event.application.dart';
part 'branch_state.application.dart';
part 'branch_bloc.application.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class BranchBloc extends Bloc<BranchEvent, BranchState> {
  /// @nodoc
  BranchBloc(
    this._authFacade,
    this._branchRepository,
    this._sessionsRepository,
    this._settingsRepository,
    this._userRepository,
  ) : super(BranchState.initial()) {
    on<AuthorLoaded>((_, emit) async {
      await _fetchSettings(emit);
    });
    on<BookmarkButtonPressed>((value, emit) async {
      (await _branchRepository.updateBranchBookmarks(
        state.session.uid,
        state.branch.uid,
        isBookmarked: !value.isBookmarked,
      ))
          .match(
        (_) {
          final bookmarksCount = state.branch.bookmarksCount;

          emit(
            state.copyWith(
              branch: state.branch.copyWith(
                bookmarksCount: !value.isBookmarked
                    ? bookmarksCount + 1
                    : bookmarksCount - 1,
              ),
              isBookmarked: !value.isBookmarked,
              failureOption: const None(),
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
    on<BranchSet>((_, emit) async {
      (await _sessionsRepository.fetchSession()).match(
        (session) {
          emit(
            state.copyWith(
              author: state.branch.authorUID.getOrCrash() ==
                      session.uid.getOrCrash()
                  ? session
                  : User.empty(),
              authorIsUser: state.branch.authorUID.getOrCrash() ==
                  session.uid.getOrCrash(),
              failureOption: const None(),
              session: session,
            ),
          );

          add(const BranchEvent.sessionFetched());
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
      emit(state.copyWith(isProcessing: true));

      final branch = value.branch;
      if (branch != null) {
        final quillController = branch.leaf.getOrNull() != null
            ? QuillController(
                document: Document.fromJson(
                  jsonDecode(branch.leaf.getOrNull()!) as List<dynamic>,
                ),
                selection: const TextSelection.collapsed(offset: 0),
              )
            : QuillController.basic();

        emit(
          state.copyWith(
            branch: branch,
            failureOption: const None(),
            leafController: quillController,
          ),
        );

        add(const BranchEvent.branchSet());
      } else {
        (await _branchRepository.loadBranchByUID(value.uid)).match(
          (branch) {
            emit(
              state.copyWith(
                branch: branch,
                failureOption: const None(),
              ),
            );

            add(const BranchEvent.branchSet());
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
    on<LikeButtonPressed>((value, emit) async {
      (await _branchRepository.updateBranchLikes(
        state.session.uid,
        state.branch.uid,
        isLiked: !value.isLiked,
      ))
          .match(
        (_) {
          final likesCount = state.branch.likesCount;

          emit(
            state.copyWith(
              branch: state.branch.copyWith(
                likesCount: !value.isLiked ? likesCount + 1 : likesCount - 1,
              ),
              isLiked: !value.isLiked,
              failureOption: const None(),
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
    on<LikeStatusLoaded>((_, emit) async {
      (await _branchRepository.loadBookmarkStatus(
        state.session.uid,
        state.branch.uid,
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
              failureOption: Option.some(Err(CoreFailure.branch(failure))),
              isProcessing: false,
            ),
          );
        },
      );
    });
    on<NextBranchesBySameAuthorLoaded>(
      (_, emit) async => _loadNextBranchesbyAuthorUID(
        emit,
        event: const BranchEvent.nextBranchesLoaded(),
        sameAuthor: false,
      ),
    );
    on<NextBranchesLoaded>((_, emit) async {
      (await _branchRepository.updateBranchViews(
        state.session.uid,
        state.branch.uid,
      ))
          .match(
        (isUpdated) {
          final viewsCount = state.branch.viewsCount;

          emit(
            state.copyWith(
              branch: state.branch.copyWith(
                viewsCount: isUpdated ? viewsCount + 1 : viewsCount,
              ),
              failureOption: const None(),
              isProcessing: isUpdated,
            ),
          );

          add(const BranchEvent.viewsUpdated());
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
    });
    on<RefreshNextBranchesBySameAuthorPressed>(
      (_, emit) => _loadNextBranchesbyAuthorUID(
        emit,
        lastBranchUID: state.sameAuthorNextBranches.isEmpty
            ? null
            : state.sameAuthorNextBranches.last.uid,
      ),
    );
    on<RefreshNextBranchesPressed>(
      (_, emit) => _loadNextBranchesbyAuthorUID(
        emit,
        lastBranchUID:
            state.nextBranches.isEmpty ? null : state.nextBranches.last.uid,
        sameAuthor: false,
      ),
    );
    on<Scrolled>((value, emit) {
      var scrollProgress = 0.0;

      if (value.currentScrollPosition != 0 || value.maxScrollPosition != 0) {
        scrollProgress = value.currentScrollPosition / value.maxScrollPosition;
      }

      if (scrollProgress > 1) scrollProgress = 1;

      emit(
        state.copyWith(
          failureOption: const None(),
          scrollProgress: scrollProgress,
        ),
      );
    });
    on<SessionFetched>((_, emit) async {
      if (!state.authorIsUser) {
        (await _userRepository.loadUser(state.branch.authorUID)).match(
          (user) {
            emit(
              state.copyWith(
                author: user,
                failureOption: const None(),
              ),
            );

            add(const BranchEvent.authorLoaded());
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
      } else {
        await _fetchSettings(emit);
      }
    });
    on<SettingsFetched>(
      (_, emit) async => _loadNextBranchesbyAuthorUID(
        emit,
        event: const BranchEvent.nextBranchesBySameAuthorLoaded(),
      ),
    );
    on<ToggleDetails>(
      (_, emit) => emit(
        state.copyWith(
          failureOption: const None(),
          showDetails: !state.showDetails,
        ),
      ),
    );
    on<ViewsUpdated>((_, emit) async {
      (await _branchRepository.loadLikeStatus(
        state.session.uid,
        state.branch.uid,
      ))
          .match(
        (isLiked) {
          emit(
            state.copyWith(
              failureOption: const None(),
              isLiked: isLiked,
            ),
          );

          add(const BranchEvent.likeStatusLoaded());
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
    });
  }

  final IAuthFacade _authFacade;
  final IBranchRepository _branchRepository;
  final ISessionsRepository _sessionsRepository;
  final ISettingsRepository _settingsRepository;
  final IUserRepository _userRepository;

  FutureOr<void> _fetchSettings(Emitter<BranchState> emit) async {
    (await _settingsRepository.fetchSettings()).match(
      (settings) {
        emit(
          state.copyWith(
            failureOption: const None(),
            settings: settings,
          ),
        );

        add(const BranchEvent.settingsFetched());
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

  FutureOr<void> _loadNextBranchesbyAuthorUID(
    Emitter<BranchState> emit, {
    BranchEvent? event,
    UniqueID? lastBranchUID,
    bool sameAuthor = true,
  }) async {
    (await _branchRepository.loadNextBranchesByAuthorUID(
      state.branch.authorUID,
      state.branch.uid,
      lastBranchUID: lastBranchUID,
      sameAuthor: sameAuthor,
    ))
        .match(
      (branches) {
        if (sameAuthor) {
          emit(
            state.copyWith(
              failureOption: const None(),
              sameAuthorNextBranches: branches,
            ),
          );
        } else {
          emit(
            state.copyWith(
              failureOption: const None(),
              nextBranches: branches,
            ),
          );
        }

        if (event != null) {
          if (!sameAuthor && _authFacade.isAnonymous) {
            return;
          }
          add(event);
        }
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
