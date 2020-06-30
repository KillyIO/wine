import 'package:flutter/material.dart';

import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/presentation/pages/new_series/utils/new_series_database_methods.dart';
import 'package:wine/presentation/pages/new_series/utils/new_series_database_validators.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_cover.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_selector_dialog.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_text_form_field.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_top_title.dart';
import 'package:wine/presentation/widgets/wine_button.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/presentation/widgets/wine_switch_list_tile.dart';
import 'package:wine/presentation/widgets/wine_text_field_label.dart';
import 'package:wine/presentation/widgets/wine_warning_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/palettes.dart';

class NewSeriesForm extends StatelessWidget {
  final NewSeriesDatabaseState nsDbState;
  final NewSeriesDatabaseMethods nsDbMethods;
  final NewSeriesDatabaseValidators nsDbValidators;

  final TextEditingController titleController;
  final TextEditingController subtitleController;
  final TextEditingController summaryController;

  const NewSeriesForm({
    Key key,
    @required this.nsDbState,
    @required this.nsDbMethods,
    @required this.nsDbValidators,
    @required this.titleController,
    @required this.subtitleController,
    @required this.summaryController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidate: nsDbState.showErrorMessages,
      child: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const WINEEditorTopTitle(title: 'STORY DETAILS'),
              // SECTION cover
              const WINETextFieldLabel(title: 'COVER'),
              WINEEditorCover(coverUrl: nsDbState.coverUrl, onPressed: nsDbMethods.addCoverPressed),
              // SECTION title
              WINEEditorTextFormField(
                controller: titleController,
                label: 'TITLE*',
                hintText: 'Less than ${Constants.seriesTitleMaxWords} words',
                onChanged: nsDbMethods.titleChanged,
                validator: (_) => nsDbValidators.titleValidator(),
                wordCount: '${nsDbState.titleWordCount}/${Constants.seriesTitleMaxWords}',
                wordCountError: nsDbState.titleWordCount > Constants.seriesTitleMaxWords,
              ),
              // SECTION subtitle
              WINEEditorTextFormField(
                controller: subtitleController,
                label: 'SUBTITLE (OPTIONAL)',
                hintText: 'Less than ${Constants.seriesSubtitleMaxWords} words',
                onChanged: nsDbMethods.subtitleChanged,
                validator: (_) => nsDbValidators.subtitleValidator(),
                wordCount: '${nsDbState.subtitleWordCount}/${Constants.seriesSubtitleMaxWords}',
                wordCountError: nsDbState.subtitleWordCount > Constants.seriesSubtitleMaxWords,
              ),
              // SECTION symmary
              WINEEditorTextFormField(
                controller: summaryController,
                label: 'SUMMARY*',
                hintText: 'Less than ${Constants.seriesSummaryMaxWords} words',
                keyboardType: TextInputType.multiline,
                maxLines: 10,
                onChanged: nsDbMethods.summaryChanged,
                validator: (_) => nsDbValidators.summaryValidator(),
                wordCount: '${nsDbState.summaryWordCount}/${Constants.seriesSummaryMaxWords}',
                wordCountError: nsDbState.summaryWordCount > Constants.seriesSummaryMaxWords,
              ),
              // SECTION genre
              WINEEditorSelectorDialog(
                hasSelected: nsDbState.genreStr == '',
                selections: nsDbState.genresMap,
                title: 'GENRE*',
                dialogTitle: 'GENRE',
                trailingText: nsDbState.genresMap[nsDbState.genreStr],
                onPressed: (String value) => nsDbMethods.selector(value, 'genre'),
                onInfoPressed: () => sailor(Constants.genresRoute),
                showErrorMessage: nsDbState.genreStr == '' && nsDbState.showErrorMessages,
              ),
              // SECTION genre optional
              WINEEditorSelectorDialog(
                hasSelected: nsDbState.genreOptionalStr == '',
                selections: nsDbState.genresMap,
                title: 'GENRE (OPTIONAL)',
                dialogTitle: 'GENRE (OPTIONAL)',
                trailingText: nsDbState.genresMap[nsDbState.genreOptionalStr],
                onPressed: (String value) => nsDbMethods.selector(value, 'genreOptional'),
                onInfoPressed: () => sailor(Constants.genresRoute),
              ),
              // SECTION ADULT CONTENT
              WINESwitchListTile(
                title: 'NSFW/ADULT CONTENT',
                onInfoPressed: () {},
                value: nsDbState.isNSFW,
                onChanged: (bool value) => nsDbMethods.isNSFWChanged(value: value),
              ),
              const SizedBox(height: 25),
              // SECTION language
              WINEEditorSelectorDialog(
                hasSelected: nsDbState.languageStr == '',
                selections: nsDbState.languagesMap,
                title: 'LANGUAGE*',
                dialogTitle: 'LANGUAGE',
                trailingText: nsDbState.languagesMap[nsDbState.languageStr],
                onPressed: (String value) => nsDbMethods.selector(value, 'language'),
                showErrorMessage: nsDbState.languageStr == '' && nsDbState.showErrorMessages,
              ),
              // SECTION delete button
              if (nsDbState.isEditMode)
                WINEButton(
                  title: 'DELETE DRAFT',
                  color: Palettes.error,
                  onPressed: () => wineShowDialog(
                    context: context,
                    builder: (_) => WINEWarningDialog(
                      message: 'Do you really want to delete this draft?',
                      buttonText: 'CONTINUE',
                      onPressed: nsDbMethods.deleteDraft,
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
