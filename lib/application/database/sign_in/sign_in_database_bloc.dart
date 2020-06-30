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

part 'sign_in_database_event.dart';
part 'sign_in_database_state.dart';

part 'sign_in_database_bloc.freezed.dart';

@injectable
class SignInDatabaseBloc extends Bloc<SignInDatabaseEvent, SignInDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  SignInDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
  );

  @override
  SignInDatabaseState get initialState => SignInDatabaseState.initial();

  @override
  Stream<SignInDatabaseState> mapEventToState(
    SignInDatabaseEvent event,
  ) async* {
    yield* event.map(
      signedInEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        yield state.copyWith(isUpdating: true, databaseFailureOrSuccessOption: none());

        failureOrSuccess = await _onlineUserDatabaseFacade.saveDetailsFromUser(event.user);

        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is UserDetailsSavedSCS) {
              add(SignInDatabaseEvent.userDetailsSavedEVT(success.user));
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
    );
  }
}
