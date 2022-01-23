import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:like_button/like_button.dart';
import 'package:wine/application/series/series_bloc.dart';
import 'package:wine/utils/constants/palette.dart';

/// @nodoc
class SeriesStats extends StatelessWidget {
  /// @nodoc
  const SeriesStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        BlocBuilder<SeriesBloc, SeriesState>(
          builder: (context, state) {
            return LikeButton(
              countBuilder: (count, _, text) {
                return Text(
                  NumberFormat.compact().format(count),
                  style: const TextStyle(
                    color: Colors.black38,
                    fontSize: 18,
                  ),
                );
              },
              likeBuilder: (_) {
                return const Icon(
                  Icons.visibility,
                  color: Colors.black38,
                  size: 30,
                );
              },
              likeCount: state.series.viewsCount,
              likeCountPadding: const EdgeInsets.only(left: 5),
            );
          },
        ),
        BlocBuilder<SeriesBloc, SeriesState>(
          builder: (context, state) {
            return LikeButton(
              bubblesColor: BubblesColor(
                dotPrimaryColor: pastelPink,
                dotSecondaryColor: pastelPink.withGreen(122).withBlue(112),
              ),
              countBuilder: (count, isLiked, text) {
                return Text(
                  NumberFormat.compact().format(count),
                  style: TextStyle(
                    color: isLiked ? pastelPink : Colors.black38,
                    fontSize: 18,
                  ),
                );
              },
              circleColor: CircleColor(
                start: pastelPink,
                end: pastelPink.withGreen(122).withBlue(112),
              ),
              isLiked: state.isLiked,
              likeBuilder: (isLiked) {
                return Icon(
                  Icons.favorite,
                  color: isLiked ? pastelPink : Colors.black38,
                  size: 30,
                );
              },
              likeCount: state.series.likesCount,
              likeCountPadding: const EdgeInsets.only(left: 5),
              onTap: (isLiked) async {
                context
                    .read<SeriesBloc>()
                    .add(SeriesEvent.likeButtonPressed(isLiked: isLiked));

                return state.isLiked;
              },
            );
          },
        ),
        BlocBuilder<SeriesBloc, SeriesState>(
          builder: (context, state) {
            return LikeButton(
              bubblesColor: BubblesColor(
                dotPrimaryColor: pastelYellow,
                dotSecondaryColor: pastelYellow.withGreen(214).withBlue(69),
              ),
              countBuilder: (count, isBookmarked, text) {
                return Text(
                  NumberFormat.compact().format(count),
                  style: TextStyle(
                    color: isBookmarked ? pastelYellow : Colors.black38,
                    fontSize: 18,
                  ),
                );
              },
              circleColor: CircleColor(
                start: pastelYellow,
                end: pastelYellow.withGreen(214).withBlue(69),
              ),
              isLiked: state.isBookmarked,
              likeBuilder: (isBookmarked) {
                return Icon(
                  Icons.bookmark,
                  color: isBookmarked ? pastelYellow : Colors.black38,
                  size: 30,
                );
              },
              likeCount: state.series.bookmarksCount,
              likeCountPadding: const EdgeInsets.only(left: 5),
              onTap: (isBookmarked) async {
                context.read<SeriesBloc>().add(
                      SeriesEvent.bookmarkButtonPressed(
                        isBookmarked: isBookmarked,
                      ),
                    );

                return state.isBookmarked;
              },
            );
          },
        ),
      ],
    );
  }
}
