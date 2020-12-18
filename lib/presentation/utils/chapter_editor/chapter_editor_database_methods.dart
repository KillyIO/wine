import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/chapter_editor/chapter_editor_database_bloc.dart';
import 'package:wine/presentation/utils/home/home_navigation_methods.dart';

/// @nodoc
class ChapterEditorDatabaseMethods {
  /// @nodoc
  ChapterEditorDatabaseMethods(this.context, this.homeNavigationMethods);

  /// @nodoc
  final BuildContext context;

  /// @nodoc
  final HomeNavigationMethods homeNavigationMethods;

  /// @nodoc
  void addCoverPressed() => context
      .read<ChapterEditorDatabaseBloc>()
      .add(const ChapterEditorDatabaseEvent.addCoverPressedEVT());

  /// @nodoc
  Future<void> deleteDraft() async {
    context
        .read<ChapterEditorDatabaseBloc>()
        .add(const ChapterEditorDatabaseEvent.deleteDraftButtonPressedEVT());
    ExtendedNavigator.of(context).pop<bool>(true);
  }

  /// @nodoc
  void isLastChapterChanged({@required bool value}) => context
      .read<ChapterEditorDatabaseBloc>()
      .add(ChapterEditorDatabaseEvent.isLastChapterChangedEVT(
        isLastChapter: value,
      ));

  /// @nodoc
  void isNSFWChanged({@required bool value}) => context
      .read<ChapterEditorDatabaseBloc>()
      .add(ChapterEditorDatabaseEvent.isNSFWChangedEVT(isNSFW: value));

  /// @nodoc
  Future<bool> onWillPop() async {
    final canPop = ExtendedNavigator.root.canPop();

    if (canPop) {
      saveOrBackButtonPressed();
    }
    return canPop;
  }

  /// @nodoc
  void publishButtonPressed() => context
      .read<ChapterEditorDatabaseBloc>()
      .add(const ChapterEditorDatabaseEvent.publishButtonPressedEVT());

  /// @nodoc
  void saveOrBackButtonPressed() {
    FocusScope.of(context).requestFocus(FocusNode());
    context
        .read<ChapterEditorDatabaseBloc>()
        .add(const ChapterEditorDatabaseEvent.saveOrBackButtonPressedEVT());
  }

  /// @nodoc
  Future<void> selector(String value, String field) async {
    switch (field) {
      case 'genre':
        context
            .read<ChapterEditorDatabaseBloc>()
            .add(ChapterEditorDatabaseEvent.genreSelectedEVT(value));
        break;
      case 'genreOptional':
        context
            .read<ChapterEditorDatabaseBloc>()
            .add(ChapterEditorDatabaseEvent.genreOptionalSelectedEVT(value));
        break;
      case 'language':
        context
            .read<ChapterEditorDatabaseBloc>()
            .add(ChapterEditorDatabaseEvent.languageSelectedEVT(value));
        break;
      case 'copyrights':
        context
            .read<ChapterEditorDatabaseBloc>()
            .add(ChapterEditorDatabaseEvent.copyrightsSelectedEVT(value));
        break;
    }
    ExtendedNavigator.of(context).pop<bool>(true);
  }

  /// @nodoc
  void storyChanged(String value) => context
      .read<ChapterEditorDatabaseBloc>()
      .add(ChapterEditorDatabaseEvent.storyChangedEVT(value));

  /// @nodoc
  void titleChanged(String value) => context
      .read<ChapterEditorDatabaseBloc>()
      .add(ChapterEditorDatabaseEvent.titleChangedEVT(value));
}
