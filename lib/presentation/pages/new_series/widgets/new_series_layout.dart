import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_list_tile.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_selection_dialog.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_text_field_label.dart';
import 'package:wine/presentation/widgets/custom_show_dialog.dart';
import 'package:wine/presentation/widgets/image_back_button.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/methods.dart';

class NewSeriesLayout extends StatefulWidget {
  final NewSeriesPageArgs args;

  const NewSeriesLayout({
    Key key,
    this.args,
  }) : super(key: key);

  @override
  _NewSeriesLayoutState createState() => _NewSeriesLayoutState();
}

class _NewSeriesLayoutState extends State<NewSeriesLayout> {
  Map<String, String> _genres;

  @override
  void initState() {
    super.initState();
    _genres = Methods.getGenres(context);
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

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: BlocBuilder<NewSeriesDatabaseBloc, NewSeriesDatabaseState>(
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
                    onPressed: () {
                      context.bloc<NewSeriesDatabaseBloc>().add(
                          const NewSeriesDatabaseEvent
                              .createSeriesButtonPressed());
                    },
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
              child: Form(
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
                      const NewSeriesTextFieldLabel(title: 'TITLE'),
                      TextFormField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black26,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: 2.0,
                            ),
                          ),
                        ),
                        initialValue: nsDbState.title.isEmpty
                            ? 'Untitled'
                            : nsDbState.title,
                        cursorColor: Colors.black,
                      ),
                      const SizedBox(height: 25),
                      const NewSeriesTextFieldLabel(title: 'DESCRIPTION'),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Description',
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20.0,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black26,
                              width: 2.0,
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
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
                        hasSelected: nsDbState.genre == '',
                        onPressed: () => customShowDialog(
                          context: context,
                          builder: (_) => NewSeriesSelectionDialog(
                            title: 'GENRE',
                            selections: _genres,
                            onPressed: (_) {},
                            onInfoPressed: () => sailor(
                              Constants.genresRoute,
                            ),
                          ),
                        ),
                        title: 'GENRE',
                        trailingText: _genres[nsDbState.genre],
                      ),
                      const SizedBox(height: 25),
                      // SECTION genre optional
                      NewSeriesListTile(
                        hasSelected: nsDbState.genreOptional == '',
                        onPressed: () => customShowDialog(
                          context: context,
                          builder: (_) => NewSeriesSelectionDialog(
                            title: 'GENRE (OPTIONAL)',
                            selections: _genres,
                            onPressed: (_) {},
                            onInfoPressed: () => sailor(
                              Constants.genresRoute,
                            ),
                          ),
                        ),
                        title: 'GENRE (OPTIONAL)',
                        trailingText: _genres[nsDbState.genreOptional],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
