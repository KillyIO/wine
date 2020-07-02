import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/presentation/pages/home/utils/home_navigation_methods.dart';
import 'package:wine/presentation/widgets/wine_info_dialog.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';

class NewSeriesDatabaseMethods {
  final BuildContext context;
  final HomeNavigationMethods homeNavMethods;

  NewSeriesDatabaseMethods(this.context, this.homeNavMethods);

  void addCoverPressed() =>
      context.bloc<NewSeriesDatabaseBloc>().add(const NewSeriesDatabaseEvent.addCoverPressedEVT());

  void backButtonPressed({@required bool isEditMode}) {
    FocusScope.of(context).requestFocus(FocusNode());
    if (isEditMode) {
      context.bloc<NewSeriesDatabaseBloc>().add(const NewSeriesDatabaseEvent.saveSeriesDraftButtonPressedEVT());
    } else {
      homeNavMethods.newSeriesIconPressed(isNSOpen: false);
      Navigator.of(context).pop();
    }
  }

  void deleteDraft() {
    context.bloc<NewSeriesDatabaseBloc>().add(const NewSeriesDatabaseEvent.deleteDraftButtonPressedEVT());
    Navigator.of(context).pop(true);
  }

  void isNSFWChanged({@required bool value}) =>
      context.bloc<NewSeriesDatabaseBloc>().add(NewSeriesDatabaseEvent.isNSFWChangedEVT(isNSFW: value));

  Future<bool> onWillPop() async {
    final bool canPop = Navigator.of(context).canPop();

    if (canPop) {
      FocusScope.of(context).requestFocus(FocusNode());
      if (!context.bloc<NewSeriesDatabaseBloc>().state.isEditMode) {
        homeNavMethods.newSeriesIconPressed(isNSOpen: false);
      }
    }
    return canPop;
  }

  void saveSeriesDraftButtonPressed({@required bool isEditMode}) {
    if (isEditMode) {
      context.bloc<NewSeriesDatabaseBloc>().add(const NewSeriesDatabaseEvent.saveSeriesDraftButtonPressedEVT());
    } else {
      wineShowDialog(
        context: context,
        builder: (_) => WINEInfoDialog(
          message: 'This series will be available to the community once you publish the first chapter.',
          buttonText: 'GOT IT!',
          onPressed: () {
            context.bloc<NewSeriesDatabaseBloc>().add(const NewSeriesDatabaseEvent.saveSeriesDraftButtonPressedEVT());
            Navigator.of(context).pop(true);
          },
        ),
      );
    }
  }

  void selector(String value, String field) {
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
    Navigator.of(context).pop(true);
  }

  void subtitleChanged(String value) =>
      context.bloc<NewSeriesDatabaseBloc>().add(NewSeriesDatabaseEvent.subtitleChangedEVT(value));

  void summaryChanged(String value) =>
      context.bloc<NewSeriesDatabaseBloc>().add(NewSeriesDatabaseEvent.summaryChangedEVT(value));

  void titleChanged(String value) =>
      context.bloc<NewSeriesDatabaseBloc>().add(NewSeriesDatabaseEvent.titleChangedEVT(value));
}
