import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/series_editor/series_editor_database_bloc.dart';
import 'package:wine/presentation/utils/series_editor/series_editor_database_methods.dart';
import 'package:wine/presentation/utils/series_editor/series_editor_database_validators.dart';
import 'package:wine/presentation/utils/series_editor/series_editor_listeners.dart';
import 'package:wine/presentation/widgets/series_editor/series_editor_form.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/presentation/widgets/wine_loading_screen.dart';
import 'package:wine/utils/assets.dart';

/// @nodoc
class SeriesEditorFormLayout extends StatefulWidget {
  /// @nodoc
  const SeriesEditorFormLayout({Key key}) : super(key: key);

  @override
  _SeriesEditorFormLayoutState createState() => _SeriesEditorFormLayoutState();
}

class _SeriesEditorFormLayoutState extends State<SeriesEditorFormLayout>
    with TickerProviderStateMixin {
  SeriesEditorDatabaseMethods _seriesEditorDatabaseMethods;
  SeriesEditorDatabaseValidators _seriesEditorDatabaseValidators;
  SeriesEditorListeners _seriesEditorListeners;

  @override
  void initState() {
    super.initState();
    _seriesEditorDatabaseMethods = SeriesEditorDatabaseMethods(context);
    _seriesEditorDatabaseValidators = SeriesEditorDatabaseValidators(context);
    _seriesEditorListeners = SeriesEditorListeners();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _seriesEditorDatabaseMethods.onWillPop,
      child: BlocConsumer<SeriesEditorDatabaseBloc, SeriesEditorDatabaseState>(
        listener: _seriesEditorListeners.listener,
        builder: (context, seriesEditorDatabaseState) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(41.5),
              child: AppBar(
                actions: <Widget>[
                  FlatButton(
                    disabledTextColor: Colors.black26,
                    highlightColor: Colors.transparent,
                    onPressed: () => _seriesEditorDatabaseMethods
                        .saveSeriesDraftButtonPressed(
                      isEditMode: seriesEditorDatabaseState.isEditMode,
                      disclaimerAlreadyDisplayed:
                          seriesEditorDatabaseState.disclaimerAlreadyDisplayed,
                    ),
                    splashColor: Colors.transparent,
                    textColor: Colors.black,
                    child: Text(
                      seriesEditorDatabaseState.isEditMode
                          ? 'SAVE'
                          : 'SAVE SERIES',
                      style: const TextStyle(fontWeight: FontWeight.w500),
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
                      horizontal: 10.0, vertical: 5.0),
                  child: WINELeadingImageButton(
                    imagePath: Assets.backIcon,
                    onPressed: () =>
                        _seriesEditorDatabaseMethods.backButtonPressed(
                      isEditMode: seriesEditorDatabaseState.isEditMode,
                    ),
                  ),
                ),
              ),
            ),
            body: SafeArea(
              child: Stack(
                children: <Widget>[
                  SeriesEditorForm(
                    seriesEditorDatabaseMethods: _seriesEditorDatabaseMethods,
                    seriesEditorDatabaseValidators:
                        _seriesEditorDatabaseValidators,
                  ),
                  WINELoadingScreen(
                    vsync: this,
                    isLoading: seriesEditorDatabaseState.isLoading,
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
