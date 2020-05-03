import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/enums/account_status.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/user.dart';

part 'splash_database_event.dart';
part 'splash_database_state.dart';

part 'splash_database_bloc.freezed.dart';

@injectable
class SplashDatabaseBloc
    extends Bloc<SplashDatabaseEvent, SplashDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;

  SplashDatabaseBloc(
      this._localSessionDatabaseFacade, this._onlineUserDatabaseFacade);

  @override
  SplashDatabaseState get initialState => SplashDatabaseState.initial();

  @override
  Stream<SplashDatabaseState> mapEventToState(
    SplashDatabaseEvent event,
  ) async* {
    yield* event.map(
      authenticated: (event) async* {
        Either<DatabaseFailure, dynamic> failureOrSuccess;

        yield state.copyWith(
          isUpdating: true,
          databaseFailureOrSuccessOption: none(),
        );

        switch (event.accountStatus) {
          case AccountStatus.anonymous:
            final session = Session();
            await _localSessionDatabaseFacade.setSession(session: session);
            break;
          case AccountStatus.permanent:
            Session session = _localSessionDatabaseFacade.getSession();
            failureOrSuccess =
                await _onlineUserDatabaseFacade.getUser(session.uid);
            failureOrSuccess.fold(
              (_) {},
              (right) async {
                if (right is User) {
                  session = Session.fromMap(right.toMap());
                  await _localSessionDatabaseFacade.setSession(session: session);
                }
              },
            );
            break;
          default:
        }

        yield state.copyWith(
          isUpdating: false,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      logoAnimationCompleted: (event) async* {
        yield state.copyWith(
          isLogoAnimationCompleted: true,
          databaseFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
