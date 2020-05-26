import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_placeholder_database_facade.dart';
import 'package:wine/domain/database/i_local_session_database_facade.dart';
import 'package:wine/domain/database/i_online_placeholder_database_facade.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
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
  final ILocalPlaceholderDatabaseFacade _localPlaceholderDatabaseFacade;
  final IOnlinePlaceholderDatabaseFacade _onlinePlaceholderDatabaseFacade;

  SplashDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
    this._localPlaceholderDatabaseFacade,
    this._onlinePlaceholderDatabaseFacade,
  );

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

        Map<String, String> placeholderUrls = <String, String>{};

        failureOrSuccess =
            await _onlinePlaceholderDatabaseFacade.getPlaceholderUrls();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is Map<String, String>) {
              placeholderUrls = success;
            }
          },
        );

        if (failureOrSuccess.isRight()) {
          failureOrSuccess = await _localPlaceholderDatabaseFacade
              .savePlaceholderUrls(placeholderUrls);

          if (failureOrSuccess.isRight()) {
            if (!event.isAnonymous) {
              Session session;

              failureOrSuccess = await _localSessionDatabaseFacade.getSession();
              failureOrSuccess.fold(
                (_) {},
                (success) {
                  if (success is Session) {
                    session = success;
                  }
                },
              );

              if (failureOrSuccess.isRight()) {
                failureOrSuccess =
                    await _onlineUserDatabaseFacade.getUser(session.uid);
                failureOrSuccess.fold(
                  (_) {},
                  (success) async {
                    if (success is User) {
                      session = Session.fromMap(success.toMap());
                      await _localSessionDatabaseFacade.updateSession(session);
                    }
                  },
                );
              }
            } else {
              failureOrSuccess =
                  await _localSessionDatabaseFacade.saveSession(Session());
            }
          }
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
