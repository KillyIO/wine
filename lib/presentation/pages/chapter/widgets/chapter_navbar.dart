import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wine/application/authentication/core/core_authentication_bloc.dart';

import 'package:wine/presentation/pages/chapter/utils/chapter_database_methods.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_navbar_button.dart';
import 'package:wine/utils/palettes.dart';

class ChapterNavbar extends StatelessWidget {
  final ChapterDatabaseMethods chapterDbMethods;
  final String previousChapterUid;
  final bool isLiked;
  final bool isBookmarked;

  const ChapterNavbar({
    Key key,
    @required this.chapterDbMethods,
    this.previousChapterUid,
    this.isLiked,
    this.isBookmarked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CoreAuthenticationBloc, CoreAuthenticationState>(
      builder: (context, coreAuthState) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(200.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ChapterNavbarButton(
                icon: Feather.chevron_left,
                iconSize: 30.0,
                onPressed: previousChapterUid != null ? () => chapterDbMethods.previousChapterButtonPressed() : null,
              ),
              ChapterNavbarButton(
                icon: Feather.message_square,
                onPressed: () {},
              ),
              ChapterNavbarButton(
                icon: Feather.settings,
                onPressed: () {},
              ),
              if (!coreAuthState.isAnonymous)
                ChapterNavbarButton(
                  icon: isLiked ? Icons.favorite : Icons.favorite_border,
                  iconColor: isLiked ? Palettes.pastelPink : Colors.black,
                  iconSize: 27.0,
                  onPressed: chapterDbMethods.likeButtonPressed,
                ),
              if (!coreAuthState.isAnonymous)
                ChapterNavbarButton(
                  icon: isBookmarked ? Icons.bookmark : Icons.bookmark_border,
                  iconColor: isBookmarked ? Palettes.pastelYellow : Colors.black,
                  iconSize: 27.0,
                  onPressed: chapterDbMethods.bookmarkButtonPressed,
                ),
              ChapterNavbarButton(
                icon: Icons.info_outline,
                iconSize: 27.0,
                onPressed: chapterDbMethods.toggleChapterAdditionalInfo,
              ),
            ],
          ),
        );
      },
    );
  }
}
