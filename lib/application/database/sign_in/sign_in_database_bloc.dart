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

part 'sign_in_database_event.dart';
part 'sign_in_database_state.dart';

part 'sign_in_database_bloc.freezed.dart';

@injectable
class SignInDatabaseBloc
    extends Bloc<SignInDatabaseEvent, SignInDatabaseState> {
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
    if (event is SignedIn) {
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
