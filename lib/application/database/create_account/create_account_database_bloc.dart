import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/user.dart';

part 'create_account_database_event.dart';
part 'create_account_database_state.dart';

part 'create_account_database_bloc.freezed.dart';

@injectable
class CreateAccountDatabaseBloc extends Bloc<CreateAccountDatabaseEvent, CreateAccountDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  CreateAccountDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
  ) : super(CreateAccountDatabaseState.initial());

  @override
  Stream<CreateAccountDatabaseState> mapEventToState(CreateAccountDatabaseEvent event) async* {
    yield* event.map(
      accountCreatedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        yield state.copyWith(isUpdating: true, databaseFailureOrSuccessOption: none());

        failureOrSuccess = await _onlineUserDatabaseFacade.saveDetailsFromUser(event.user);

        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is UserDetailsSavedSCS) {
              add(CreateAccountDatabaseEvent.userDetailsSavedEVT(success.user));
            }
          },
        );

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      userDetailsSavedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final Session session = Session.fromMap(event.user.toMap());
        failureOrSuccess = await _localSessionDatabaseFacade.saveSession(session);

        yield state.copyWith(isUpdating: false, databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      verifyEmailPageLaunchedEVT: (event) async* {
        Session session;

        final Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess =
            await _localSessionDatabaseFacade.fetchSession();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is SessionFetchedSCS) {
              session = success.session;
            }
          },
        );

        yield state.copyWith(email: session.email, databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}
