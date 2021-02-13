import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/chapter_editor/chapter_editor_database_bloc.dart';
import 'package:wine/application/navigation/chapter_editor/chapter_editor_navigation_bloc.dart';
import 'package:wine/presentation/layouts/chapter_editor/chapter_editor_form_layout.dart';
import 'package:wine/presentation/layouts/chapter_editor/chapter_editor_preview_layout.dart';
import 'package:wine/presentation/utils/chapter_editor/chapter_editor_database_methods.dart';
import 'package:wine/presentation/utils/chapter_editor/chapter_editor_database_validators.dart';
import 'package:wine/presentation/utils/chapter_editor/chapter_editor_listeners.dart';
import 'package:wine/presentation/utils/chapter_editor/chapter_editor_navigation_methods.dart';
import 'package:wine/presentation/utils/home/home_navigation_methods.dart';
import 'package:wine/presentation/widgets/chapter_editor/chapter_editor_page_view_builder.dart';
import 'package:wine/presentation/widgets/wine_horizontal_navbar.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/presentation/widgets/wine_loading_screen.dart';
import 'package:wine/utils/assets.dart';
import 'package:wine/utils/getters.dart';
import 'package:wine/utils/palette.dart';

/// @nodoc
class ChapterEditorLayout extends StatefulWidget {
  @override
  _ChapterEditorLayoutState createState() => _ChapterEditorLayoutState();
}

class _ChapterEditorLayoutState extends State<ChapterEditorLayout>
    with Getters, TickerProviderStateMixin {
  final PageController _pageController = PageController(initialPage: 1000);

  ChapterEditorDatabaseMethods _chapterEditorDatabaseMethods;
  ChapterEditorDatabaseValidators _chapterEditorDatabaseValidators;
  ChapterEditorListeners _chapterEditorListeners;
  ChapterEditorNavigationMethods _chapterEditorNavigationMethods;
  HomeNavigationMethods _homeNavigationMethods;

  List<Widget> _pageViewLayouts;

  @override
  void initState() {
    super.initState();
    _chapterEditorDatabaseMethods =
        ChapterEditorDatabaseMethods(context, _homeNavigationMethods);
    _chapterEditorDatabaseValidators = ChapterEditorDatabaseValidators(context);
    _chapterEditorListeners = ChapterEditorListeners(_homeNavigationMethods);
    _chapterEditorNavigationMethods = ChapterEditorNavigationMethods(context);

    _pageViewLayouts = <Widget>[
      ChapterEditorFormLayout(
        chapterEditorDatabaseMethods: _chapterEditorDatabaseMethods,
        chapterEditorDatabaseValidators: _chapterEditorDatabaseValidators,
      ),
      ChapterEditorPreviewLayout(),
    ];
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _chapterEditorDatabaseMethods.onWillPop,
      child:
          BlocConsumer<ChapterEditorDatabaseBloc, ChapterEditorDatabaseState>(
        listener: _chapterEditorListeners.listener,
        builder: (context, chapterEditorDatabaseState) {
          return BlocBuilder<ChapterEditorNavigationBloc,
              ChapterEditorNavigationState>(
            builder: (context, chapterEditorNavigationState) {
              return Scaffold(
                backgroundColor: Colors.white,
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(41.5),
                  child: AppBar(
                    actions: <Widget>[
                      FlatButton(
                        disabledTextColor: Colors.black26,
                        highlightColor: Colors.transparent,
                        onPressed:
                            _chapterEditorDatabaseMethods.publishButtonPressed,
                        splashColor: Colors.transparent,
                        textColor: Colors.black,
                        child: const Text(
                          'PUBLISH',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      FlatButton(
                        disabledTextColor: Colors.black26,
                        highlightColor: Colors.transparent,
                        onPressed: _chapterEditorDatabaseMethods
                            .saveOrBackButtonPressed,
                        splashColor: Colors.transparent,
                        textColor: Colors.black,
                        child: const Text(
                          'SAVE',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                    backgroundColor: Colors.transparent,
                    bottom: PreferredSize(
                      preferredSize: const Size.fromHeight(0.0),
                      child: Container(color: Colors.black, height: 2.0),
                    ),
                    brightness: Brightness.light,
                    centerTitle: true,
                    elevation: 0.0,
                    leading: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 5.0,
                      ),
                      child: WINELeadingImageButton(
                        imagePath: Assets.backIcon,
                        onPressed: _chapterEditorDatabaseMethods
                            .saveOrBackButtonPressed,
                      ),
                    ),
                  ),
                ),
                body: SafeArea(
                  child: Stack(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          WINEHorizontalNavbar(
                            pageController: _pageController,
                            pageViewNavbarItems: chapterEditorItemsKeys,
                            currentPageViewIdx:
                                chapterEditorNavigationState.currentPageViewIdx,
                            pageViewNavbarColors: const <Color>[
                              Palettes.pastelYellow,
                              Palettes.pastelPink
                            ],
                          ),
                          ChapterEditorPageViewBuilder(
                            chapterEditorDatabaseMethods:
                                _chapterEditorDatabaseMethods,
                            chapterEditorDatabaseValidators:
                                _chapterEditorDatabaseValidators,
                            chapterEditorNavigationMethods:
                                _chapterEditorNavigationMethods,
                            pageController: _pageController,
                            pageViewLayouts: _pageViewLayouts,
                          ),
                        ],
                      ),
                      WINELoadingScreen(
                        vsync: this,
                        isLoading: chapterEditorDatabaseState.isLoading,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
