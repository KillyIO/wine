import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/core/core_database_bloc.dart';
import 'package:wine/application/database/library/library_database_bloc.dart';

/// @nodoc
class LibraryListeners {
  BlocListener<CoreDatabaseBloc, CoreDatabaseState> _coreDatabaseListener() =>
      BlocListener<CoreDatabaseBloc, CoreDatabaseState>(
        listener: (context, coreDatabaseState) {
          coreDatabaseState.maybeMap(
            chapterDraftDeletedFromLibraryState: (state) {
              context
                  .read<LibraryDatabaseBloc>()
                  .add(LibraryDatabaseEvent.chapterDraftDeletedEVT(
                    chapterDraftUID: state.chapterDraftUID,
                    seriesDraftUID: state.seriesDraftUID,
                  ));
            },
            chapterDraftSavedFromLibraryState: (state) {
              context
                  .read<LibraryDatabaseBloc>()
                  .add(LibraryDatabaseEvent.chapterDraftSavedEVT(
                    state.chapterDraft,
                  ));
            },
            chapterPublishedFromLibraryState: (state) {
              context
                  .read<LibraryDatabaseBloc>()
                  .add(LibraryDatabaseEvent.chapterPublishedEVT(
                    state.chapter,
                  ));
            },
            seriesDraftDeletedFromLibraryState: (state) {
              context
                  .read<LibraryDatabaseBloc>()
                  .add(LibraryDatabaseEvent.seriesDraftDeletedEVT(
                    state.seriesDraftUID,
                  ));
            },
            seriesDraftSavedFromLibraryState: (state) {
              context
                  .read<LibraryDatabaseBloc>()
                  .add(LibraryDatabaseEvent.seriesDraftSavedEVT(
                    state.seriesDraft,
                  ));
            },
            seriesPublishedFromLibraryState: (state) {
              context
                  .read<LibraryDatabaseBloc>()
                  .add(LibraryDatabaseEvent.seriesPublishedEVT(
                    state.series,
                  ));
            },
            orElse: () {},
          );
        },
      );

  /// @nodoc
  List<BlocListener> get listeners => <BlocListener>[_coreDatabaseListener()];
}
