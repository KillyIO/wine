import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';

import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/domain/enums/parent_type.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/presentation/widgets/wine_dialog_list_tile.dart';
import 'package:wine/presentation/widgets/wine_info_dialog.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/presentation/widgets/wine_selection_dialog.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/presentation/widgets/wine_switch_list_tile.dart';
import 'package:wine/presentation/widgets/wine_text_field_label.dart';
import 'package:wine/presentation/widgets/wine_warning_dialog.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/methods.dart';
import 'package:wine/utils/palettes.dart';

class NewSeriesForm extends StatefulWidget {
  final NewSeriesPageArgs args;

  const NewSeriesForm({
    Key key,
    this.args,
  }) : super(key: key);

  @override
  _NewSeriesFormState createState() => _NewSeriesFormState();
}

class _NewSeriesFormState extends State<NewSeriesForm>
    with TickerProviderStateMixin {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _subtitleController = TextEditingController();
  final TextEditingController _summaryController = TextEditingController();

  Future<bool> _onWillPop() async {
    final bool canPop = Navigator.of(context).canPop();

    if (canPop) {
      FocusScope.of(context).requestFocus(FocusNode());
      if (!context.bloc<NewSeriesDatabaseBloc>().state.isEditMode) {
        context
            .bloc<HomeNavigationBloc>()
            .add(const HomeNavigationEvent.newSeriesIconPressed(
              isNewSeriesPageOpen: false,
            ));
      }
    }
    return canPop;
  }

  void _backButtonPressed(bool isEditMode) {
    FocusScope.of(context).requestFocus(FocusNode());
    if (!isEditMode) {
      context
          .bloc<HomeNavigationBloc>()
          .add(const HomeNavigationEvent.newSeriesIconPressed(
            isNewSeriesPageOpen: false,
          ));
    }
    Navigator.of(context).pop();
  }

  void _saveSeriesDraftButtonPressed() {
    context
        .bloc<NewSeriesDatabaseBloc>()
        .add(const NewSeriesDatabaseEvent.saveSeriesDraftButtonPressed());
  }

  Widget _getCoverWidget(String coverUrl) {
    if (coverUrl.isEmpty) {
      return Container();
    } else {
      return Methods.isUrl(coverUrl)
          ? Image.network(
              coverUrl,
              fit: BoxFit.fitWidth,
            )
          : Image.file(
              File(coverUrl),
              fit: BoxFit.fitWidth,
            );
    }
  }

  void _genreSelected(String genre) {
    context.bloc<NewSeriesDatabaseBloc>().add(GenreSelected(genre));
    Navigator.of(context).pop(true);
  }

  void _genreOptionalSelected(String genreOptional) {
    context
        .bloc<NewSeriesDatabaseBloc>()
        .add(GenreOptionalSelected(genreOptional));
    Navigator.of(context).pop(true);
  }

  void _languageSelected(String language) {
    context.bloc<NewSeriesDatabaseBloc>().add(LanguageSelected(language));
    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: _onWillPop,
      child: BlocConsumer<NewSeriesDatabaseBloc, NewSeriesDatabaseState>(
        listener: (context, state) {
          state.databaseFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (_) {},
              (success) {
                if (state.isEditMode) {
                  Navigator.of(context).pop();
                } else {
                  if (success is SeriesDraft) {
                    sailor.navigate(
                      Constants.newChapterRoute,
                      navigationType: NavigationType.pushReplace,
                      args: NewChapterPageArgs(
                        parentType: ParentType.series,
                        seriesDraft: success,
                        routeBack: Constants.homeRoute,
                      ),
                    );
                  }
                }
              },
            ),
          );
        },
        builder: (context, nsDbState) {
          _titleController.value =
              _titleController.value.copyWith(text: nsDbState.titleStr);

          _subtitleController.value =
              _subtitleController.value.copyWith(text: nsDbState.subtitleStr);

          _summaryController.value =
              _summaryController.value.copyWith(text: nsDbState.summaryStr);

          return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(41.5),
              child: AppBar(
                actions: <Widget>[
                  FlatButton(
                    disabledTextColor: Colors.black26,
                    highlightColor: Colors.transparent,
                    onPressed: () => nsDbState.isEditMode
                        ? _saveSeriesDraftButtonPressed()
                        : wineShowDialog(
                            context: context,
                            builder: (_) => WINEInfoDialog(
                              message:
                                  'This series will be available to the community once you publish the first chapter.',
                              buttonText: 'GOT IT!',
                              onPressed: () {
                                _saveSeriesDraftButtonPressed();
                                Navigator.of(context).pop(true);
                              },
                            ),
                          ),
                    splashColor: Colors.transparent,
                    textColor: Colors.black,
                    child: Text(
                      nsDbState.isEditMode ? 'SAVE' : 'CREATE SERIES',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
                backgroundColor: Colors.transparent,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(0.0),
                  child: Container(
                    color: Colors.black,
                    height: 2.0,
                  ),
                ),
                brightness: Brightness.light,
                centerTitle: true,
                elevation: 0.0,
                leading: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  child: WINELeadingImageButton(
                    imagePath: 'assets/img/back_button.png',
                    onPressed: () => _backButtonPressed(nsDbState.isEditMode),
                  ),
                ),
              ),
            ),
            body: SafeArea(
              child: Stack(
                children: <Widget>[
                  Form(
                    autovalidate: nsDbState.showErrorMessages,
                    child: ScrollConfiguration(
                      behavior: const ScrollBehavior(),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 25.0),
                              child: Center(
                                child: Text(
                                  'STORY DETAILS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
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
                            Stack(
                              children: <Widget>[
                                Container(
                                  width: mediaQuery.width,
                                  height: 150.0,
                                  child: _getCoverWidget(nsDbState.coverUrl),
                                ),
                                GestureDetector(
                                  onTap: () => context
                                      .bloc<NewSeriesDatabaseBloc>()
                                      .add(const NewSeriesDatabaseEvent
                                          .addCoverPressed()),
                                  child: Container(
                                    width: mediaQuery.width,
                                    height: 150.0,
                                    color: Colors.white60,
                                    child: Icon(
                                      Icons.camera_alt,
                                      color: Colors.black38,
                                      size: 40.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            // SECTION title
                            const WINETextFieldLabel(title: 'TITLE*'),
                            TextFormField(
                              controller: _titleController,
                              textCapitalization: TextCapitalization.sentences,
                              decoration: InputDecoration(
                                hintText:
                                    'Less than ${Constants.seriesTitleMaxWords} words',
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black26,
                                    width: 2.0,
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2.0,
                                  ),
                                ),
                                errorStyle: TextStyle(
                                  color: Palettes.error,
                                ),
                              ),
                              cursorColor: Colors.black,
                              onChanged: (value) => context
                                  .bloc<NewSeriesDatabaseBloc>()
                                  .add(
                                    NewSeriesDatabaseEvent.titleChanged(value),
                                  ),
                              validator: (_) => context
                                  .bloc<NewSeriesDatabaseBloc>()
                                  .state
                                  .title
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                        emptyInput: (_) =>
                                            'The title must not be empty.',
                                        longInput: (_) =>
                                            'The title must be lass than 10 words long.',
                                        orElse: () => null),
                                    (_) => null,
                                  ),
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                '${nsDbState.titleWordCount}/${Constants.seriesTitleMaxWords}',
                                style: TextStyle(
                                  color: nsDbState.titleWordCount >
                                          Constants.seriesTitleMaxWords
                                      ? Palettes.error
                                      : Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            // SECTION subtitle
                            const WINETextFieldLabel(
                              title: 'SUBTITLE (OPTIONAL)',
                            ),
                            TextFormField(
                              controller: _subtitleController,
                              textCapitalization: TextCapitalization.sentences,
                              decoration: InputDecoration(
                                hintText:
                                    'Less than ${Constants.seriesSubtitleMaxWords} words',
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black26,
                                    width: 2.0,
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2.0,
                                  ),
                                ),
                                errorStyle: TextStyle(
                                  color: Palettes.error,
                                ),
                              ),
                              cursorColor: Colors.black,
                              onChanged: (value) =>
                                  context.bloc<NewSeriesDatabaseBloc>().add(
                                        NewSeriesDatabaseEvent.subtitleChanged(
                                            value),
                                      ),
                              validator: (_) => context
                                  .bloc<NewSeriesDatabaseBloc>()
                                  .state
                                  .subtitle
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                        longInput: (_) =>
                                            'The title must be less than 10 words long.',
                                        orElse: () => null),
                                    (_) => null,
                                  ),
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                '${nsDbState.subtitleWordCount}/${Constants.seriesSubtitleMaxWords}',
                              ),
                            ),
                            const SizedBox(height: 25),
                            // SECTION symmary
                            const WINETextFieldLabel(title: 'SUMMARY*'),
                            TextFormField(
                              controller: _summaryController,
                              textCapitalization: TextCapitalization.sentences,
                              decoration: InputDecoration(
                                hintText:
                                    'Less than ${Constants.seriesSummaryMaxWords} words',
                                contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20.0,
                                ),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.black26,
                                    width: 2.0,
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    width: 2.0,
                                  ),
                                ),
                                errorStyle: TextStyle(
                                  color: Palettes.error,
                                ),
                              ),
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.multiline,
                              maxLines: 10,
                              onChanged: (value) =>
                                  context.bloc<NewSeriesDatabaseBloc>().add(
                                        NewSeriesDatabaseEvent.summaryChanged(
                                            value),
                                      ),
                              validator: (_) => context
                                  .bloc<NewSeriesDatabaseBloc>()
                                  .state
                                  .summary
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                        emptyInput: (_) =>
                                            'The summary must not be empty.',
                                        longInput: (_) =>
                                            'The summary must be less than 200 words long.',
                                        orElse: () => null),
                                    (_) => null,
                                  ),
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                '${nsDbState.summaryWordCount}/${Constants.seriesSummaryMaxWords}',
                              ),
                            ),
                            const SizedBox(height: 25),
                            // SECTION genre
                            WINEDialogListTile(
                              hasSelected: nsDbState.genreStr == '',
                              onPressed: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                                wineShowDialog(
                                  context: context,
                                  builder: (_) => WINESelectionDialog(
                                    title: 'GENRE',
                                    selections: nsDbState.genresMap,
                                    onPressed: _genreSelected,
                                    onInfoPressed: () => sailor(
                                      Constants.genresRoute,
                                    ),
                                  ),
                                );
                              },
                              title: 'GENRE*',
                              trailingText:
                                  nsDbState.genresMap[nsDbState.genreStr],
                            ),
                            const SizedBox(height: 5),
                            Visibility(
                              visible: nsDbState.genreStr == '' &&
                                  nsDbState.showErrorMessages,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  'Required.',
                                  style: TextStyle(
                                    color: Palettes.error,
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            // SECTION genre optional
                            WINEDialogListTile(
                              hasSelected: nsDbState.genreOptionalStr == '',
                              onPressed: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                                wineShowDialog(
                                  context: context,
                                  builder: (_) => WINESelectionDialog(
                                    title: 'GENRE (OPTIONAL)',
                                    selections: nsDbState.genresMap,
                                    onPressed: _genreOptionalSelected,
                                    onInfoPressed: () => sailor(
                                      Constants.genresRoute,
                                    ),
                                  ),
                                );
                              },
                              title: 'GENRE (OPTIONAL)',
                              trailingText: nsDbState
                                  .genresMap[nsDbState.genreOptionalStr],
                            ),
                            const SizedBox(height: 25),
                            // SECTION ADULT CONTENT
                            WINESwitchListTile(
                              title: 'NSFW',
                              onInfoPressed: () {},
                              value: nsDbState.isNSFW,
                              onChanged: (value) => context
                                  .bloc<NewSeriesDatabaseBloc>()
                                  .add(NewSeriesDatabaseEvent.isNSFWChanged(
                                    isNSFW: value,
                                  )),
                            ),
                            const SizedBox(height: 25),
                            // SECTION language
                            WINEDialogListTile(
                              hasSelected: nsDbState.languageStr == '',
                              onPressed: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                                wineShowDialog(
                                  context: context,
                                  builder: (_) => WINESelectionDialog(
                                    title: 'LANGUAGE',
                                    selections: nsDbState.languagesMap,
                                    onPressed: _languageSelected,
                                  ),
                                );
                              },
                              title: 'LANGUAGE*',
                              trailingText:
                                  nsDbState.languagesMap[nsDbState.languageStr],
                            ),
                            const SizedBox(height: 5),
                            Visibility(
                              visible: nsDbState.languageStr == '' &&
                                  nsDbState.showErrorMessages,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  'Required.',
                                  style: TextStyle(
                                    color: Palettes.error,
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            Visibility(
                              visible: nsDbState.isEditMode,
                              child: Container(
                                height: 60.0,
                                width: double.infinity,
                                child: FlatButton(
                                  color: Palettes.error,
                                  onPressed: () => wineShowDialog(
                                    context: context,
                                    builder: (_) => WINEWarningDialog(
                                      message:
                                          'Do you really want to delete this draft?',
                                      buttonText: 'CONTINUE',
                                      onPressed: () {
                                        context
                                            .bloc<NewSeriesDatabaseBloc>()
                                            .add(const NewSeriesDatabaseEvent
                                                .deleteDraftButtonPressed());
                                        Navigator.of(context).pop(true);
                                      },
                                    ),
                                  ),
                                  child: Text(
                                    'DELETE DRAFT',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: AnimatedSize(
                      duration: const Duration(milliseconds: 200),
                      vsync: this,
                      child: Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width,
                        height: nsDbState.isCreatingOrDeleting
                            ? MediaQuery.of(context).size.height
                            : 0.0,
                        child: const Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
