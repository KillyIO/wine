import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/user.dart';

part 'create_account_database_event.dart';
part 'create_account_database_state.dart';

part 'create_account_database_bloc.freezed.dart';

@injectable
class CreateAccountDatabaseBloc
    extends Bloc<CreateAccountDatabaseEvent, CreateAccountDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  CreateAccountDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
  );

  @override
  CreateAccountDatabaseState get initialState =>
      CreateAccountDatabaseState.initial();

  @override
  Stream<CreateAccountDatabaseState> mapEventToState(
    CreateAccountDatabaseEvent event,
  ) async* {
    yield* event.map(
      accountCreated: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        yield state.copyWith(
          isUpdating: true,
          databaseFailureOrSuccessOption: none(),
        );

        failureOrSuccess =
            await _onlineUserDatabaseFacade.saveDetailsFromUser(event.user);

        failureOrSuccess.fold(
          (_) {},
          (success) async {
            if (success is User) {
              final Session session = Session.fromMap(success.toMap());
              failureOrSuccess =
                  await _localSessionDatabaseFacade.saveSession(session);
            }
          },
        );
        yield state.copyWith(
          isUpdating: false,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      verifyEmailPageLaunched: (event) async* {
        Session session;

        final Either<DatabaseFailure, dynamic> failureOrSuccess =
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
          email: session.email,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
