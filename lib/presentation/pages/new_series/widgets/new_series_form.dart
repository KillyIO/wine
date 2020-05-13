import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/domain/enums/parent_type.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/domain/models/series.dart';
import 'package:wine/presentation/widgets/wine_dialog_list_tile.dart';
import 'package:wine/presentation/widgets/wine_info_dialog.dart';
import 'package:wine/presentation/widgets/wine_show_dialog.dart';
import 'package:wine/presentation/widgets/wine_image_back_button.dart';
import 'package:wine/presentation/widgets/wine_selection_dialog.dart';
import 'package:wine/presentation/widgets/wine_switch_list_tile.dart';
import 'package:wine/presentation/widgets/wine_text_field_label.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';
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
  Future<bool> _onWillPop() async {
    final bool canPop = Navigator.of(context).canPop();

    if (canPop) {
      FocusScope.of(context).requestFocus(FocusNode());
      context
          .bloc<HomeNavigationBloc>()
          .add(const HomeNavigationEvent.newSeriesIconPressed(
            isNewSeriesPageOpen: false,
          ));
    }
    return canPop;
  }

  void _backButtonPressed() {
    FocusScope.of(context).requestFocus(FocusNode());
    context
        .bloc<HomeNavigationBloc>()
        .add(const HomeNavigationEvent.newSeriesIconPressed(
          isNewSeriesPageOpen: false,
        ));
    Navigator.of(context).pop();
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
    return WillPopScope(
      onWillPop: _onWillPop,
      child: BlocConsumer<NewSeriesDatabaseBloc, NewSeriesDatabaseState>(
        listener: (context, state) {
          state.databaseFailureOrSuccessOption.fold(
            () {},
            (some) => some.fold(
              (_) {},
              (success) {
                if (success is SeriesDraft) {
                  sailor.navigate(
                    Constants.newChapterRoute,
                    navigationType: NavigationType.pushReplace,
                    args: NewChapterPageArgs(
                      parentType: ParentType.series,
                      seriesDraft: success,
                    ),
                  );
                }
              },
            ),
          );
        },
        builder: (context, nsDbState) {
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
                        ? context.bloc<NewSeriesDatabaseBloc>().add(
                            const NewSeriesDatabaseEvent
                                .saveSeriesDraftButtonPressed())
                        : wineShowDialog(
                            context: context,
                            builder: (_) => WINEInfoDialog(
                              message:
                                  'This series will be available to the community once you publish the first chapter.',
                              buttonText: 'GOT IT!',
                              onPressed: () {
                                context.bloc<NewSeriesDatabaseBloc>().add(
                                    const NewSeriesDatabaseEvent
                                        .saveSeriesDraftButtonPressed());
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
                  child: WINEImageBackButton(
                    onPressed: _backButtonPressed,
                    color: Colors.black,
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
                      child: ListView(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25.0),
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
                          // SECTION title
                          const WINETextFieldLabel(title: 'TITLE*'),
                          TextFormField(
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
                                  color: Colors.black,
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
                                  color: Colors.black,
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
                                  NewSeriesDatabaseEvent.subtitleChanged(value),
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
                                  color: Colors.black,
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
                            onChanged: (value) => context
                                .bloc<NewSeriesDatabaseBloc>()
                                .add(
                                  NewSeriesDatabaseEvent.summaryChanged(value),
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
                              FocusScope.of(context).requestFocus(FocusNode());
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
                              FocusScope.of(context).requestFocus(FocusNode());
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
                            trailingText:
                                nsDbState.genresMap[nsDbState.genreOptionalStr],
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
                              FocusScope.of(context).requestFocus(FocusNode());
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
                        ],
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
                        height: nsDbState.isCreating
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
