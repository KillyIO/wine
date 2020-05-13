import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/new_chapter/new_chapter_database_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/new_chapter/widgets/new_chapter_form.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/themes.dart';

class NewChapterPage extends StatelessWidget {
  final NewChapterPageArgs args;

  const NewChapterPage({
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
            create: (context) => getIt<NewChapterDatabaseBloc>()
              ..add(NewChapterDatabaseEvent.newChapterPageLaunched(
                parentType: args.parentType,
                chapterDraft: args.chapterDraft,
                seriesDraft: args.seriesDraft,
                previousChapterDraft: args.previousChapterDraft,
                context: context,
              )),
          ),
        ],
        child: NewChapterForm(args: args),
      ),
    );
  }
}
