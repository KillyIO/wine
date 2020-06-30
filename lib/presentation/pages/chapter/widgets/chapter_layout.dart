import 'package:after_layout/after_layout.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time/time.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/presentation/pages/chapter/utils/chapter_database_methods.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_app_bar.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_menu.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_next_chapters.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_story_view.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_write_next_chapter_button.dart';
import 'package:wine/utils/arguments.dart';

class ChapterLayout extends StatefulWidget {
  final ChapterPageArgs args;

  const ChapterLayout({Key key, this.args}) : super(key: key);

  @override
  _ChapterLayoutState createState() => _ChapterLayoutState();
}

class _ChapterLayoutState extends State<ChapterLayout> with AfterLayoutMixin {
  ScrollController _scrollController;
  ChapterDatabaseMethods _chapterDbMethods;

  bool nextChaptersLoaded = false;

  @override
  void initState() {
    super.initState();
    _chapterDbMethods = ChapterDatabaseMethods(context);

    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void afterFirstLayout(BuildContext context) {
    _chapterDbMethods.chapterPageLaunched(widget.args.chapter);
  }

  void _onScroll() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent / 2 && !nextChaptersLoaded) {
      context.bloc<ChapterDatabaseBloc>().add(const ChapterDatabaseEvent.loadNextChaptersEVT());
      setState(() {
        nextChaptersLoaded = true;
      });
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
                      if (scrollNotification is ScrollEndNotification) {
                        _chapterDbMethods.scroll(
                          _scrollController.position.pixels.toInt(),
                          _scrollController.position.maxScrollExtent.toInt(),
                        );
                        return true;
                      }
                      return false;
                    },
                    child: ListView(
                      controller: _scrollController,
                      children: <Widget>[
                        ChapterStoryView(
                          defaultAppBarHeight: defaultAppBarHeight,
                          chapter: widget.args.chapter,
                          onPressed: () => _chapterDbMethods.storyPressed(
                              showChapterAdditionalInfo: chapterDbState.showChapterAdditionalInfo),
                        ),
                        // SECTION Write next chapter
                        ChapterWriteNextChapterButton(
                          chapterDbState: chapterDbState,
                          chapterDbMethods: _chapterDbMethods,
                          chapter: widget.args.chapter,
                        ),
                        // SECTION next chapters
                        ChapterNextChapters(
                          chapterDbState: chapterDbState,
                          currentChapter: widget.args.chapter,
                          onPressed: () => _chapterDbMethods.storyPressed(
                              showChapterAdditionalInfo: chapterDbState.showChapterAdditionalInfo),
                        ),
                      ],
                    ),
                  ),
                ),
                IgnorePointer(
                  child: AnimatedOpacity(
                    duration: 200.milliseconds,
                    opacity: chapterDbState.showNavbar ? .75 : 0,
                    child: Container(width: mediaQuery.width, height: mediaQuery.height, color: Colors.black54),
                  ),
                ),
                ChapterAppBar(showNavbar: chapterDbState.showNavbar, defaultAppBarHeight: defaultAppBarHeight),
                ChapterMenu(
                  chapterDbState: chapterDbState,
                  chapterDbMethods: _chapterDbMethods,
                  chapter: widget.args.chapter,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
