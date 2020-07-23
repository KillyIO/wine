import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/presentation/pages/new_chapter/utils/new_chapter_database_methods.dart';
import 'package:wine/presentation/pages/new_chapter/utils/new_chapter_database_validators.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_cover.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_selector_dialog.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_text_form_field.dart';
import 'package:wine/presentation/widgets/wine_button.dart';
import 'package:wine/presentation/widgets/dialog/wine_show_dialog.dart';
import 'package:wine/presentation/widgets/wine_switch_list_tile.dart';
import 'package:wine/presentation/widgets/wine_text_field_label.dart';
import 'package:wine/presentation/widgets/dialog/wine_warning_dialog.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';

class NewChapterForm extends StatelessWidget {
  final NewChapterDatabaseState ncDbState;
  final NewChapterDatabaseMethods ncDbMethods;
  final NewChapterDatabaseValidators ncDbValidators;

  const NewChapterForm({
    Key key,
    @required this.ncDbState,
    @required this.ncDbMethods,
    @required this.ncDbValidators,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidate: ncDbState.showErrorMessages,
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
                    'CHAPTER ${ncDbState.chapterDraft.index}',
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
              WINEEditorCover(coverUrl: ncDbState.coverUrl, onPressed: ncDbMethods.addCoverPressed),
              // SECTION title
              WINEEditorTextFormField(
                controller: ncDbState.titleController,
                label: 'TITLE*',
                hintText: 'Less than ${Constants.seriesTitleMaxWords} words',
                onChanged: ncDbMethods.titleChanged,
                validator: (_) => ncDbValidators.titleValidator(),
                wordCount: '${ncDbState.titleWordCount}/${Constants.seriesTitleMaxWords}',
                wordCountError: ncDbState.titleWordCount > Constants.chapterTitleMaxWords,
              ),
              // SECTION story
              WINEEditorTextFormField(
                controller: ncDbState.storyController,
                label: 'STORY*',
                hintText:
                    'More than ${Constants.chapterStoryMinWords} words and less than ${Constants.chapterStoryMaxWords} words',
                maxLines: null,
                onChanged: ncDbMethods.storyChanged,
                validator: (_) => ncDbValidators.storyValidator(),
                wordCount: '${ncDbState.storyWordCount}/${Constants.chapterStoryMaxWords}',
                wordCountError: ncDbState.storyWordCount < Constants.chapterStoryMinWords ||
                    ncDbState.storyWordCount > Constants.chapterStoryMaxWords,
              ),
              // SECTION genre
              if (!ncDbState.isFirstChapter)
                WINEEditorSelectorDialog(
                  hasSelected: ncDbState.genreStr == '',
                  selections: ncDbState.genresMap,
                  title: 'GENRE*',
                  dialogTitle: 'GENRE',
                  trailingText: ncDbState.genresMap[ncDbState.genreStr],
                  onPressed: (String value) => ncDbMethods.selector(value, 'genre'),
                  onInfoPressed: () async => ExtendedNavigator.root.push(Routes.genresPage),
                  showErrorMessage: ncDbState.genreStr == '' && ncDbState.showErrorMessages,
                ),
              // SECTION genre optional
              if (!ncDbState.isFirstChapter)
                WINEEditorSelectorDialog(
                  hasSelected: ncDbState.genreOptionalStr == '',
                  selections: ncDbState.genresMap,
                  title: 'GENRE (OPTIONAL)',
                  dialogTitle: 'GENRE (OPTIONAL)',
                  trailingText: ncDbState.genresMap[ncDbState.genreOptionalStr],
                  onPressed: (String value) => ncDbMethods.selector(value, 'genreOptional'),
                  onInfoPressed: () async => ExtendedNavigator.root.push(Routes.genresPage),
                ),
              // SECTION ADULT CONTENT
              if (!ncDbState.isFirstChapter)
                WINESwitchListTile(
                  title: 'NSFW/ADULT CONTENT',
                  onInfoPressed: () {},
                  value: ncDbState.isNSFW,
                  onChanged: (bool value) => ncDbMethods.isNSFWChanged(value: value),
                ),
              if (!ncDbState.isFirstChapter)
                const SizedBox(height: 25),
              // SECTION language
              if (!ncDbState.isFirstChapter)
                WINEEditorSelectorDialog(
                  hasSelected: ncDbState.languageStr == '',
                  selections: ncDbState.languagesMap,
                  title: 'LANGUAGE*',
                  dialogTitle: 'LANGUAGE',
                  trailingText: ncDbState.languagesMap[ncDbState.languageStr],
                  onPressed: (String value) => ncDbMethods.selector(value, 'language'),
                  showErrorMessage: ncDbState.languageStr == '' && ncDbState.showErrorMessages,
                ),
              // SECTION copyright
              WINEEditorSelectorDialog(
                hasSelected: ncDbState.copyrightsStr == '',
                selections: ncDbState.copyrightsMap,
                title: 'COPYRIGHTS*',
                dialogTitle: 'COPYRIGHTS',
                trailingText: ncDbState.copyrightsMap[ncDbState.copyrightsStr],
                onPressed: (String value) => ncDbMethods.selector(value, 'copyrights'),
                onInfoPressed: () async => ExtendedNavigator.root.push(Routes.copyrightsPage),
                showErrorMessage: ncDbState.copyrightsStr == '' && ncDbState.showErrorMessages,
              ),
              // SECTION END THE SERIES
              WINESwitchListTile(
                title: 'END THE SERIES',
                onInfoPressed: () {},
                value: ncDbState.isEnd,
                onChanged: (bool value) => ncDbMethods.isEndChanged(value: value),
              ),
              const SizedBox(height: 25),
              if (ncDbState.isEditMode)
                WINEButton(
                  title: 'DELETE DRAFT',
                  color: Palettes.error,
                  onPressed: () => wineShowDialog(
                    context: context,
                    builder: (_) => WINEWarningDialog(
                      message: 'Do you really want to delete this draft?',
                      buttonText: 'CONTINUE',
                      onPressed: ncDbMethods.deleteDraft,
                    ),
                  ),
                ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
