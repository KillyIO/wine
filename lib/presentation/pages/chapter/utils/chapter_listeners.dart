import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';

class ChapterListeners {
  BlocListener<CoreDatabaseBloc, CoreDatabaseState> _coreDbListener() =>
      BlocListener<CoreDatabaseBloc, CoreDatabaseState>(
        listener: (context, state) {
          if (state.publishedFromChapter) {
            context.bloc<ChapterDatabaseBloc>().add(const ChapterDatabaseEvent.loadNextChaptersEVT());
            context.bloc<CoreDatabaseBloc>().add(const CoreDatabaseEvent.publishedFromChapterEVT());
          }
        },
      );

  List<BlocListener> get listeners => <BlocListener>[_coreDbListener()];
}
