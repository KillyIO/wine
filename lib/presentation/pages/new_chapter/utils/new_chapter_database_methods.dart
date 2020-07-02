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

  void deleteDraft() =>
      context.bloc<NewChapterDatabaseBloc>().add(const NewChapterDatabaseEvent.deleteDraftButtonPressedEVT());

  void isEndChanged({@required bool value}) =>
      context.bloc<NewChapterDatabaseBloc>().add(NewChapterDatabaseEvent.isEndChangedEVT(isEnd: value));

  void isNSFWChanged({@required bool value}) =>
      context.bloc<NewChapterDatabaseBloc>().add(NewChapterDatabaseEvent.isNSFWChangedEVT(isNSFW: value));

  Future<bool> onWillPop() async {
    final bool canPop = Navigator.of(context).canPop();

    if (canPop) {
      final bool isFirstChapter = context.bloc<NewChapterDatabaseBloc>().state.isFirstChapter;

      if (isFirstChapter) {
        homeNavMethods.newSeriesIconPressed(isNSOpen: false);
      }
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

  void selector(String value, String field) {
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
    Navigator.of(context).pop(true);
  }

  void storyChanged(String value) =>
      context.bloc<NewChapterDatabaseBloc>().add(NewChapterDatabaseEvent.storyChangedEVT(value));

  void titleChanged(String value) =>
      context.bloc<NewChapterDatabaseBloc>().add(NewChapterDatabaseEvent.titleChangedEVT(value));
}
