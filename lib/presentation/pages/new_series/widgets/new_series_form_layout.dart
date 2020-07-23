import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/presentation/pages/new_series/utils/new_series_database_methods.dart';
import 'package:wine/presentation/pages/new_series/utils/new_series_database_validators.dart';
import 'package:wine/presentation/pages/new_series/utils/new_series_listeners.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_form.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/presentation/widgets/wine_loading_screen.dart';

class NewSeriesFormLayout extends StatefulWidget {
  const NewSeriesFormLayout({Key key}) : super(key: key);

  @override
  _NewSeriesFormLayoutState createState() => _NewSeriesFormLayoutState();
}

class _NewSeriesFormLayoutState extends State<NewSeriesFormLayout> with TickerProviderStateMixin {
  NewSeriesDatabaseMethods _nsDbMethods;
  NewSeriesDatabaseValidators _nsDbValidators;
  NewSeriesListeners _nsListeners;

  @override
  void initState() {
    super.initState();
    _nsDbMethods = NewSeriesDatabaseMethods(context);
    _nsDbValidators = NewSeriesDatabaseValidators(context);
    _nsListeners = NewSeriesListeners();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _nsDbMethods.onWillPop,
      child: BlocConsumer<NewSeriesDatabaseBloc, NewSeriesDatabaseState>(
        listener: _nsListeners.listener,
        builder: (context, nsDbState) {
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
                  NewSeriesForm(nsDbState: nsDbState, nsDbMethods: _nsDbMethods, nsDbValidators: _nsDbValidators),
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
