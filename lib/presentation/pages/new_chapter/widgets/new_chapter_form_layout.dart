import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/presentation/pages/home/utils/home_navigation_methods.dart';
import 'package:wine/presentation/pages/new_chapter/utils/new_chapter_database_methods.dart';
import 'package:wine/presentation/pages/new_chapter/utils/new_chapter_database_validators.dart';
import 'package:wine/presentation/pages/new_chapter/utils/new_chapter_listeners.dart';
import 'package:wine/presentation/pages/new_chapter/widgets/new_chapter_form.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/presentation/widgets/wine_loading_screen.dart';
import 'package:wine/utils/arguments.dart';

class NewChapterFormLayout extends StatefulWidget {
  final NewChapterPageArgs args;

  const NewChapterFormLayout({
    Key key,
    this.args,
  }) : super(key: key);

  @override
  _NewChapterFormLayoutState createState() => _NewChapterFormLayoutState();
}

class _NewChapterFormLayoutState extends State<NewChapterFormLayout> with TickerProviderStateMixin {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _storyController = TextEditingController();

  HomeNavigationMethods _homeNavMethods;
  NewChapterDatabaseMethods _ncDbMethods;
  NewChapterDatabaseValidators _ncDbValidators;
  NewChapterListeners _ncListeners;

  @override
  void initState() {
    super.initState();
    _homeNavMethods = HomeNavigationMethods(context);
    _ncDbMethods = NewChapterDatabaseMethods(context, _homeNavMethods);
    _ncDbValidators = NewChapterDatabaseValidators(context);
    _ncListeners = NewChapterListeners(_homeNavMethods, widget.args);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _ncDbMethods.onWillPop,
      child: BlocConsumer<NewChapterDatabaseBloc, NewChapterDatabaseState>(
        listener: _ncListeners.listener,
        builder: (context, ncDbState) {
          _titleController.value = _titleController.value.copyWith(text: ncDbState.titleStr);

          _storyController.value = _storyController.value.copyWith(text: ncDbState.storyStr);

          return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(41.5),
              child: AppBar(
                actions: <Widget>[
                  FlatButton(
                    disabledTextColor: Colors.black26,
                    highlightColor: Colors.transparent,
                    onPressed: _ncDbMethods.publishButtonPressed,
                    splashColor: Colors.transparent,
                    textColor: Colors.black,
                    child: Text('PUBLISH', style: TextStyle(fontWeight: FontWeight.w500)),
                  ),
                  FlatButton(
                    disabledTextColor: Colors.black26,
                    highlightColor: Colors.transparent,
                    onPressed: _ncDbMethods.saveOrBackButtonPressed,
                    splashColor: Colors.transparent,
                    textColor: Colors.black,
                    child: Text('SAVE', style: TextStyle(fontWeight: FontWeight.w500)),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: WINELeadingImageButton(
                    imagePath: 'assets/img/back_button.png',
                    onPressed: _ncDbMethods.saveOrBackButtonPressed,
                  ),
                ),
              ),
            ),
            body: SafeArea(
              child: Stack(
                children: <Widget>[
                  NewChapterForm(
                    ncDbState: ncDbState,
                    ncDbMethods: _ncDbMethods,
                    ncDbValidators: _ncDbValidators,
                    titleController: _titleController,
                    storyController: _storyController,
                  ),
                  WINELoadingScreen(vsync: this, isLoading: ncDbState.isDeletingOrPublishingOrSaving),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
