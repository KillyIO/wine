import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time/time.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/presentation/utils/chapter/chapter_database_methods.dart';
import 'package:wine/presentation/utils/chapter/chapter_listeners.dart';
import 'package:wine/presentation/widgets/chapter/chapter_app_bar.dart';
import 'package:wine/presentation/widgets/chapter/chapter_menu.dart';
import 'package:wine/presentation/widgets/chapter/chapter_next_chapters.dart';
import 'package:wine/presentation/widgets/chapter/chapter_same_author.dart';
import 'package:wine/presentation/layouts/chapter/chapter_story_layout.dart';
import 'package:wine/presentation/widgets/chapter/chapter_write_next_chapter_button.dart';

/// @nodoc
class ChapterLayout extends StatefulWidget {
  /// @nodoc
  const ChapterLayout({Key key}) : super(key: key);

  @override
  _ChapterLayoutState createState() => _ChapterLayoutState();
}

class _ChapterLayoutState extends State<ChapterLayout> {
  final ChapterListeners _chapterListeners = ChapterListeners();
  final ScrollController _scrollController = ScrollController();
  ChapterDatabaseMethods _chapterDatabaseMethods;

  bool nextChaptersMinifiedLoaded = false;

  @override
  void initState() {
    super.initState();
    _chapterDatabaseMethods = ChapterDatabaseMethods(context);

    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.offset >=
            _scrollController.position.maxScrollExtent / 2 &&
        !nextChaptersMinifiedLoaded) {
      context
          .read<ChapterDatabaseBloc>()
          .add(const ChapterDatabaseEvent.loadNextChaptersEVT());
      setState(() {
        nextChaptersMinifiedLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final defaultAppBarHeight = const Size.fromHeight(41.5).height;

    return MultiBlocListener(
      listeners: _chapterListeners.listeners,
      child: BlocBuilder<ChapterDatabaseBloc, ChapterDatabaseState>(
        builder: (context, chapterDatabaseState) {
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
                          _chapterDatabaseMethods.scroll(
                            _scrollController.position.pixels.toInt(),
                            _scrollController.position.maxScrollExtent.toInt(),
                          );
                          return true;
                        }
                        return false;
                      },
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () => _chapterDatabaseMethods.storyPressed(
                          showChapterAdditionalInfo:
                              chapterDatabaseState.showChapterAdditionalInfo,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: ListView(
                            controller: _scrollController,
                            children: <Widget>[
                              ChapterStoryLayout(
                                defaultAppBarHeight: defaultAppBarHeight,
                                chapter: chapterDatabaseState.chapter,
                              ),
                              const SizedBox(height: 50),
                              // SECTION Write next chapter
                              if (_chapterDatabaseMethods
                                  .showWriteChapterButton(chapterDatabaseState))
                                ChapterWriteNextChapterButton(
                                  chapterDatabaseState: chapterDatabaseState,
                                  chapterDatabaseMethods:
                                      _chapterDatabaseMethods,
                                ),
                              ChapterSameAuthor(
                                chapterDatabaseState: chapterDatabaseState,
                              ),
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
                              ChapterNextChapters(
                                chapterDatabaseState: chapterDatabaseState,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  IgnorePointer(
                    child: AnimatedOpacity(
                      duration: 200.milliseconds,
                      opacity: chapterDatabaseState.showNavbar ? .75 : 0,
                      child: Container(
                        width: mediaQuery.width,
                        height: mediaQuery.height,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  ChapterAppBar(
                    showNavbar: chapterDatabaseState.showNavbar,
                    defaultAppBarHeight: defaultAppBarHeight,
                  ),
                  ChapterMenu(
                    chapterDatabaseState: chapterDatabaseState,
                    chapterDatabaseMethods: _chapterDatabaseMethods,
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
