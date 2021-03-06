import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:wine/application/branch/branch_bloc.dart';
import 'package:wine/presentation/branch/widgets/branch_detail_container.dart';
import 'package:wine/presentation/core/common/content_actions.dart';
import 'package:wine/presentation/core/common/content_genres.dart';
import 'package:wine/utils/constants/palette.dart';
import 'package:wine/utils/functions/navigation_functions.dart';

/// @nodoc
class BranchDetails extends StatelessWidget {
  /// @nodoc
  const BranchDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BranchBloc, BranchState>(
      buildWhen: (previous, current) =>
          current.showDetails != previous.showDetails,
      builder: (context, state) {
        if (state.showDetails) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: BranchDetailContainer(
                    color: Colors.black54,
                    child: BlocBuilder<BranchBloc, BranchState>(
                      builder: (context, state) {
                        return RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              const TextSpan(
                                text: 'Author · ',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: state.author.username.getOrNull(),
                              ),
                            ],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: BlocBuilder<BranchBloc, BranchState>(
                    builder: (context, state) {
                      return ContentGenres(
                        genres: state.branch.genres
                            .map((e) => e.getOrNull())
                            .whereType<String>()
                            .toList(),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: BranchDetailContainer(
                    color: Colors.black54,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const Icon(
                          Icons.copyright,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 5),
                        BlocBuilder<BranchBloc, BranchState>(
                          builder: (context, state) {
                            return Text(
                              state.branch.licence.getOrNull() ?? '',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: BlocBuilder<BranchBloc, BranchState>(
                    builder: (context, state) {
                      return ContentActions(
                        bookmarksCount: state.branch.bookmarksCount,
                        isBookmarked: state.isBookmarked,
                        isLiked: state.isLiked,
                        likesCount: state.branch.likesCount,
                        onBookmarkTap: (isBookmarked) async {
                          context.read<BranchBloc>().add(
                                BranchEvent.bookmarkButtonPressed(
                                  isBookmarked: isBookmarked,
                                ),
                              );

                          return state.isBookmarked;
                        },
                        onLikeTap: (isLiked) async {
                          await handleAuthGuardedAction(
                            context,
                            () => context.read<BranchBloc>().add(
                                  BranchEvent.likeButtonPressed(
                                    isLiked: isLiked,
                                  ),
                                ),
                            navigateTo: PageRouteInfo<dynamic>(
                              context.router.root.current.name,
                              path: context.router.root.current.path,
                            ),
                          );

                          return state.isLiked;
                        },
                        viewsCount: state.branch.viewsCount,
                      );
                    },
                  ),
                ),
                BlocBuilder<BranchBloc, BranchState>(
                  builder: (context, state) {
                    return LinearPercentIndicator(
                      backgroundColor: Colors.black38,
                      barRadius: const Radius.circular(25),
                      lineHeight: 30,
                      padding: EdgeInsets.zero,
                      percent: state.scrollProgress,
                      progressColor: pastelPink,
                      center: Text(
                        '${(state.scrollProgress * 100.0).round()}%',
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
