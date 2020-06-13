import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:time/time.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/domain/enums/parent_type.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_additional_info.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_navbar.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_same_author.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_stats.dart';
import 'package:wine/presentation/widgets/wine_button.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';

class ChapterLayout extends StatefulWidget {
  final ChapterPageArgs args;

  const ChapterLayout({Key key, this.args}) : super(key: key);

  @override
  _ChapterLayoutState createState() => _ChapterLayoutState();
}

class _ChapterLayoutState extends State<ChapterLayout> with AfterLayoutMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  void afterFirstLayout(BuildContext context) {
    context
        .bloc<ChapterDatabaseBloc>()
        .add(ChapterDatabaseEvent.chapterPageLaunched(
          chapter: widget.args.chapter,
          context: context,
        ));
    context
        .bloc<ChapterDatabaseBloc>()
        .add(const ChapterDatabaseEvent.fetchNextChapters());
  }

  bool _showWriteChapterButton(
    String sessionUid,
    Chapter sameAuthorChapter,
    List<Chapter> nextChapters,
  ) {
    if (widget.args.chapter.isEnd) {
      return false;
    } else {
      if (sessionUid == widget.args.chapter.authorUid) {
        return !sameAuthorChapter.isNotEmptyOrNull;
      } else {
        return nextChapters.length < Constants.maxNextChaptersByChapter &&
            nextChapters
                    .indexWhere((chapter) => chapter.authorUid == sessionUid) ==
                -1;
      }
    }
  }

  void _storyPressed(bool showChapterAdditionalInfo) {
    context
        .bloc<ChapterDatabaseBloc>()
        .add(const ChapterDatabaseEvent.showOrHideNavbar());
    if (showChapterAdditionalInfo) {
      context
          .bloc<ChapterDatabaseBloc>()
          .add(const ChapterDatabaseEvent.toggleChapterAdditionalInfo());
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double defaultAppBarHeight = const Size.fromHeight(41.5).height;

    return BlocBuilder<ChapterDatabaseBloc, ChapterDatabaseState>(
      builder: (context, chapterDbState) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Stack(
              children: <Widget>[
                ScrollConfiguration(
                  behavior: const ScrollBehavior(),
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (ScrollNotification scrollNotification) {
                      if (scrollNotification is ScrollStartNotification ||
                          scrollNotification is ScrollUpdateNotification ||
                          scrollNotification is ScrollEndNotification) {
                        context
                            .bloc<ChapterDatabaseBloc>()
                            .add(ChapterDatabaseEvent.scroll(
                              currentScrollPosition:
                                  _scrollController.position.pixels.toInt(),
                              maxScrollPosition: _scrollController
                                  .position.maxScrollExtent
                                  .toInt(),
                            ));
                        return true;
                      }
                      return false;
                    },
                    child: ListView(
                      controller: _scrollController,
                      children: <Widget>[
                        SizedBox(height: defaultAppBarHeight + 50),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            'Chapter ${widget.args.chapter.index}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            widget.args.chapter.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        const SizedBox(height: 75),
                        GestureDetector(
                          onTap: () => _storyPressed(
                              chapterDbState.showChapterAdditionalInfo),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: Text(
                              widget.args.chapter.story,
                            ),
                          ),
                        ),
                        // TODO add ad banner here
                        const SizedBox(height: 50),
                        // SECTION Write next chapter
                        if (_showWriteChapterButton(
                            chapterDbState.session.uid,
                            chapterDbState.nextSameAuthorChapter,
                            chapterDbState.nextChapters))
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: WINEButton(
                              title: 'WRITE NEXT CHAPTER',
                              onPressed: () => sailor.navigate(
                                Constants.newChapterRoute,
                                args: NewChapterPageArgs(
                                  parentType: ParentType.chapter,
                                  previousChapter: widget.args.chapter,
                                  routeBack: Constants.chapterRoute,
                                  predicateRoute: Constants.seriesRoute,
                                ),
                              ),
                              hasRoundedCorners: true,
                            ),
                          ),
                        if (_showWriteChapterButton(
                            chapterDbState.session.uid,
                            chapterDbState.nextSameAuthorChapter,
                            chapterDbState.nextChapters))
                          const SizedBox(height: 50),
                        // SECTION By the same author
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            'CHAPTER ${widget.args.chapter.index + 1} BY THE SAME AUTHOR',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: ChapterSameAuthor(
                            chapter: chapterDbState.nextSameAuthorChapter,
                            index: widget.args.chapter.index + 1,
                            authorName: widget.args.chapter.author.username,
                            languagesMap: chapterDbState.languagesMap,
                          ),
                        ),
                        const SizedBox(height: 25),
                        // SECTION By others
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            'CHAPTERS ${widget.args.chapter.index + 1}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        const SizedBox(height: 75),
                      ],
                    ),
                  ),
                ),
                IgnorePointer(
                  child: AnimatedOpacity(
                    duration: 200.milliseconds,
                    opacity: chapterDbState.showNavbar ? .75 : 0,
                    child: Container(
                      width: mediaQuery.width,
                      height: mediaQuery.height,
                      color: Colors.black54,
                    ),
                  ),
                ),
                PreferredSize(
                  preferredSize: const Size.fromHeight(41.5),
                  child: AnimatedContainer(
                    duration: 200.milliseconds,
                    height:
                        chapterDbState.showNavbar ? defaultAppBarHeight : 0.0,
                    child: AppBar(
                      backgroundColor: Colors.white,
                      bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(0.0),
                        child: Container(
                          height: 2.0,
                          color: Colors.white,
                        ),
                      ),
                      brightness: Brightness.light,
                      elevation: 0.0,
                      leading: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10.0,
                          vertical: 5.0,
                        ),
                        child: WINELeadingImageButton(
                          imagePath: 'assets/img/back_button.png',
                          onPressed: () => Navigator.of(context).pop(),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: chapterDbState.showNavbar
                        ? Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                if (chapterDbState.showChapterAdditionalInfo)
                                  ChapterAdditionalInfo(
                                    authorName:
                                        widget.args.chapter.author.username,
                                    seriesName:
                                        widget.args.chapter.series.title,
                                    genre: chapterDbState
                                        .genresMap[widget.args.chapter.genre],
                                    genreOptional: chapterDbState.genresMap[
                                        widget.args.chapter.genreOptional],
                                    copyrights: chapterDbState.copyrightsMap[
                                        widget.args.chapter.copyrights],
                                  ),
                                const SizedBox(height: 15),
                                ChapterStats(
                                  viewsCount: chapterDbState.viewsCount,
                                  likesCount: chapterDbState.likesCount,
                                  bookmarksCount: chapterDbState.bookmarksCount,
                                ),
                                const SizedBox(height: 15),
                                ChapterNavbar(
                                  previousChapterUid:
                                      widget.args.chapter.previousChapterUid,
                                  isLiked: chapterDbState.isLiked,
                                  isBookmarked: chapterDbState.isBookmarked,
                                ),
                                const SizedBox(height: 20),
                                LinearPercentIndicator(
                                  percent: chapterDbState.percentProgress,
                                  lineHeight: 30.0,
                                  backgroundColor: Colors.black38,
                                  progressColor: Palettes.pastelPink,
                                  center: Text(
                                    '${(chapterDbState.percentProgress * 100.0).round()}%',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        : null,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
