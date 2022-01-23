import 'package:auto_route/auto_route.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wine/domain/chapter/chapter.dart';
import 'package:wine/domain/core/typewriter_type.dart';
import 'package:wine/domain/series/series.dart';
import 'package:wine/presentation/typewriter/typewriter_chapter/typewriter_chapter_id_page.dart';
import 'package:wine/presentation/typewriter/typewriter_chapter/typewriter_chapter_new_page.dart';
import 'package:wine/presentation/typewriter/typewriter_series/typewriter_series_id_page.dart';
import 'package:wine/presentation/typewriter/typewriter_series/typewriter_series_new_page.dart';
import 'package:wine/utils/constants/core.dart';
import 'package:wine/utils/responsive/core_responsive.dart';

/// @nodoc
class TypewriterPage extends StatelessWidget {
  /// @nodoc
  const TypewriterPage({
    Key? key,
    this.chapter,
    this.series,
    @PathParam('id') this.id,
    this.type = TypewriterType.unknown,
  }) : super(key: key);

  /// @nodoc
  final Chapter? chapter;

  /// @nodoc
  final Series? series;

  /// Series or Chapter id.
  final String? id;

  /// @nodoc
  final TypewriterType type;

  Widget get _typewriter {
    switch (type) {
      case TypewriterType.chapter:
        if (id != null) {
          return TypewriterChapterIDPage(chapter: chapter, chapterId: id!);
        }
        return TypewriterChapterNewPage(
          series: series!,
          previousChapter: chapter,
        );
      case TypewriterType.series:
        if (id != null) {
          return TypewriterSeriesIDPage(series: series, seriesId: id!);
        }
        return const TypewriterSeriesNewPage();
    }
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(defaultAppBarHeight),
        child: AppBar(
          backgroundColor: Colors.transparent,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0),
            child: Container(color: Colors.black, height: 2),
          ),
          centerTitle: true,
          elevation: 0,
          leading: !kIsWeb
              ? Padding(
                  padding: getAssetBackButtonPadding(mediaQuery),
                  child: IconButton(
                    key: const Key('typewriter_back_button'),
                    highlightColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    icon: const Icon(
                      Icons.keyboard_backspace_outlined,
                      color: Colors.black,
                    ),
                    onPressed: context.router.root.pop,
                    splashColor: Colors.transparent,
                  ),
                )
              : Container(),
          leadingWidth: defaultToolbarItemWidth,
        ),
      ),
      body: SafeArea(child: _typewriter),
    );
  }
}
