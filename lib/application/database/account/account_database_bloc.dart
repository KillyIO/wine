import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/enums/account_menu_layout_type.dart';
import 'package:wine/domain/models/hive/session.dart';

part 'account_database_event.dart';
part 'account_database_state.dart';

part 'account_database_bloc.freezed.dart';

@injectable
class AccountDatabaseBloc
    extends Bloc<AccountDatabaseEvent, AccountDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;

  AccountDatabaseBloc(this._localSessionDatabaseFacade);

  @override
  AccountDatabaseState get initialState => AccountDatabaseState.initial();

  @override
  Stream<AccountDatabaseState> mapEventToState(
    AccountDatabaseEvent event,
  ) async* {
    yield* event.map(
      accountPageLaunched: (event) async* {
        Session session = Session();

        final Either<DatabaseFailure, Session> failureOrSuccess =
            await _localSessionDatabaseFacade.getSession();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is Session) {
              session = success;
            }
          },
        );

        yield state.copyWith(
          session: session,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      seriesButtonPresed: (event) async* {
        if (state.menuType != AccountMenuLayoutType.series) {
          yield state.copyWith(
            menuType: AccountMenuLayoutType.series,
            databaseFailureOrSuccessOption: none(),
          );
        }
      },
      chaptersButtonPresed: (event) async* {
        if (state.menuType != AccountMenuLayoutType.chapters) {
          yield state.copyWith(
            menuType: AccountMenuLayoutType.chapters,
            databaseFailureOrSuccessOption: none(),
          );
        }
      },
      seriesDraftsButtonPresed: (event) async* {
        if (state.menuType != AccountMenuLayoutType.seriesDrafts) {
          yield state.copyWith(
            menuType: AccountMenuLayoutType.seriesDrafts,
            databaseFailureOrSuccessOption: none(),
          );
        }
      },
      chapterDraftsButtonPresed: (event) async* {
        if (state.menuType != AccountMenuLayoutType.chapterDrafts) {
          yield state.copyWith(
            menuType: AccountMenuLayoutType.chapterDrafts,
            databaseFailureOrSuccessOption: none(),
          );
        }
      },
    );
  }
}
