import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/presentation/pages/home/utils/home_navigation_methods.dart';
import 'package:wine/presentation/pages/new_series/utils/new_series_database_methods.dart';
import 'package:wine/presentation/pages/new_series/utils/new_series_database_validators.dart';
import 'package:wine/presentation/pages/new_series/utils/new_series_listeners.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_form.dart';
import 'package:wine/presentation/widgets/wine_info_dialog.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/presentation/widgets/wine_loading_screen.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/utils/arguments.dart';

class NewSeriesFormLayout extends StatefulWidget {
  final NewSeriesPageArgs args;

  const NewSeriesFormLayout({Key key, this.args}) : super(key: key);

  @override
  _NewSeriesFormLayoutState createState() => _NewSeriesFormLayoutState();
}

class _NewSeriesFormLayoutState extends State<NewSeriesFormLayout> with TickerProviderStateMixin {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _subtitleController = TextEditingController();
  final TextEditingController _summaryController = TextEditingController();

  HomeNavigationMethods _homeNavMethods;
  NewSeriesDatabaseMethods _nsDbMethods;
  NewSeriesDatabaseValidators _nsDbValidators;
  final NewSeriesListeners _nsListeners = NewSeriesListeners();

  @override
  void initState() {
    super.initState();
    _homeNavMethods = HomeNavigationMethods(context);
    _nsDbMethods = NewSeriesDatabaseMethods(context, _homeNavMethods);
    _nsDbValidators = NewSeriesDatabaseValidators(context);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _nsDbMethods.onWillPop,
      child: BlocConsumer<NewSeriesDatabaseBloc, NewSeriesDatabaseState>(
        listener: _nsListeners.listener,
        builder: (context, nsDbState) {
          _titleController.value = _titleController.value.copyWith(text: nsDbState.titleStr);

          _subtitleController.value = _subtitleController.value.copyWith(text: nsDbState.subtitleStr);

          _summaryController.value = _summaryController.value.copyWith(text: nsDbState.summaryStr);

          return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(41.5),
              child: AppBar(
                actions: <Widget>[
                  FlatButton(
                    disabledTextColor: Colors.black26,
                    highlightColor: Colors.transparent,
                    onPressed: () => _nsDbMethods.saveSeriesDraftButtonPressed(isEditMode: nsDbState.isEditMode),
                    splashColor: Colors.transparent,
                    textColor: Colors.black,
                    child: Text(
                      nsDbState.isEditMode ? 'SAVE' : 'CREATE SERIES',
                      style: TextStyle(fontWeight: FontWeight.w500),
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
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: WINELeadingImageButton(
                    imagePath: 'assets/img/back_button.png',
                    onPressed: () => _nsDbMethods.backButtonPressed(isEditMode: nsDbState.isEditMode),
                  ),
                ),
              ),
            ),
            body: SafeArea(
              child: Stack(
                children: <Widget>[
                  NewSeriesForm(
                    nsDbState: nsDbState,
                    nsDbMethods: _nsDbMethods,
                    nsDbValidators: _nsDbValidators,
                    titleController: _titleController,
                    subtitleController: _subtitleController,
                    summaryController: _summaryController,
                  ),
                  WINELoadingScreen(vsync: this, isLoading: nsDbState.isCreatingOrDeleting),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
