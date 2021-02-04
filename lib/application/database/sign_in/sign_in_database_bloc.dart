import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:models/models.dart';

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/local/i_local_session_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_user_database_facade.dart';
import 'package:wine/domain/database/failures/user_database_failure.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/domain/database/successes/user_database_success.dart';
import 'package:wine/domain/models/hive/session.dart';

part 'sign_in_database_bloc.freezed.dart';
part 'sign_in_database_event.dart';
part 'sign_in_database_state.dart';

/// @nodoc
@injectable
class SignInDatabaseBloc
    extends Bloc<SignInDatabaseEvent, SignInDatabaseState> {
  /// @nodoc
  SignInDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
  ) : super(SignInDatabaseState.initial());

  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  @override
  Stream<SignInDatabaseState> mapEventToState(
      SignInDatabaseEvent event) async* {
    yield* event.map(
      signedInEVT: (event) async* {
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
                    add(SignInDatabaseEvent.userDetailsSavedEVT(success.user));
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
    );
  }
}
