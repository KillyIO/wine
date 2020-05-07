import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/new_series/new_series_database_bloc.dart';
import 'package:wine/application/navigation/home/home_navigation_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_layout.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_list_tile.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_multiline_text_form_field.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_selection_dialog.dart';
import 'package:wine/presentation/pages/new_series/widgets/new_series_text_form_field.dart';
import 'package:wine/presentation/widgets/custom_show_dialog.dart';
import 'package:wine/presentation/widgets/image_back_button.dart';
import 'package:wine/routes.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/constants.dart';
import 'package:wine/utils/methods.dart';
import 'package:wine/utils/palettes.dart';
import 'package:wine/utils/themes.dart';

class NewSeriesPage extends StatelessWidget {
  final NewSeriesPageArgs args;

  const NewSeriesPage({
    Key key,
    this.args,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<NewSeriesDatabaseBloc>()
              ..add(NewSeriesDatabaseEvent.newSeriesPageLaunched(
                seriesDraft: args.seriesDraft,
              )),
          ),
        ],
        child: NewSeriesLayout(args: args),
      ),
    );
  }
}

// class NewSeriesPage extends StatefulWidget {
//   final NewSeriesPageArgs args;

//   const NewSeriesPage({
//     Key key,
//     this.args,
//   }) : super(key: key);

//   @override
//   _NewSeriesPageState createState() => _NewSeriesPageState();
// }

// class _NewSeriesPageState extends State<NewSeriesPage> {
//   final TextEditingController _titleController = TextEditingController();
//   final TextEditingController _descriptionController = TextEditingController();

//   Map<String, String> _genres;
//   Map<String, String> _languages;
//   Map<String, String> _copyrights;

//   @override
//   void initState() {
//     _titleController.addListener(_onTitleChanged);
//     _descriptionController.addListener(_onDescriptionChanged);

//     _genres = Methods.getGenres(context);
//     _languages = Methods.getLanguages(context);
//     _copyrights = Methods.getCopyrights(context);

//     final args = widget.args;

//     context
//         .bloc<NewSeriesDatabaseBloc>()
//         .add(NewSeriesPageLaunched(seriesDraft: args.seriesDraft));

//     _titleController.text = args.seriesDraft?.title ?? 'Untitled';

//     super.initState();
//   }

//   @override
//   void dispose() {
//     _titleController.dispose();
//     _descriptionController.dispose();
//     super.dispose();
//   }

//   void _onTitleChanged() => context
//       .bloc<NewSeriesDatabaseBloc>()
//       .add(TitleChanged(_titleController.text));

//   void _onDescriptionChanged() => context
//       .bloc<NewSeriesDatabaseBloc>()
//       .add(DescriptionChanged(_descriptionController.text));

//   void _backButtonPressed() {
//     FocusScope.of(context).requestFocus(FocusNode());
//     context.bloc<HomeNavigationBloc>().add(const NewSeriesIconPressed(
//           isNewSeriesPageOpen: false,
//         ));
//     Navigator.of(context).pop();
//   }

//   Future<bool> _onWillPop() async {
//     final bool canPop = Navigator.of(context).canPop();

//     if (canPop) {
//       context.bloc<HomeNavigationBloc>().add(const NewSeriesIconPressed(
//             isNewSeriesPageOpen: false,
//           ));
//     }
//     return canPop;
//   }

//   void _genreSelected(String genre) {
//     context.bloc<NewSeriesDatabaseBloc>().add(GenreSelected(genre));
//     Navigator.of(context).pop(true);
//   }

//   void _genreOptionalSelected(String genreOptional) {
//     context
//         .bloc<NewSeriesDatabaseBloc>()
//         .add(GenreOptionalSelected(genreOptional));
//     Navigator.of(context).pop(true);
//   }

//   void _languageSelected(String language) {
//     context.bloc<NewSeriesDatabaseBloc>().add(LanguageSelected(language));
//     Navigator.of(context).pop(true);
//   }

//   void _copyrightSelected(String copyrights) {
//     context.bloc<NewSeriesDatabaseBloc>().add(CopyrightsSelected(copyrights));
//     Navigator.of(context).pop(true);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AnnotatedRegion<SystemUiOverlayStyle>(
//       value: Themes.wineLightTheme(),
//       child: WillPopScope(
//         onWillPop: _onWillPop,
//         child: BlocBuilder<NewSeriesDatabaseBloc, NewSeriesDatabaseState>(
//           builder: (context, databaseState) {
//             return Scaffold(
//               backgroundColor: Colors.white,
//               appBar: PreferredSize(
//                 preferredSize: const Size.fromHeight(41.5),
//                 child: AppBar(
//                   actions: <Widget>[
//                     FlatButton(
//                       disabledTextColor: Colors.black26,
//                       highlightColor: Colors.transparent,
//                       onPressed: () {
//                         context
//                             .bloc<NewSeriesDatabaseBloc>()
//                             .add(const ContinueButtonPressed());
//                       },
//                       splashColor: Colors.transparent,
//                       textColor: Colors.black,
//                       child: Text(
//                         'CONTINUE',
//                         style: TextStyle(
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     ),
//                   ],
//                   backgroundColor: Colors.transparent,
//                   bottom: PreferredSize(
//                     preferredSize: const Size.fromHeight(0.0),
//                     child: Container(
//                       color: Palettes.darkCobaltBlue,
//                       height: 2.0,
//                     ),
//                   ),
//                   brightness: Brightness.light,
//                   centerTitle: true,
//                   elevation: 0.0,
//                   leading: Padding(
//                     padding: const EdgeInsets.only(
//                         bottom: 5.0, left: 10.0, top: 5.0),
//                     child: ImageBackButton(
//                       onPressed: _backButtonPressed,
//                       color: Palettes.darkCobaltBlue,
//                     ),
//                   ),
//                 ),
//               ),
//               body: SafeArea(
//                 child: Form(
//                   child: ScrollConfiguration(
//                     behavior: const ScrollBehavior(),
//                     child: ListView(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 20.0, vertical: 50.0),
//                           child: Text(
//                             'STORY DETAILS',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Colors.black,
//                               fontSize: 20.0,
//                               fontWeight: FontWeight.w400,
//                               letterSpacing: .5,
//                             ),
//                           ),
//                         ),
//                         // SECTION title
//                         const NewSeriesTextFormFieldLabel(text: 'TITLE'),
//                         NewSeriesTextFormField(
//                           controller: _titleController,
//                           hintText: 'No title',
//                         ),
//                         // SECTION description
//                         const Padding(
//                           padding: EdgeInsets.only(top: 25.0),
//                           child: NewSeriesTextFormFieldLabel(
//                             text: 'DESCRIPTION',
//                           ),
//                         ),
//                         NewSeriesMultilineTextFormField(
//                           controller: _descriptionController,
//                           hintText: '',
//                         ),
//                         // SECTION genre
//                         Padding(
//                           padding: const EdgeInsets.only(top: 25.0),
//                           child: NewSeriesListTile(
//                             hasSelected: databaseState.genre == '',
//                             onPressed: () => customShowDialog(
//                               context: context,
//                               builder: (_) => NewSeriesSelectionDialog(
//                                 title: 'GENRE',
//                                 selections: _genres,
//                                 onPressed: _genreSelected,
//                                 onInfoPressed: () => sailor(
//                                   Constants.genresRoute,
//                                 ),
//                               ),
//                             ),
//                             title: 'GENRE',
//                             trailingText: _genres[databaseState.genre],
//                           ),
//                         ),
//                         // SECTION genre optional
//                         Padding(
//                           padding: const EdgeInsets.only(top: 25.0),
//                           child: NewSeriesListTile(
//                             hasSelected: databaseState.genreOptional == '',
//                             onPressed: () => customShowDialog(
//                               context: context,
//                               builder: (_) => NewSeriesSelectionDialog(
//                                 title: 'GENRE (OPTIONAL)',
//                                 selections: _genres,
//                                 onPressed: _genreOptionalSelected,
//                                 onInfoPressed: () => sailor(
//                                   Constants.genresRoute,
//                                 ),
//                               ),
//                             ),
//                             title: 'GENRE (OPTIONAL)',
//                             trailingText: _genres[databaseState.genreOptional],
//                           ),
//                         ),
//                         // SECTION language
//                         Padding(
//                           padding: const EdgeInsets.only(top: 25.0),
//                           child: NewSeriesListTile(
//                             hasSelected: databaseState.language == '',
//                             onPressed: () => customShowDialog(
//                               context: context,
//                               builder: (_) => NewSeriesSelectionDialog(
//                                 title: 'LANGUAGE',
//                                 selections: _languages,
//                                 onPressed: _languageSelected,
//                               ),
//                             ),
//                             title: 'LANGUAGE',
//                             trailingText: _languages[databaseState.language],
//                           ),
//                         ),
//                         // SECTION copyright
//                         Padding(
//                           padding: const EdgeInsets.symmetric(vertical: 25.0),
//                           child: NewSeriesListTile(
//                             hasSelected: databaseState.copyrights == '',
//                             onPressed: () => customShowDialog(
//                               context: context,
//                               builder: (_) => NewSeriesSelectionDialog(
//                                 title: 'COPYRIGHTS',
//                                 selections: _copyrights,
//                                 onPressed: _copyrightSelected,
//                                 onInfoPressed: () => sailor(
//                                   Constants.copyrightsRoute,
//                                 ),
//                               ),
//                             ),
//                             title: 'COPYRIGHTS',
//                             trailingText: _copyrights[databaseState.copyrights],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
