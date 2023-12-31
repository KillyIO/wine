import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/application/branch/branch_bloc.dart';
import 'package:wine/presentation/branch/widgets/branch_detail_container.dart';
import 'package:wine/presentation/core/common/content_actions.dart';
import 'package:wine/presentation/core/common/content_genres.dart';
import 'package:wine/presentation/routes/router.dart';
import 'package:wine/utils/constants/palette.dart';

class BranchDetails extends StatelessWidget {
  const BranchDetails({super.key});

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
                              state.branch.licence.getOrNull()?.name ?? '',
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
                    builder: (context, bState) {
                      return BlocBuilder<AuthBloc, AuthState>(
                        builder: (context, aState) {
                          return ContentActions(
                            bookmarksCount: bState.branch.bookmarksCount,
                            isBookmarked: bState.isBookmarked,
                            isLiked: bState.isLiked,
                            likesCount: bState.branch.likesCount,
                            onBookmarkTap: ({bool? bookmarked}) async {
                              if (bookmarked != null) {
                                context.read<BranchBloc>().add(
                                      BranchEvent.bookmarkButtonPressed(
                                        isBookmarked: bookmarked,
                                      ),
                                    );
                              }

                              return bState.isBookmarked;
                            },
                            onLikeTap: ({bool? liked}) async {
                              return aState.maybeMap(
                                authenticated: (_) async {
                                  if (liked != null) {
                                    context.read<BranchBloc>().add(
                                          BranchEvent.likeButtonPressed(
                                            isLiked: liked,
                                          ),
                                        );
                                  }

                                  return bState.isLiked;
                                },
                                orElse: () async {
                                  await context.router.push(
                                    LogInRoute(
                                      navigateTo: PageRouteInfo<dynamic>(
                                        context.router.current.name,
                                      ),
                                    ),
                                  );

                                  return bState.isLiked;
                                },
                              );
                            },
                            viewsCount: bState.branch.viewsCount,
                          );
                        },
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
