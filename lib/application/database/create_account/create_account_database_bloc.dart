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
    if (event is AccountCreated) {
      Either<DatabaseFailure, dynamic> failureOrSuccess;

      yield state.copyWith(
        isUpdating: true,
        databaseFailureOrSuccessOption: none(),
      );
      failureOrSuccess =
          await _onlineUserDatabaseFacade.saveDetailsFromUser(event.user);

      failureOrSuccess.fold(
        (_) {},
        (right) async {
          if (right is User) {
            final Session session = Session.fromMap(right.toMap());
            await _localSessionDatabaseFacade.setSession(session: session);
          }
        },
      );
      yield state.copyWith(
        isUpdating: false,
        databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }
  }
}
