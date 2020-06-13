import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/widgets/wine_dialog_list_tile.dart';
import 'package:wine/presentation/widgets/wine_error_dialog.dart';
import 'package:wine/presentation/widgets/wine_leading_image_button.dart';
import 'package:wine/presentation/widgets/wine_selection_dialog.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/presentation/widgets/wine_switch_list_tile.dart';
import 'package:wine/presentation/widgets/wine_text_field_label.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/methods.dart';
import 'package:wine/utils/palettes.dart';

class NewChapterForm extends StatefulWidget {
  final NewChapterPageArgs args;

  const NewChapterForm({
    Key key,
    this.args,
  }) : super(key: key);

  @override
  _NewChapterFormState createState() => _NewChapterFormState();
}

class _NewChapterFormState extends State<NewChapterForm>
    with TickerProviderStateMixin {
  Future<bool> _onWillPop() async {
    final bool canPop = Navigator.of(context).canPop();

    if (canPop) {
      final bool isFirstChapter =
          context.bloc<NewChapterDatabaseBloc>().state.isFirstChapter;

      if (isFirstChapter) {
        context
            .bloc<HomeNavigationBloc>()
            .add(const HomeNavigationEvent.newSeriesIconPressed(
              isNewSeriesPageOpen: false,
            ));
      }
      _saveOrBackButtonPressed();
    }
    return canPop;
  }

  void _saveOrBackButtonPressed() {
    context
        .bloc<NewChapterDatabaseBloc>()
        .add(const NewChapterDatabaseEvent.saveOrBackButtonPressed());
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

  void _addCoverPressed() {
    context
        .bloc<NewChapterDatabaseBloc>()
        .add(const NewChapterDatabaseEvent.addCoverPressed());
  }

  void _genreSelected(String genre) {
    context.bloc<NewChapterDatabaseBloc>().add(GenreSelected(genre));
    Navigator.of(context).pop(true);
  }

  void _genreOptionalSelected(String genreOptional) {
    context
        .bloc<NewChapterDatabaseBloc>()
        .add(GenreOptionalSelected(genreOptional));
    Navigator.of(context).pop(true);
  }

  void _languageSelected(String language) {
    context.bloc<NewChapterDatabaseBloc>().add(LanguageSelected(language));
    Navigator.of(context).pop(true);
  }

  void _copyrightSelected(String copyrights) {
    context.bloc<NewChapterDatabaseBloc>().add(CopyrightsSelected(copyrights));
    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final Size mediaQuery = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: _onWillPop,
      child: BlocConsumer<NewChapterDatabaseBloc, NewChapterDatabaseState>(
        listener: (context, state) {
          state.databaseFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (failure) => failure.maybeMap(
                failedToCreateOnlineData: (_) => wineShowDialog(
                  context: context,
                  builder: (_) => WINEErrorDialog(
                    message:
                        'Failed to save data on your device! Please retry.',
                    onPressed: () => Navigator.of(context).pop(true),
                  ),
                ),
                failedToCreateLocalData: null,
                failedToRetrieveLocalData: null,
                failedToUpdateLocalData: null,
                failedToDeleteLocalData: null,
                orElse: null,
              ),
              (success) {
                if (state.isPublishedOrSaved) {
                  if (state.isFirstChapter) {
                    sailor.navigate(
                      widget.args.routeBack,
                      navigationType: NavigationType.pushAndRemoveUntil,
                      removeUntilPredicate: (_) => false,
                    );

                    context.bloc<HomeNavigationBloc>().add(
                        const HomeNavigationEvent.resetHomeNavigationBloc());
                  } else {
                    sailor.navigate(
                      widget.args.routeBack,
                      args: ChapterPageArgs(
                        chapter: widget.args.previousChapter,
                      ),
                      navigationType: NavigationType.pushAndRemoveUntil,
                      removeUntilPredicate: ModalRoute.withName(
                        widget.args.predicateRoute,
                      ),
                    );
                  }
                }
              },
            ),
          );
        },
        builder: (context, ncDbState) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(41.5),
              child: AppBar(
                actions: <Widget>[
                  FlatButton(
                    disabledTextColor: Colors.black26,
                    highlightColor: Colors.transparent,
                    onPressed: () => context.bloc<NewChapterDatabaseBloc>().add(
                        const NewChapterDatabaseEvent.publishButtonPressed()),
                    splashColor: Colors.transparent,
                    textColor: Colors.black,
                    child: Text(
                      'PUBLISH',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  FlatButton(
                    disabledTextColor: Colors.black26,
                    highlightColor: Colors.transparent,
                    onPressed: _saveOrBackButtonPressed,
                    splashColor: Colors.transparent,
                    textColor: Colors.black,
                    child: Text(
                      'SAVE',
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
                    onPressed: _saveOrBackButtonPressed,
                  ),
                ),
              ),
            ),
            body: SafeArea(
              child: Stack(
                children: <Widget>[
                  Form(
                    autovalidate: ncDbState.showErrorMessages,
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
                            Stack(
                              children: <Widget>[
                                Container(
                                  width: mediaQuery.width,
                                  height: 150.0,
                                  child: _getCoverWidget(ncDbState.coverUrl),
                                ),
                                GestureDetector(
                                  onTap: _addCoverPressed,
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
                                  .bloc<NewChapterDatabaseBloc>()
                                  .add(
                                    NewChapterDatabaseEvent.titleChanged(value),
                                  ),
                              validator: (_) => context
                                  .bloc<NewChapterDatabaseBloc>()
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
                                '${ncDbState.titleWordCount}/${Constants.chapterTitleMaxWords}',
                                style: TextStyle(
                                  color: ncDbState.titleWordCount >
                                          Constants.chapterTitleMaxWords
                                      ? Palettes.error
                                      : Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            // SECTION story
                            const WINETextFieldLabel(title: 'STORY*'),
                            TextFormField(
                              textCapitalization: TextCapitalization.sentences,
                              decoration: InputDecoration(
                                hintText:
                                    'More than ${Constants.chapterStoryMinWords} words and less than ${Constants.chapterStoryMaxWords} words',
                                contentPadding: const EdgeInsets.only(
                                  left: 20.0,
                                  right: 20.0,
                                  bottom: 10.0,
                                ),
                                enabledBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                focusedBorder: const UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                errorStyle: TextStyle(
                                  color: Palettes.error,
                                ),
                              ),
                              cursorColor: Colors.black,
                              maxLines: null,
                              onChanged: (value) => context
                                  .bloc<NewChapterDatabaseBloc>()
                                  .add(
                                    NewChapterDatabaseEvent.storyChanged(value),
                                  ),
                              validator: (_) => context
                                  .bloc<NewChapterDatabaseBloc>()
                                  .state
                                  .story
                                  .value
                                  .fold(
                                    (f) => f.maybeMap(
                                        emptyInput: (_) =>
                                            'The title must not be empty.',
                                        shortInput: (_) =>
                                            'The story must be more than ${Constants.chapterStoryMinWords} words long.',
                                        longInput: (_) =>
                                            'The story must be less than ${Constants.chapterStoryMinWords} words long.',
                                        orElse: () => null),
                                    (_) => null,
                                  ),
                            ),
                            const SizedBox(height: 5),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Text(
                                '${ncDbState.storyWordCount}/${Constants.chapterStoryMaxWords}',
                                style: TextStyle(
                                  color: ncDbState.storyWordCount <
                                              Constants.chapterStoryMinWords ||
                                          ncDbState.storyWordCount >
                                              Constants.chapterStoryMaxWords
                                      ? Palettes.error
                                      : Colors.black,
                                ),
                              ),
                            ),
                            const SizedBox(height: 25),
                            // SECTION genre
                            if (!ncDbState.isFirstChapter)
                              WINEDialogListTile(
                                hasSelected: ncDbState.genreStr == '',
                                onPressed: () {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  wineShowDialog(
                                    context: context,
                                    builder: (_) => WINESelectionDialog(
                                      title: 'GENRE',
                                      selections: ncDbState.genresMap,
                                      onPressed: _genreSelected,
                                      onInfoPressed: () => sailor(
                                        Constants.genresRoute,
                                      ),
                                    ),
                                  );
                                },
                                title: 'GENRE*',
                                trailingText:
                                    ncDbState.genresMap[ncDbState.genreStr],
                              ),
                            if (!ncDbState.isFirstChapter)
                              const SizedBox(height: 5),
                            if (ncDbState.genreStr == '' &&
                                ncDbState.showErrorMessages)
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  'Required.',
                                  style: TextStyle(
                                    color: Palettes.error,
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                            if (!ncDbState.isFirstChapter)
                              const SizedBox(height: 25),
                            // SECTION genre optional
                            if (!ncDbState.isFirstChapter)
                              WINEDialogListTile(
                                hasSelected: ncDbState.genreOptionalStr == '',
                                onPressed: () {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  wineShowDialog(
                                    context: context,
                                    builder: (_) => WINESelectionDialog(
                                      title: 'GENRE (OPTIONAL)',
                                      selections: ncDbState.genresMap,
                                      onPressed: _genreOptionalSelected,
                                      onInfoPressed: () => sailor(
                                        Constants.genresRoute,
                                      ),
                                    ),
                                  );
                                },
                                title: 'GENRE (OPTIONAL)',
                                trailingText: ncDbState
                                    .genresMap[ncDbState.genreOptionalStr],
                              ),
                            if (!ncDbState.isFirstChapter)
                              const SizedBox(height: 25),
                            // SECTION ADULT CONTENT
                            if (!ncDbState.isFirstChapter)
                              WINESwitchListTile(
                                title: 'NSFW/ADULT CONTENT',
                                onInfoPressed: () {},
                                value: ncDbState.isNSFW,
                                onChanged: (value) => context
                                    .bloc<NewChapterDatabaseBloc>()
                                    .add(NewChapterDatabaseEvent.isNSFWChanged(
                                      isNSFW: value,
                                    )),
                              ),
                            if (!ncDbState.isFirstChapter)
                              const SizedBox(height: 25),
                            // SECTION language
                            if (!ncDbState.isFirstChapter)
                              WINEDialogListTile(
                                hasSelected: ncDbState.languageStr == '',
                                onPressed: () {
                                  FocusScope.of(context)
                                      .requestFocus(FocusNode());
                                  wineShowDialog(
                                    context: context,
                                    builder: (_) => WINESelectionDialog(
                                      title: 'LANGUAGE',
                                      selections: ncDbState.languagesMap,
                                      onPressed: _languageSelected,
                                    ),
                                  );
                                },
                                title: 'LANGUAGE*',
                                trailingText: ncDbState
                                    .languagesMap[ncDbState.languageStr],
                              ),
                            if (!ncDbState.isFirstChapter)
                              const SizedBox(height: 5),
                            if (ncDbState.languageStr == '' &&
                                ncDbState.showErrorMessages)
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  'Required.',
                                  style: TextStyle(
                                    color: Palettes.error,
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                            if (!ncDbState.isFirstChapter)
                              const SizedBox(height: 25),
                            // SECTION copyright
                            WINEDialogListTile(
                              hasSelected: ncDbState.copyrightsStr == '',
                              onPressed: () {
                                FocusScope.of(context)
                                    .requestFocus(FocusNode());
                                wineShowDialog(
                                  context: context,
                                  builder: (_) => WINESelectionDialog(
                                    title: 'COPYRIGHTS',
                                    selections: ncDbState.copyrightsMap,
                                    onPressed: _copyrightSelected,
                                    onInfoPressed: () => sailor(
                                      Constants.copyrightsRoute,
                                    ),
                                  ),
                                );
                              },
                              title: 'COPYRIGHTS*',
                              trailingText: ncDbState
                                  .copyrightsMap[ncDbState.copyrightsStr],
                            ),
                            const SizedBox(height: 5),
                            if (ncDbState.copyrightsStr == '' &&
                                ncDbState.showErrorMessages)
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0),
                                child: Text(
                                  'Required.',
                                  style: TextStyle(
                                    color: Palettes.error,
                                    fontSize: 13.0,
                                  ),
                                ),
                              ),
                            const SizedBox(height: 25),
                            // SECTION END THE SERIES
                            WINESwitchListTile(
                              title: 'END THE SERIES',
                              onInfoPressed: () {},
                              value: ncDbState.isEnd,
                              onChanged: (value) => context
                                  .bloc<NewChapterDatabaseBloc>()
                                  .add(NewChapterDatabaseEvent.isEndChanged(
                                    isEnd: value,
                                  )),
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
                        height: ncDbState.isPublishingOrSaving
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
