import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:like_button/like_button.dart';
import 'package:wine/utils/constants/palette.dart';

class ContentActions extends StatelessWidget {
  const ContentActions({
    required this.bookmarksCount,
    required this.isBookmarked,
    required this.isLiked,
    required this.likesCount,
    required this.onBookmarkTap,
    required this.onLikeTap,
    required this.viewsCount,
    super.key,
  });

  final int bookmarksCount;

  final bool isBookmarked;

  final bool isLiked;

  final int likesCount;

  final Future<bool?> Function({bool bookmarked})? onBookmarkTap;

  final Future<bool?> Function({bool liked})? onLikeTap;

  final int viewsCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          LikeButton(
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
            likeCount: viewsCount,
            likeCountPadding: const EdgeInsets.only(left: 5),
          ),
          LikeButton(
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
            isLiked: isLiked,
            likeBuilder: (isLiked) {
              return Icon(
                Icons.favorite,
                color: isLiked ? pastelPink : Colors.black38,
                size: 30,
              );
            },
            likeCount: likesCount,
            likeCountPadding: const EdgeInsets.only(left: 5),
            onTap: (value) async {
              if (onLikeTap != null) {
                return onLikeTap!(liked: value);
              }
              return false;
            },
          ),
          LikeButton(
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
            isLiked: isBookmarked,
            likeBuilder: (isBookmarked) {
              return Icon(
                Icons.bookmark,
                color: isBookmarked ? pastelYellow : Colors.black38,
                size: 30,
              );
            },
            likeCount: bookmarksCount,
            likeCountPadding: const EdgeInsets.only(left: 5),
            onTap: (value) async {
              if (onBookmarkTap != null) {
                return onBookmarkTap!(bookmarked: value);
              }
              return false;
            },
          ),
        ],
      ),
    );
  }
}
