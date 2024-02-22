import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/tree/tree_bloc.dart';
import 'package:wine/presentation/core/common/content_actions.dart';
import 'package:wine/presentation/core/common/content_genres.dart';
import 'package:wine/presentation/tree/tree_synopsis_layout.dart';
import 'package:wine/presentation/tree/widgets/tree_branch_one.dart';
import 'package:wine/presentation/tree/widgets/tree_details.dart';
import 'package:wine/presentation/tree/widgets/tree_resume_reading.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/functions/dialog_functions.dart';

class TreeLayout extends StatelessWidget {
  const TreeLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: maxContentLayoutWidth,
      ),
      child: BlocListener<TreeBloc, TreeState>(
        listener: (context, state) {
          state.failureOption.when(
            some: (value) => value.when(
              ok: (_) {},
              err: (err) => err.maybeMap(
                branch: (f) => f.f.maybeMap(
                  permissionDenied: (_) async => baseErrorDialog(
                    context,
                    <String>['Forbidden action. Permission denied!'],
                  ),
                  serverError: (_) async => baseErrorDialog(
                    context,
                    <String>['A problem occurred on our end!'],
                  ),
                  unexpected: (_) async => baseErrorDialog(
                    context,
                    <String>['An unexpected error occured!'],
                  ),
                  orElse: () {},
                ),
                sessions: (f) => f.f.maybeMap(
                  sessionNotFound: (_) async => baseErrorDialog(
                    context,
                    <String>['Session not found!'],
                  ),
                  orElse: () {},
                ),
                settings: (f) => f.f.maybeMap(
                  settingsNotFound: (_) async => baseErrorDialog(
                    context,
                    <String>['Settings were not found!'],
                  ),
                  orElse: () {},
                ),
                tree: (f) => f.f.maybeMap(
                  permissionDenied: (_) async => baseErrorDialog(
                    context,
                    <String>['Forbidden action. Permission denied!'],
                  ),
                  treeNotFound: (_) async => baseErrorDialog(
                    context,
                    <String>['Tree not found!'],
                  ),
                  serverError: (_) async => baseErrorDialog(
                    context,
                    <String>['A problem occurred on our end!'],
                  ),
                  unexpected: (_) async => baseErrorDialog(
                    context,
                    <String>['An unexpected error occured!'],
                  ),
                  orElse: () {},
                ),
                user: (f) => f.f.maybeMap(
                  permissionDenied: (_) async => baseErrorDialog(
                    context,
                    <String>['Forbidden action. Permission denied!'],
                  ),
                  serverError: (_) async => baseErrorDialog(
                    context,
                    <String>['A problem occurred on our end!'],
                  ),
                  unexpected: (_) async => baseErrorDialog(
                    context,
                    <String>['An unexpected error occured!'],
                  ),
                  userNotFound: (_) async => baseErrorDialog(
                    context,
                    <String>['User was not found!'],
                  ),
                  orElse: () {},
                ),
                orElse: () {},
              ),
            ),
            none: () {},
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: TreeDetails(),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: BlocBuilder<TreeBloc, TreeState>(
                    builder: (context, state) {
                      return ContentActions(
                        bookmarksCount: state.tree.bookmarksCount,
                        isBookmarked: state.isBookmarked,
                        isLiked: state.isLiked,
                        likesCount: state.tree.likesCount,
                        onBookmarkTap: ({bool? bookmarked}) async {
                          if (bookmarked != null) {
                            context.read<TreeBloc>().add(
                                  TreeEvent.bookmarkButtonPressed(
                                    isBookmarked: bookmarked,
                                  ),
                                );
                          }

                          return state.isBookmarked;
                        },
                        onLikeTap: ({bool? liked}) async {
                          if (liked != null) {
                            context.read<TreeBloc>().add(
                                  TreeEvent.likeButtonPressed(isLiked: liked),
                                );
                          }

                          return state.isLiked;
                        },
                        viewsCount: state.tree.viewsCount,
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TreeSynopsisLayout(),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 50),
                  child: BlocBuilder<TreeBloc, TreeState>(
                    builder: (context, state) {
                      return ContentGenres(
                        genres: state.tree.genres
                            .map((e) => e.getOrNull())
                            .whereType<String>()
                            .toList(),
                      );
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 50),
                  child: TreeBranchOne(),
                ),
                const Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: TreeResumeReading(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
