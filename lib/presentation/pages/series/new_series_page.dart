import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/domain/models/hive/series_draft.dart';
import 'package:wine/presentation/pages/series/widgets/new_series_characters_list.dart';
import 'package:wine/presentation/pages/series/widgets/new_series_selection_dialog.dart';
import 'package:wine/presentation/pages/series/widgets/new_series_text_form_field_label.dart';
import 'package:wine/presentation/pages/series/widgets/new_series_multiline_text_form_field.dart';
import 'package:wine/presentation/pages/series/widgets/new_series_text_form_field.dart';
import 'package:wine/presentation/widgets/custom_show_dialog.dart';
import 'package:wine/presentation/widgets/image_back_button.dart';
import 'package:wine/utils/methods.dart';
import 'package:wine/utils/palettes.dart';
import 'package:wine/utils/themes.dart';

class NewSeriesPage extends StatefulWidget {
  final SeriesDraft seriesDraft;

  const NewSeriesPage({
    Key key,
    this.seriesDraft,
  }) : super(key: key);

  @override
  _NewSeriesPageState createState() => _NewSeriesPageState();
}

class _NewSeriesPageState extends State<NewSeriesPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _characterController = TextEditingController();

  Map<String, String> _genres;
  Map<String, String> _languages;
  Map<String, String> _copyrights;

  @override
  void initState() {
    _titleController.addListener(_onTitleChanged);
    _descriptionController.addListener(_onDescriptionChanged);
    _characterController.addListener(_onCharacterChanged);

    context
        .bloc<NewSeriesDatabaseBloc>()
        .add(NewSeriesPageLaunched(seriesDraft: widget.seriesDraft));

    _genres = Methods.getGenres(context);
    _languages = Methods.getLanguages(context);
    _copyrights = Methods.getCopyrights(context);

    super.initState();
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _characterController.dispose();
    super.dispose();
  }

  void _onTitleChanged() => context
      .bloc<NewSeriesDatabaseBloc>()
      .add(TitleChanged(_titleController.text));

  void _onDescriptionChanged() => context
      .bloc<NewSeriesDatabaseBloc>()
      .add(DescriptionChanged(_descriptionController.text));

  void _onCharacterChanged() => context
      .bloc<NewSeriesDatabaseBloc>()
      .add(CharacterChanged(_characterController.text));

  void _addCharacterPressed() {
    context
        .bloc<NewSeriesDatabaseBloc>()
        .add(const AddCharacterButtonPressed());
    _characterController.clear();
  }

  void _backButtonPressed() {
    FocusScope.of(context).requestFocus(FocusNode());
    context.bloc<HomeNavigationBloc>().add(const NewSeriesIconPressed(
          isNewSeriesPageOpen: false,
        ));
    Navigator.of(context).pop();
  }

  Future<bool> _onWillPop() async {
    final bool canPop = Navigator.of(context).canPop();

    if (canPop) {
      context.bloc<HomeNavigationBloc>().add(const NewSeriesIconPressed(
            isNewSeriesPageOpen: false,
          ));
    }
    return canPop;
  }

  void _genreSelected(String genre) {
    context.bloc<NewSeriesDatabaseBloc>().add(GenreSelected(genre));
    Navigator.of(context).pop(true);
  }

  void _languageSelected(String language) {
    context.bloc<NewSeriesDatabaseBloc>().add(LanguageSelected(language));
    Navigator.of(context).pop(true);
  }

  void _copyrightSelected(String copyright) {
    context.bloc<NewSeriesDatabaseBloc>().add(CopyrightSelected(copyright));
    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: WillPopScope(
        onWillPop: _onWillPop,
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(41.5),
            child: AppBar(
              actions: <Widget>[
                FlatButton(
                  disabledTextColor: Colors.black26,
                  highlightColor: Colors.transparent,
                  onPressed: null,
                  splashColor: Colors.transparent,
                  textColor: Colors.black,
                  child: Text(
                    'CONTINUE',
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
                  color: Palettes.darkCobaltBlue,
                  height: 2.0,
                ),
              ),
              brightness: Brightness.light,
              centerTitle: true,
              elevation: 0.0,
              leading: Padding(
                padding:
                    const EdgeInsets.only(bottom: 5.0, left: 10.0, top: 5.0),
                child: ImageBackButton(
                  onPressed: _backButtonPressed,
                  color: Palettes.darkCobaltBlue,
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: BlocBuilder<NewSeriesDatabaseBloc, NewSeriesDatabaseState>(
              builder: (context, databaseState) {
                return Form(
                  child: ScrollConfiguration(
                    behavior: const ScrollBehavior(),
                    child: ListView(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 50.0),
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
                        const NewSeriesTextFormFieldLabel(text: 'TITLE'),
                        NewSeriesTextFormField(
                          controller: _titleController,
                          hintText: 'No title',
                        ),
                        // SECTION description
                        const Padding(
                          padding: EdgeInsets.only(top: 25.0),
                          child: NewSeriesTextFormFieldLabel(
                            text: 'DESCRIPTION',
                          ),
                        ),
                        NewSeriesMultilineTextFormField(
                          controller: _descriptionController,
                          hintText: 'An interesting description',
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 25.0),
                          child: NewSeriesTextFormFieldLabel(
                            text: 'MAIN CHARACTERS',
                          ),
                        ),
                        Visibility(
                          visible: databaseState.characters.isNotEmpty,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20.0),
                            child: NewSeriesCharactersList(
                              characters: databaseState.characters,
                            ),
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Flexible(
                              child: NewSeriesTextFormField(
                                controller: _characterController,
                                hintText: 'Name',
                              ),
                            ),
                            Container(
                              color: Palettes.darkCobaltBlue,
                              child: IconButton(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                icon: Icon(
                                  Feather.plus,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                onPressed: _addCharacterPressed,
                              ),
                            ),
                          ],
                        ),
                        // SECTION genre
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Container(
                            color: Palettes.darkCobaltBlue,
                            child: ListTile(
                              onTap: () => customShowDialog(
                                context: context,
                                builder: (_) => NewSeriesSelectionDialog(
                                  selections: _genres,
                                  onPressed: _genreSelected,
                                ),
                              ),
                              title: Text(
                                'GENRE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              trailing: databaseState.selectedGenre == ''
                                  ? Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      _genres[databaseState.selectedGenre],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25.0),
                          child: Container(
                            color: Palettes.darkCobaltBlue,
                            child: ListTile(
                              onTap: () => customShowDialog(
                                context: context,
                                builder: (_) => NewSeriesSelectionDialog(
                                  selections: _languages,
                                  onPressed: _languageSelected,
                                ),
                              ),
                              title: Text(
                                'LANGUAGE',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              trailing: databaseState.selectedGenre == ''
                                  ? Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      _genres[databaseState.selectedGenre],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 25.0),
                          child: Container(
                            color: Palettes.darkCobaltBlue,
                            child: ListTile(
                              onTap: () => customShowDialog(
                                context: context,
                                builder: (_) => NewSeriesSelectionDialog(
                                  selections: _languages,
                                  onPressed: _languageSelected,
                                ),
                              ),
                              title: Text(
                                'COPYRIGHTS',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              trailing: databaseState.selectedGenre == ''
                                  ? Icon(
                                      Icons.keyboard_arrow_right,
                                      color: Colors.white,
                                    )
                                  : Text(
                                      _genres[databaseState.selectedGenre],
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300,
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
          ),
        ),
      ),
    );
  }
}
