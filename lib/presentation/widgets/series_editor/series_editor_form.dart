import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/series_editor/series_editor_database_bloc.dart';
import 'package:wine/presentation/routes/router.gr.dart';
import 'package:wine/presentation/utils/series_editor/series_editor_database_methods.dart';
import 'package:wine/presentation/utils/series_editor/series_editor_database_validators.dart';
import 'package:wine/presentation/widgets/dialog/wine_show_dialog.dart';
import 'package:wine/presentation/widgets/dialog/wine_warning_dialog.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_cover.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_selector_dialog.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_text_form_field.dart';
import 'package:wine/presentation/widgets/editor/wine_editor_top_title.dart';
import 'package:wine/presentation/widgets/wine_button.dart';
import 'package:wine/presentation/widgets/wine_switch_list_tile.dart';
import 'package:wine/presentation/widgets/wine_text_field_label.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/getters.dart';
import 'package:wine/utils/palette.dart';

/// @nodoc
class SeriesEditorForm extends StatelessWidget with Getters {
  /// @nodoc
  SeriesEditorForm({
    Key key,
    @required this.seriesEditorDatabaseMethods,
    @required this.seriesEditorDatabaseValidators,
  }) : super(key: key);

  /// @nodoc
  final SeriesEditorDatabaseMethods seriesEditorDatabaseMethods;

  /// @nodoc
  final SeriesEditorDatabaseValidators seriesEditorDatabaseValidators;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.always,
      child: ScrollConfiguration(
        behavior: const ScrollBehavior(),
        child: SingleChildScrollView(
          child:
              BlocBuilder<SeriesEditorDatabaseBloc, SeriesEditorDatabaseState>(
            builder: (context, seriesEditorDatabaseState) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const WINEEditorTopTitle(title: 'SERIES DETAILS'),
                  // SECTION cover
                  const WINETextFieldLabel(title: 'COVER'),
                  WINEEditorCover(
                    coverURL: seriesEditorDatabaseState.coverURL,
                    onPressed: seriesEditorDatabaseMethods.addCoverPressed,
                  ),
                  // SECTION title
                  WINEEditorTextFormField(
                    controller: seriesEditorDatabaseState.titleController,
                    label: 'TITLE*',
                    hintText:
                        'Less than ${Constants.seriesTitleMaxWords} words',
                    onChanged: seriesEditorDatabaseMethods.titleChanged,
                    validator: (_) =>
                        seriesEditorDatabaseValidators.titleValidator(),
                    wordCount:
                        '${seriesEditorDatabaseState.titleWordCount}/${Constants.seriesTitleMaxWords}',
                    wordCountError: seriesEditorDatabaseState.titleWordCount >
                        Constants.seriesTitleMaxWords,
                  ),
                  // SECTION subtitle
                  WINEEditorTextFormField(
                    controller: seriesEditorDatabaseState.subtitleController,
                    label: 'SUBTITLE (OPTIONAL)',
                    hintText:
                        'Less than ${Constants.seriesSubtitleMaxWords} words',
                    onChanged: seriesEditorDatabaseMethods.subtitleChanged,
                    validator: (_) =>
                        seriesEditorDatabaseValidators.subtitleValidator(),
                    wordCount:
                        '${seriesEditorDatabaseState.subtitleWordCount}/${Constants.seriesSubtitleMaxWords}',
                    wordCountError:
                        seriesEditorDatabaseState.subtitleWordCount >
                            Constants.seriesSubtitleMaxWords,
                  ),
                  // SECTION symmary
                  WINEEditorTextFormField(
                    controller: seriesEditorDatabaseState.summaryController,
                    label: 'SUMMARY*',
                    hintText:
                        'Less than ${Constants.seriesSummaryMaxWords} words',
                    keyboardType: TextInputType.multiline,
                    maxLines: 10,
                    onChanged: seriesEditorDatabaseMethods.summaryChanged,
                    validator: (_) =>
                        seriesEditorDatabaseValidators.summaryValidator(),
                    wordCount:
                        '${seriesEditorDatabaseState.summaryWordCount}/${Constants.seriesSummaryMaxWords}',
                    wordCountError: seriesEditorDatabaseState.summaryWordCount >
                        Constants.seriesSummaryMaxWords,
                  ),
                  // SECTION genre
                  WINEEditorSelectorDialog(
                    hasSelected: seriesEditorDatabaseState.genreStr == '',
                    selections: genreKeys,
                    title: 'GENRE*',
                    dialogTitle: 'GENRE',
                    trailingText: seriesEditorDatabaseState.genreStr,
                    onPressed: (String value) =>
                        seriesEditorDatabaseMethods.selector(value, 'genre'),
                    onInfoPressed: () async =>
                        ExtendedNavigator.root.push(Routes.genresPage),
                    showErrorMessage:
                        seriesEditorDatabaseState.genreStr == '' &&
                            seriesEditorDatabaseState.showErrorMessages,
                  ),
                  // SECTION genre optional
                  WINEEditorSelectorDialog(
                    hasSelected:
                        seriesEditorDatabaseState.genreOptionalStr == '',
                    selections: genreKeys,
                    title: 'GENRE (OPTIONAL)',
                    dialogTitle: 'GENRE (OPTIONAL)',
                    trailingText: seriesEditorDatabaseState.genreOptionalStr,
                    onPressed: (String value) => seriesEditorDatabaseMethods
                        .selector(value, 'genreOptional'),
                    onInfoPressed: () async =>
                        ExtendedNavigator.root.push(Routes.genresPage),
                  ),
                  // SECTION ADULT CONTENT
                  WINESwitchListTile(
                    title: 'NSFW/ADULT CONTENT',
                    onInfoPressed: () {},
                    value: seriesEditorDatabaseState.isNSFW,
                    onChanged: (bool value) =>
                        seriesEditorDatabaseMethods.isNSFWChanged(value: value),
                  ),
                  const SizedBox(height: 25),
                  // SECTION language
                  WINEEditorSelectorDialog(
                    hasSelected: seriesEditorDatabaseState.languageStr == '',
                    selections: languageKeys,
                    title: 'LANGUAGE*',
                    dialogTitle: 'LANGUAGE',
                    trailingText: seriesEditorDatabaseState.languageStr,
                    onPressed: (String value) =>
                        seriesEditorDatabaseMethods.selector(value, 'language'),
                    showErrorMessage:
                        seriesEditorDatabaseState.languageStr == '' &&
                            seriesEditorDatabaseState.showErrorMessages,
                  ),
                  // SECTION delete button
                  if (seriesEditorDatabaseState.isEditMode)
                    WINEButton(
                      title: 'DELETE DRAFT',
                      color: Palettes.error,
                      onPressed: () => wineShowDialog(
                        context: context,
                        builder: (_) => WINEWarningDialog(
                          message: 'Do you really want to delete this draft?',
                          buttonText: 'CONTINUE',
                          onPressed: seriesEditorDatabaseMethods.deleteDraft,
                        ),
                      ),
                    ),
                  const SizedBox(height: 25),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
