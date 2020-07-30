import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time/time.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/presentation/pages/chapter/utils/chapter_database_methods.dart';
import 'package:wine/presentation/pages/chapter/utils/chapter_listeners.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_app_bar.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_menu.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_next_chapters.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_same_author.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_story_layout.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_write_next_chapter_button.dart';

class ChapterLayout extends StatefulWidget {
  const ChapterLayout({Key key}) : super(key: key);

  @override
  _ChapterLayoutState createState() => _ChapterLayoutState();
}

class _ChapterLayoutState extends State<ChapterLayout> {
  final ChapterListeners _chapterListeners = ChapterListeners();
  final ScrollController _scrollController = ScrollController();
  ChapterDatabaseMethods _chapterDbMethods;

  bool nextChaptersMinifiedLoaded = false;

  @override
  void initState() {
    super.initState();
    _chapterDbMethods = ChapterDatabaseMethods(context);

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.offset >= _scrollController.position.maxScrollExtent / 2 && !nextChaptersMinifiedLoaded) {
      context.bloc<ChapterDatabaseBloc>().add(const ChapterDatabaseEvent.loadNextChaptersEVT());
      setState(() {
        nextChaptersMinifiedLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;
    final double defaultAppBarHeight = const Size.fromHeight(41.5).height;

    return MultiBlocListener(
      listeners: _chapterListeners.listeners,
      child: BlocBuilder<ChapterDatabaseBloc, ChapterDatabaseState>(
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
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () => _chapterDbMethods.storyPressed(
                          showChapterAdditionalInfo: chapterDbState.showChapterAdditionalInfo,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: ListView(
                            controller: _scrollController,
                            children: <Widget>[
                              ChapterStoryLayout(
                                defaultAppBarHeight: defaultAppBarHeight,
                                chapter: chapterDbState.chapter,
                              ),
                              const SizedBox(height: 50),
                              // SECTION Write next chapter
                              if (_chapterDbMethods.showWriteChapterButton(chapterDbState))
                                ChapterWriteNextChapterButton(
                                  chapterDbState: chapterDbState,
                                  chapterDbMethods: _chapterDbMethods,
                                ),
                              ChapterSameAuthor(chapterDbState: chapterDbState),
                              const SizedBox(height: 25),
                              Center(
                                child: Container(
                                  height: 3.0,
                                  width: 50.0,
                                  decoration: BoxDecoration(
                                    color: Colors.black38,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 25),
                              // SECTION next chapters
                              ChapterNextChapters(chapterDbState: chapterDbState),
                            ],
                          ),
                        ),
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
                  ChapterAppBar(
                    showNavbar: chapterDbState.showNavbar,
                    defaultAppBarHeight: defaultAppBarHeight,
                  ),
                  ChapterMenu(
                    chapterDbState: chapterDbState,
                    chapterDbMethods: _chapterDbMethods,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
