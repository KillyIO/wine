import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/presentation/widgets/dialog/wine_info_dialog.dart';
import 'package:wine/presentation/widgets/dialog/wine_show_dialog.dart';

class NewSeriesDatabaseMethods {
  final BuildContext context;

  NewSeriesDatabaseMethods(this.context);

  void addCoverPressed() =>
      context.bloc<NewSeriesDatabaseBloc>().add(const NewSeriesDatabaseEvent.addCoverPressedEVT());

  Future<void> backButtonPressed({@required bool isEditMode}) async {
    FocusScope.of(context).requestFocus(FocusNode());
    if (isEditMode) {
      context.bloc<NewSeriesDatabaseBloc>().add(const NewSeriesDatabaseEvent.saveSeriesDraftButtonPressedEVT());
    } else {
      ExtendedNavigator.root.pop();
    }
  }

  Future<void> deleteDraft() async {
    context.bloc<NewSeriesDatabaseBloc>().add(const NewSeriesDatabaseEvent.deleteDraftButtonPressedEVT());
    ExtendedNavigator.root.pop();
  }

  void isNSFWChanged({@required bool value}) =>
      context.bloc<NewSeriesDatabaseBloc>().add(NewSeriesDatabaseEvent.isNSFWChangedEVT(isNSFW: value));

  Future<bool> onWillPop() async {
    final bool canPop = ExtendedNavigator.root.canPop();

    if (canPop) {
      FocusScope.of(context).requestFocus(FocusNode());
    }
    return canPop;
  }

  Future<void> saveSeriesDraftButtonPressed({@required bool isEditMode}) async {
    if (isEditMode) {
      context.bloc<NewSeriesDatabaseBloc>().add(const NewSeriesDatabaseEvent.saveSeriesDraftButtonPressedEVT());
    } else {
      final bool result = await wineShowDialog(
        context: context,
        builder: (_) => WINEInfoDialog(
          message: 'This series will be available to the community once you publish the first chapter.',
          buttonText: 'GOT IT!',
          onPressed: () async => ExtendedNavigator.of(context).pop<bool>(true),
        ),
      );
      if (result) {
        context.bloc<NewSeriesDatabaseBloc>().add(const NewSeriesDatabaseEvent.saveSeriesDraftButtonPressedEVT());
      }
    }
  }

  Future<void> selector(String value, String field) async {
    switch (field) {
      case 'genre':
        context.bloc<NewSeriesDatabaseBloc>().add(NewSeriesDatabaseEvent.genreSelectedEVT(value));
        break;
      case 'genreOptional':
        context.bloc<NewSeriesDatabaseBloc>().add(NewSeriesDatabaseEvent.genreOptionalSelectedEVT(value));
        break;
      case 'language':
        context.bloc<NewSeriesDatabaseBloc>().add(NewSeriesDatabaseEvent.languageSelectedEVT(value));
        break;
    }
    ExtendedNavigator.of(context).pop<bool>(true);
  }

  void subtitleChanged(String value) =>
      context.bloc<NewSeriesDatabaseBloc>().add(NewSeriesDatabaseEvent.subtitleChangedEVT(value));

  void summaryChanged(String value) =>
      context.bloc<NewSeriesDatabaseBloc>().add(NewSeriesDatabaseEvent.summaryChangedEVT(value));

  void titleChanged(String value) =>
      context.bloc<NewSeriesDatabaseBloc>().add(NewSeriesDatabaseEvent.titleChangedEVT(value));
}
