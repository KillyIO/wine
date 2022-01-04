import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:like_button/like_button.dart';
import 'package:wine/application/series/series_bloc.dart';
import 'package:wine/presentation/series/widgets/series_author_username.dart';
import 'package:wine/presentation/series/widgets/series_cover.dart';
import 'package:wine/presentation/series/widgets/series_title.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class SeriesDetails extends StatelessWidget {
  /// @nodoc
  const SeriesDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: BlocBuilder<SeriesBloc, SeriesState>(
              builder: (context, state) {
                return SeriesCover(
                  coverURL: state.series.coverURL.getOrNull(),
                  seriesUID: state.series.uid.getOrCrash(),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 125,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BlocBuilder<SeriesBloc, SeriesState>(
                      builder: (context, state) {
                        return SeriesTitle(
                          title: state.series.title.getOrNull(),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.5),
                      child: BlocBuilder<SeriesBloc, SeriesState>(
                        builder: (context, state) {
                          return SeriesAuthorUsername(
                            authorUsername: state.author.username.getOrNull() ??
                                state.session.username.getOrNull(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: BlocBuilder<SeriesBloc, SeriesState>(
                        builder: (context, state) {
                          return LikeButton(
                            likeBuilder: (_) {
                              return const Icon(
                                Icons.visibility,
                                color: Colors.black38,
                              );
                            },
                            likeCount: state.series.viewsCount,
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: BlocBuilder<SeriesBloc, SeriesState>(
                        builder: (context, state) {
                          return LikeButton(
                            bubblesColor: BubblesColor(
                              dotPrimaryColor: pastelPink,
                              dotSecondaryColor:
                                  pastelPink.withGreen(122).withBlue(112),
                            ),
                            circleColor: CircleColor(
                              start: pastelPink,
                              end: pastelPink.withGreen(122).withBlue(112),
                            ),
                            isLiked: state.isLiked,
                            likeBuilder: (isLiked) {
                              return Icon(
                                Icons.favorite,
                                color: isLiked ? pastelPink : Colors.black38,
                              );
                            },
                            likeCount: state.series.likesCount,
                          );
                        },
                      ),
                    ),
                    BlocBuilder<SeriesBloc, SeriesState>(
                      builder: (context, state) {
                        return LikeButton(
                          bubblesColor: BubblesColor(
                            dotPrimaryColor: pastelYellow,
                            dotSecondaryColor:
                                pastelYellow.withGreen(214).withBlue(69),
                          ),
                          circleColor: CircleColor(
                            start: pastelYellow,
                            end: pastelYellow.withGreen(214).withBlue(69),
                          ),
                          isLiked: state.isBookmarked,
                          likeBuilder: (isBookmarked) {
                            return Icon(
                              Icons.bookmark,
                              color:
                                  isBookmarked ? pastelYellow : Colors.black38,
                            );
                          },
                          likeCount: state.series.bookmarksCount,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
