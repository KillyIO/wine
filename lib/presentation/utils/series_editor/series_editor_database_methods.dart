import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/series_editor/series_editor_database_bloc.dart';
import 'package:wine/presentation/widgets/dialog/wine_info_dialog.dart';
import 'package:wine/presentation/widgets/dialog/wine_show_dialog.dart';

/// @nodoc
class SeriesEditorDatabaseMethods {
  /// @nodoc
  SeriesEditorDatabaseMethods(this.context);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  void addCoverPressed() => context
      .read<SeriesEditorDatabaseBloc>()
      .add(const SeriesEditorDatabaseEvent.addCoverPressedEVT());

  /// @nodoc
  Future<void> backButtonPressed({@required bool isEditMode}) async {
    FocusScope.of(context).requestFocus(FocusNode());
    if (isEditMode) {
      context.read<SeriesEditorDatabaseBloc>().add(
          const SeriesEditorDatabaseEvent.saveSeriesDraftButtonPressedEVT());
    } else {
      ExtendedNavigator.root.pop();
    }
  }

  /// @nodoc
  Future<void> deleteDraft() async {
    context
        .read<SeriesEditorDatabaseBloc>()
        .add(const SeriesEditorDatabaseEvent.deleteDraftButtonPressedEVT());
    ExtendedNavigator.root.pop();
  }

  /// @nodoc
  void isNSFWChanged({@required bool value}) => context
      .read<SeriesEditorDatabaseBloc>()
      .add(SeriesEditorDatabaseEvent.isNSFWChangedEVT(isNSFW: value));

  /// @nodoc
  Future<bool> onWillPop() async {
    final canPop = ExtendedNavigator.root.canPop();

    if (canPop) {
      FocusScope.of(context).requestFocus(FocusNode());
    }
    return canPop;
  }

  /// @nodoc
  Future<void> saveSeriesDraftButtonPressed({
    @required bool isEditMode,
    @required bool disclaimerAlreadyDisplayed,
  }) async {
    if (isEditMode) {
      context.read<SeriesEditorDatabaseBloc>().add(
          const SeriesEditorDatabaseEvent.saveSeriesDraftButtonPressedEVT());
    } else {
      if (disclaimerAlreadyDisplayed) {
        context.read<SeriesEditorDatabaseBloc>().add(
            const SeriesEditorDatabaseEvent.saveSeriesDraftButtonPressedEVT());
      } else {
        final result = await wineShowDialog(
          context: context,
          builder: (_) => WINEInfoDialog(
            message:
                // ignore: lines_longer_than_80_chars
                'This series will be available to the community once you publish the first chapter.',
            buttonText: 'GOT IT!',
            onPressed: () async =>
                ExtendedNavigator.of(context).pop<bool>(true),
          ),
        );
        if (result) {
          context.read<SeriesEditorDatabaseBloc>().add(
              const SeriesEditorDatabaseEvent
                  .saveSeriesDraftButtonPressedEVT());
        }
      }
    }
  }

  /// @nodoc
  Future<void> selector(String value, String field) async {
    switch (field) {
      case 'genre':
        context
            .read<SeriesEditorDatabaseBloc>()
            .add(SeriesEditorDatabaseEvent.genreSelectedEVT(value));
        break;
      case 'genreOptional':
        context
            .read<SeriesEditorDatabaseBloc>()
            .add(SeriesEditorDatabaseEvent.genreOptionalSelectedEVT(value));
        break;
      case 'language':
        context
            .read<SeriesEditorDatabaseBloc>()
            .add(SeriesEditorDatabaseEvent.languageSelectedEVT(value));
        break;
    }
    ExtendedNavigator.of(context).pop<bool>(true);
  }

  /// @nodoc
  void subtitleChanged(String value) => context
      .read<SeriesEditorDatabaseBloc>()
      .add(SeriesEditorDatabaseEvent.subtitleChangedEVT(value));

  /// @nodoc
  void summaryChanged(String value) => context
      .read<SeriesEditorDatabaseBloc>()
      .add(SeriesEditorDatabaseEvent.summaryChangedEVT(value));

  /// @nodoc
  void titleChanged(String value) => context
      .read<SeriesEditorDatabaseBloc>()
      .add(SeriesEditorDatabaseEvent.titleChangedEVT(value));
}
