import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:wine/application/database/core/core_database_bloc.dart';
import 'package:wine/application/database/library/library_database_bloc.dart';

/// @nodoc
class LibraryListeners {
  BlocListener<CoreDatabaseBloc, CoreDatabaseState> _coreDatabaseListener() =>
      BlocListener<CoreDatabaseBloc, CoreDatabaseState>(
        listener: (context, state) {
          state.maybeMap(
            chapterDraftDeletedFromLibrarySTE: (otherState) {
              context
                  .read<LibraryDatabaseBloc>()
                  .add(LibraryDatabaseEvent.chapterDraftDeletedEVT(
                    chapterDraftUID: otherState.chapterDraftUID,
                    seriesDraftUID: otherState.seriesDraftUID,
                  ));
            },
            chapterDraftSavedFromLibrarySTE: (otherState) {
              context
                  .read<LibraryDatabaseBloc>()
                  .add(LibraryDatabaseEvent.chapterDraftSavedEVT(
                    otherState.chapterDraft,
                  ));
            },
            chapterPublishedFromLibrarySTE: (otherState) {
              context
                  .read<LibraryDatabaseBloc>()
                  .add(LibraryDatabaseEvent.chapterPublishedEVT(
                    otherState.chapter,
                  ));
            },
            seriesDraftDeletedFromLibrarySTE: (otherState) {
              context
                  .read<LibraryDatabaseBloc>()
                  .add(LibraryDatabaseEvent.seriesDraftDeletedEVT(
                    otherState.seriesDraftUID,
                  ));
            },
            seriesDraftSavedFromLibrarySTE: (otherState) {
              context
                  .read<LibraryDatabaseBloc>()
                  .add(LibraryDatabaseEvent.seriesDraftSavedEVT(
                    otherState.seriesDraft,
                  ));
            },
            seriesPublishedFromLibrarySTE: (otherState) {
              context
                  .read<LibraryDatabaseBloc>()
                  .add(LibraryDatabaseEvent.seriesPublishedEVT(
                    otherState.series,
                  ));
            },
            orElse: () {},
          );
        },
      );

  /// @nodoc
  List<BlocListener> get listeners => <BlocListener>[_coreDatabaseListener()];
}
