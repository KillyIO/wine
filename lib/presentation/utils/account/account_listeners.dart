import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wine/application/database/account/account_database_bloc.dart';
import 'package:wine/application/database/core/core_database_bloc.dart';

/// @nodoc
class AccountListeners {
  BlocListener<CoreDatabaseBloc, CoreDatabaseState> _coreDatabaseListener() =>
      BlocListener<CoreDatabaseBloc, CoreDatabaseState>(
        listener: (context, state) {
          state.maybeMap(
            chapterDraftDeletedFromAccountSTE: (otherState) {
              context
                  .read<AccountDatabaseBloc>()
                  .add(AccountDatabaseEvent.chapterDraftDeletedEVT(
                    chapterDraftUID: otherState.chapterDraftUID,
                    seriesDraftUID: otherState.seriesDraftUID,
                  ));
            },
            chapterDraftSavedFromAccountSTE: (otherState) {
              context
                  .read<AccountDatabaseBloc>()
                  .add(AccountDatabaseEvent.chapterDraftSavedEVT(
                    otherState.chapterDraft,
                  ));
            },
            chapterPublishedFromAccountSTE: (otherState) {
              context
                  .read<AccountDatabaseBloc>()
                  .add(AccountDatabaseEvent.chapterPublishedEVT(
                    otherState.chapter,
                  ));
            },
            seriesDraftDeletedFromAccountSTE: (otherState) {
              context
                  .read<AccountDatabaseBloc>()
                  .add(AccountDatabaseEvent.seriesDraftDeletedEVT(
                    otherState.seriesDraftUID,
                  ));
            },
            seriesDraftSavedFromAccountSTE: (otherState) {
              context
                  .read<AccountDatabaseBloc>()
                  .add(AccountDatabaseEvent.seriesDraftSavedEVT(
                    otherState.seriesDraft,
                  ));
            },
            seriesPublishedFromAccountSTE: (otherState) {
              context
                  .read<AccountDatabaseBloc>()
                  .add(AccountDatabaseEvent.seriesPublishedEVT(
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
