import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/chapter/chapter_database_bloc.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';

/// @nodoc
class ChapterListeners {
  BlocListener<CoreDatabaseBloc, CoreDatabaseState> _coreDatabaseListener() =>
      BlocListener<CoreDatabaseBloc, CoreDatabaseState>(
        listener: (context, state) {
          state.maybeMap(
            chapterPublishedFromChapterSTE: (otherState) {
              context
                  .read<ChapterDatabaseBloc>()
                  .add(ChapterDatabaseEvent.chapterPublishedEVT(
                    otherState.chapter,
                  ));
            },
            orElse: () {},
          );
        },
      );

  /// @nodoc
  List<BlocListener> get listeners => <BlocListener>[_coreDatabaseListener()];
}
