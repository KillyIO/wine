import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/domain/models/chapter.dart';
import 'package:wine/injection.dart';
import 'package:wine/presentation/layouts/chapter/chapter_layout.dart';
import 'package:wine/utils/themes.dart';

/// @nodoc
class ChapterPage extends StatelessWidget {
  /// @nodoc
  const ChapterPage({
    Key key,
    @required this.chapter,
  }) : super(key: key);

  /// @nodoc
  final Chapter chapter;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: Themes.wineLightTheme(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<ChapterDatabaseBloc>()
              ..add(ChapterDatabaseEvent.chapterLaunchedEVT(chapter)),
          ),
        ],
        child: const ChapterLayout(),
      ),
    );
  }
}
