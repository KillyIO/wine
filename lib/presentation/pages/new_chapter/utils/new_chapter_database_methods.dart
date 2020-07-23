import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/presentation/pages/home/utils/home_navigation_methods.dart';

class NewChapterDatabaseMethods {
  final BuildContext context;
  final HomeNavigationMethods homeNavMethods;

  NewChapterDatabaseMethods(this.context, this.homeNavMethods);

  void addCoverPressed() =>
      context.bloc<NewChapterDatabaseBloc>().add(const NewChapterDatabaseEvent.addCoverPressedEVT());

  Future<void> deleteDraft() async {
    context.bloc<NewChapterDatabaseBloc>().add(const NewChapterDatabaseEvent.deleteDraftButtonPressedEVT());
    ExtendedNavigator.of(context).pop<bool>(true);
  }

  void isEndChanged({@required bool value}) =>
      context.bloc<NewChapterDatabaseBloc>().add(NewChapterDatabaseEvent.isEndChangedEVT(isEnd: value));

  void isNSFWChanged({@required bool value}) =>
      context.bloc<NewChapterDatabaseBloc>().add(NewChapterDatabaseEvent.isNSFWChangedEVT(isNSFW: value));

  Future<bool> onWillPop() async {
    final bool canPop = ExtendedNavigator.root.canPop();

    if (canPop) {
      saveOrBackButtonPressed();
    }
    return canPop;
  }

  void publishButtonPressed() =>
      context.bloc<NewChapterDatabaseBloc>().add(const NewChapterDatabaseEvent.publishButtonPressedEVT());

  void saveOrBackButtonPressed() {
    FocusScope.of(context).requestFocus(FocusNode());
    context.bloc<NewChapterDatabaseBloc>().add(const NewChapterDatabaseEvent.saveOrBackButtonPressedEVT());
  }

  Future<void> selector(String value, String field) async {
    switch (field) {
      case 'genre':
        context.bloc<NewChapterDatabaseBloc>().add(NewChapterDatabaseEvent.genreSelectedEVT(value));
        break;
      case 'genreOptional':
        context.bloc<NewChapterDatabaseBloc>().add(NewChapterDatabaseEvent.genreOptionalSelectedEVT(value));
        break;
      case 'language':
        context.bloc<NewChapterDatabaseBloc>().add(NewChapterDatabaseEvent.languageSelectedEVT(value));
        break;
      case 'copyrights':
        context.bloc<NewChapterDatabaseBloc>().add(NewChapterDatabaseEvent.copyrightsSelectedEVT(value));
        break;
    }
    ExtendedNavigator.of(context).pop<bool>(true);
  }

  void storyChanged(String value) =>
      context.bloc<NewChapterDatabaseBloc>().add(NewChapterDatabaseEvent.storyChangedEVT(value));

  void titleChanged(String value) =>
      context.bloc<NewChapterDatabaseBloc>().add(NewChapterDatabaseEvent.titleChangedEVT(value));
}
