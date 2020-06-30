import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/pages/chapter/widgets/chapter_layout.dart';
import 'package:wine/utils/arguments.dart';
import 'package:wine/utils/themes.dart';

class ChapterPage extends StatelessWidget {
  final ChapterPageArgs args;

  const ChapterPage({Key key, this.args}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (context) => getIt<ChapterDatabaseBloc>())],
        child: ChapterLayout(args: args),
      ),
    );
  }
}
