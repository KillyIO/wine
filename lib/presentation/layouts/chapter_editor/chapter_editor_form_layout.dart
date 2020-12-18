import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/chapter_editor/chapter_editor_database_bloc.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/utils/chapter_editor/chapter_editor_database_methods.dart';
import 'package:wine/presentation/utils/chapter_editor/chapter_editor_database_validators.dart';
import 'package:wine/presentation/widgets/dialog/wine_show_dialog.dart';
import 'package:wine/presentation/widgets/dialog/wine_warning_dialog.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_cover.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_selector_dialog.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_text_form_field.dart';
import 'package:wine/presentation/widgets/wine_button.dart';
import 'package:wine/presentation/widgets/wine_switch_list_tile.dart';
import 'package:wine/presentation/widgets/wine_text_field_label.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/getters.dart';
import 'package:wine/utils/palettes.dart';

/// @nodoc
class ChapterEditorFormLayout extends StatelessWidget with Getters {
  /// @nodoc
  ChapterEditorFormLayout({
    Key key,
    @required this.chapterEditorDatabaseMethods,
    @required this.chapterEditorDatabaseValidators,
  }) : super(key: key);

  /// @nodoc
  final ChapterEditorDatabaseMethods chapterEditorDatabaseMethods;

  /// @nodoc
  final ChapterEditorDatabaseValidators chapterEditorDatabaseValidators;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChapterEditorDatabaseBloc, ChapterEditorDatabaseState>(
      builder: (context, chapterEditorDatabaseState) {
        return Form(
          autovalidateMode: AutovalidateMode.always,
          child: ScrollConfiguration(
            behavior: const ScrollBehavior(),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Center(
                      child: Text(
                        // ignore: lines_longer_than_80_chars
                        'CHAPTER ${chapterEditorDatabaseState.chapterDraft.index}',
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: .5,
                        ),
                      ),
                    ),
                  ),
                  // SECTION cover
                  const WINETextFieldLabel(title: 'COVER'),
                  WINEEditorCover(
                    coverURL: chapterEditorDatabaseState.chapterCoverURL,
                    onPressed: chapterEditorDatabaseMethods.addCoverPressed,
                  ),
                  // SECTION title
                  WINEEditorTextFormField(
                    controller: chapterEditorDatabaseState.titleController,
                    label: 'TITLE*',
                    hintText:
                        'Less than ${Constants.seriesTitleMaxWords} words',
                    onChanged: chapterEditorDatabaseMethods.titleChanged,
                    validator: (_) =>
                        chapterEditorDatabaseValidators.titleValidator(),
                    wordCount:
                        '${chapterEditorDatabaseState.titleWordCount}/${Constants.seriesTitleMaxWords}',
                    wordCountError: chapterEditorDatabaseState.titleWordCount >
                        Constants.chapterTitleMaxWords,
                  ),
                  // SECTION story
                  WINEEditorTextFormField(
                    controller: chapterEditorDatabaseState.storyController,
                    label: 'STORY*',
                    hintText:
                        // ignore: lines_longer_than_80_chars
                        'More than ${Constants.chapterStoryMinWords} words and less than ${Constants.chapterStoryMaxWords} words',
                    maxLines: null,
                    onChanged: chapterEditorDatabaseMethods.storyChanged,
                    validator: (_) =>
                        chapterEditorDatabaseValidators.storyValidator(),
                    wordCount:
                        '${chapterEditorDatabaseState.storyWordCount}/${Constants.chapterStoryMaxWords}',
                    wordCountError: chapterEditorDatabaseState.storyWordCount <
                            Constants.chapterStoryMinWords ||
                        chapterEditorDatabaseState.storyWordCount >
                            Constants.chapterStoryMaxWords,
                  ),
                  // SECTION genre
                  if (!chapterEditorDatabaseState.isFirstChapter &&
                      !chapterEditorDatabaseState.isEditMode)
                    WINEEditorSelectorDialog(
                      hasSelected: chapterEditorDatabaseState.genreStr == '',
                      selections: genreKeys,
                      title: 'GENRE*',
                      dialogTitle: 'GENRE',
                      trailingText: chapterEditorDatabaseState.genreStr,
                      onPressed: (String value) =>
                          chapterEditorDatabaseMethods.selector(value, 'genre'),
                      onInfoPressed: () async =>
                          ExtendedNavigator.root.push(Routes.genresPage),
                      showErrorMessage:
                          chapterEditorDatabaseState.genreStr == '' &&
                              chapterEditorDatabaseState.showErrorMessages,
                    ),
                  // SECTION genre optional
                  if (!chapterEditorDatabaseState.isFirstChapter &&
                      !chapterEditorDatabaseState.isEditMode)
                    WINEEditorSelectorDialog(
                      hasSelected:
                          chapterEditorDatabaseState.genreOptionalStr == '',
                      selections: genreKeys,
                      title: 'GENRE (OPTIONAL)',
                      dialogTitle: 'GENRE (OPTIONAL)',
                      trailingText: chapterEditorDatabaseState.genreOptionalStr,
                      onPressed: (String value) => chapterEditorDatabaseMethods
                          .selector(value, 'genreOptional'),
                      onInfoPressed: () async =>
                          ExtendedNavigator.root.push(Routes.genresPage),
                    ),
                  // SECTION ADULT CONTENT
                  if (!chapterEditorDatabaseState.isFirstChapter &&
                      !chapterEditorDatabaseState.isEditMode)
                    WINESwitchListTile(
                      title: 'NSFW/ADULT CONTENT',
                      onInfoPressed: () {},
                      value: chapterEditorDatabaseState.isNSFW,
                      onChanged: (bool value) => chapterEditorDatabaseMethods
                          .isNSFWChanged(value: value),
                    ),
                  if (!chapterEditorDatabaseState.isFirstChapter &&
                      !chapterEditorDatabaseState.isEditMode)
                    const SizedBox(height: 25),
                  // SECTION language
                  if (!chapterEditorDatabaseState.isFirstChapter &&
                      !chapterEditorDatabaseState.isEditMode)
                    WINEEditorSelectorDialog(
                      hasSelected: chapterEditorDatabaseState.languageStr == '',
                      selections: languageKeys,
                      title: 'LANGUAGE*',
                      dialogTitle: 'LANGUAGE',
                      trailingText: chapterEditorDatabaseState.languageStr,
                      onPressed: (String value) => chapterEditorDatabaseMethods
                          .selector(value, 'language'),
                      showErrorMessage:
                          chapterEditorDatabaseState.languageStr == '' &&
                              chapterEditorDatabaseState.showErrorMessages,
                    ),
                  // SECTION copyright
                  WINEEditorSelectorDialog(
                    hasSelected: chapterEditorDatabaseState.copyrightsStr == '',
                    selections: copyrightKeys,
                    title: 'COPYRIGHTS*',
                    dialogTitle: 'COPYRIGHTS',
                    trailingText: chapterEditorDatabaseState.copyrightsStr,
                    onPressed: (String value) => chapterEditorDatabaseMethods
                        .selector(value, 'copyrights'),
                    onInfoPressed: () async =>
                        ExtendedNavigator.root.push(Routes.copyrightsPage),
                    showErrorMessage:
                        chapterEditorDatabaseState.copyrightsStr == '' &&
                            chapterEditorDatabaseState.showErrorMessages,
                  ),
                  // SECTION END THE SERIES
                  WINESwitchListTile(
                    title: 'LAST CHAPTER',
                    onInfoPressed: () {},
                    value: chapterEditorDatabaseState.isLastChapter,
                    onChanged: (bool value) => chapterEditorDatabaseMethods
                        .isLastChapterChanged(value: value),
                  ),
                  const SizedBox(height: 25),
                  if (chapterEditorDatabaseState.isEditMode)
                    WINEButton(
                      title: 'DELETE DRAFT',
                      color: Palettes.error,
                      onPressed: () => wineShowDialog(
                        context: context,
                        builder: (_) => WINEWarningDialog(
                          message: 'Do you really want to delete this draft?',
                          buttonText: 'CONTINUE',
                          onPressed: chapterEditorDatabaseMethods.deleteDraft,
                        ),
                      ),
                    ),
                  const SizedBox(height: 25),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
