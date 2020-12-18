import 'package:flutter/material.dart';
import 'package:wine/presentation/utils/chapter_editor/chapter_editor_database_methods.dart';
import 'package:wine/presentation/utils/chapter_editor/chapter_editor_database_validators.dart';
import 'package:wine/presentation/utils/chapter_editor/chapter_editor_navigation_methods.dart';

/// @nodoc
class ChapterEditorPageViewBuilder extends StatelessWidget {
  /// @nodoc
  ChapterEditorPageViewBuilder({
    Key key,
    @required this.chapterEditorDatabaseMethods,
    @required this.chapterEditorDatabaseValidators,
    @required this.chapterEditorNavigationMethods,
    @required this.pageController,
    @required this.pageViewLayouts,
  }) : super(key: key);

  /// @nodoc
  final ChapterEditorDatabaseMethods chapterEditorDatabaseMethods;

  /// @nodoc
  final ChapterEditorDatabaseValidators chapterEditorDatabaseValidators;

  /// @nodoc
  final ChapterEditorNavigationMethods chapterEditorNavigationMethods;

  /// @nodoc
  final PageController pageController;

  /// @nodoc
  final List<Widget> pageViewLayouts;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemBuilder: (BuildContext context, int index) =>
            pageViewLayouts[index % pageViewLayouts.length],
        onPageChanged: (int index) => chapterEditorNavigationMethods
            .pageViewIndexChanged(index % pageViewLayouts.length),
      ),
    );
  }
}
