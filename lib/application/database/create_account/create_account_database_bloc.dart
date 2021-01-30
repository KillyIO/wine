import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/local/i_local_session_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_user_database_facade.dart';
import 'package:wine/domain/database/failures/user_database_failure.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/domain/database/successes/user_database_success.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/user.dart';

part 'create_account_database_bloc.freezed.dart';
part 'create_account_database_event.dart';
part 'create_account_database_state.dart';

/// @nodoc
@injectable
class CreateAccountDatabaseBloc
    extends Bloc<CreateAccountDatabaseEvent, CreateAccountDatabaseState> {
  /// @nodoc
  CreateAccountDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
  ) : super(CreateAccountDatabaseState.initial());

  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  @override
  Stream<CreateAccountDatabaseState> mapEventToState(
      CreateAccountDatabaseEvent event) async* {
    yield* event.map(
      accountCreatedEVT: (event) async* {
        yield state.copyWith(
          isUpdating: true,
          sessionDatabaseFailureOrSuccessOption: none(),
          userDatabaseFailureOrSuccessOption: none(),
        );

        final failureOrSuccess =
            await _onlineUserDatabaseFacade.saveDetailsFromUser(event.user)
              ..fold(
                (_) {},
                (success) {
                  if (success is UserDetailsSavedSuccess) {
                    add(CreateAccountDatabaseEvent.userDetailsSavedEVT(
                      success.user,
                    ));
                  }
                },
              );

        yield state.copyWith(
          userDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      userDetailsSavedEVT: (event) async* {
        final session = Session.fromMap(event.user.toMap());
        final failureOrSuccess = await _localSessionDatabaseFacade
            .initializeSession(session: session);

        yield state.copyWith(
          isUpdating: false,
          sessionDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      verifyEmailPageLaunchedEVT: (event) async* {
        Session session;

        final failureOrSuccess =
            await _localSessionDatabaseFacade.fetchSession()
              ..fold(
                (_) {},
                (success) {
                  if (success is SessionFetchedSCS) {
                    session = success.session;
                  }
                },
              );

        yield state.copyWith(
          email: session.email,
          sessionDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
    );
  }
}
