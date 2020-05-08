import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sailor/sailor.dart';
import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/domain/enums/parent_type.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_list_tile.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_selection_dialog.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_text_field_label.dart';
import 'package:wine/presentation/widgets/custom_show_dialog.dart';
import 'package:wine/presentation/widgets/image_back_button.dart';
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
  Map<String, String> _genres;
  Map<String, String> _languages;
  Map<String, String> _copyrights;

  @override
  void initState() {
    super.initState();
    _genres = Methods.getGenres(context);
    _languages = Methods.getLanguages(context);
    _copyrights = Methods.getCopyrights(context);
  }

  Future<bool> _onWillPop() async {
    final bool canPop = Navigator.of(context).canPop();

    if (canPop) {
      context
          .bloc<HomeNavigationBloc>()
          .add(const HomeNavigationEvent.newSeriesIconPressed(
            isNewSeriesPageOpen: false,
          ));
    }
    return canPop;
  }

  void _backButtonPressed() {
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

  void _copyrightSelected(String copyrights) {
    context.bloc<NewSeriesDatabaseBloc>().add(CopyrightsSelected(copyrights));
    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: BlocConsumer<NewSeriesDatabaseBloc, NewSeriesDatabaseState>(
        listener: (context, state) {
          if (!state.isSaving && state.isSaved) {
            sailor.navigate(
              Constants.newChapterRoute,
              navigationType: NavigationType.pushReplace,
              args: NewChapterPageArgs(
                parentType: ParentType.series,
                seriesDraft: state.seriesDraft,
              ),
            );
          }
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
                    onPressed: () {},
                    splashColor: Colors.transparent,
                    textColor: Colors.black,
                    child: Text(
                      'CREATE SERIES',
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
                  child: ImageBackButton(
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
                          const NewSeriesTextFieldLabel(title: 'TITLE*'),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Less than 10 words',
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
                            ),
                            cursorColor: Colors.black,
                          ),
                          const SizedBox(height: 25),
                          // SECTION subtitle
                          const NewSeriesTextFieldLabel(
                            title: 'SUBTITLE (OPTIONAL)',
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Less than 10 words',
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
                            ),
                            cursorColor: Colors.black,
                          ),
                          const SizedBox(height: 25),
                          // SECTION description
                          const NewSeriesTextFieldLabel(title: 'DESCRIPTION*'),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Less than 200 words',
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
                            ),
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.multiline,
                            maxLines: 10,
                          ),
                          const SizedBox(height: 25),
                          // SECTION genre
                          NewSeriesListTile(
                            hasSelected: nsDbState.genreStr == '',
                            onPressed: () => customShowDialog(
                              context: context,
                              builder: (_) => NewSeriesSelectionDialog(
                                title: 'GENRE',
                                selections: _genres,
                                onPressed: _genreSelected,
                                onInfoPressed: () => sailor(
                                  Constants.genresRoute,
                                ),
                              ),
                            ),
                            title: 'GENRE*',
                            trailingText: _genres[nsDbState.genreStr],
                          ),
                          const SizedBox(height: 25),
                          // SECTION genre optional
                          NewSeriesListTile(
                            hasSelected: nsDbState.genreOptionalStr == '',
                            onPressed: () => customShowDialog(
                              context: context,
                              builder: (_) => NewSeriesSelectionDialog(
                                title: 'GENRE (OPTIONAL)',
                                selections: _genres,
                                onPressed: _genreOptionalSelected,
                                onInfoPressed: () => sailor(
                                  Constants.genresRoute,
                                ),
                              ),
                            ),
                            title: 'GENRE (OPTIONAL)',
                            trailingText: _genres[nsDbState.genreOptionalStr],
                          ),
                          const SizedBox(height: 25),
                          // SECTION language
                          NewSeriesListTile(
                            hasSelected: nsDbState.languageStr == '',
                            onPressed: () => customShowDialog(
                              context: context,
                              builder: (_) => NewSeriesSelectionDialog(
                                title: 'LANGUAGE',
                                selections: _languages,
                                onPressed: _languageSelected,
                              ),
                            ),
                            title: 'LANGUAGE*',
                            trailingText: _languages[nsDbState.languageStr],
                          ),
                          const SizedBox(height: 25),
                          // SECTION copyright
                          NewSeriesListTile(
                            hasSelected: nsDbState.copyrightsStr == '',
                            onPressed: () => customShowDialog(
                              context: context,
                              builder: (_) => NewSeriesSelectionDialog(
                                title: 'COPYRIGHTS',
                                selections: _copyrights,
                                onPressed: _copyrightSelected,
                                onInfoPressed: () => sailor(
                                  Constants.copyrightsRoute,
                                ),
                              ),
                            ),
                            title: 'COPYRIGHTS*',
                            trailingText: _copyrights[nsDbState.copyrightsStr],
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
                        height: nsDbState.isSaving
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
