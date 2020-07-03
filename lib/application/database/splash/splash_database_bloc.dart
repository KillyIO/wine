import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
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
class SplashDatabaseBloc extends Bloc<SplashDatabaseEvent, SplashDatabaseState> {
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;
  final ILocalPlaceholderDatabaseFacade _localPlaceholderDatabaseFacade;
  final IOnlinePlaceholderDatabaseFacade _onlinePlaceholderDatabaseFacade;

  SplashDatabaseBloc(
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
    this._localPlaceholderDatabaseFacade,
    this._onlinePlaceholderDatabaseFacade,
  ) : super(SplashDatabaseState.initial());

  @override
  Stream<SplashDatabaseState> mapEventToState(SplashDatabaseEvent event) async* {
    yield* event.map(
      authenticatedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        yield state.copyWith(isUpdating: true, databaseFailureOrSuccessOption: none());

        failureOrSuccess = await _onlinePlaceholderDatabaseFacade.getPlaceholderUrls();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is PlaceholdersLoadedSCS) {
              add(SplashDatabaseEvent.placeholdersLoadedEVT(success.placeholders));
            }
          },
        );

        yield state.copyWith(
          isAnonymous: event.isAnonymous,
          databaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      placeholdersLoadedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        failureOrSuccess = await _localPlaceholderDatabaseFacade.savePlaceholderUrls(event.placeholders);
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is PlaceholdersSavedSCS) {
              add(const SplashDatabaseEvent.placeholdersSavedEVT());
            }
          },
        );

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      placeholdersSavedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        if (!state.isAnonymous) {
          failureOrSuccess = await _localSessionDatabaseFacade.fetchSession();
          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SessionFetchedSCS) {
                add(SplashDatabaseEvent.sessionFetchedEVT(success.session));
              }
            },
          );

          yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
        } else {
          failureOrSuccess = await _localSessionDatabaseFacade.saveSession(Session());

          yield state.copyWith(isUpdating: false, databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
        }
      },
      sessionFetchedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        failureOrSuccess = await _onlineUserDatabaseFacade.loadUser(event.session.uid);
        failureOrSuccess.fold(
          (_) {},
          (success) async {
            if (success is UserLoadedSCS) {
              add(SplashDatabaseEvent.userLoadedEVT(success.user));
            }
          },
        );

        yield state.copyWith(databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
      userLoadedEVT: (event) async* {
        Either<DatabaseFailure, DatabaseSuccess> failureOrSuccess;

        final Session session = Session.fromMap(event.user.toMap());
        failureOrSuccess = await _localSessionDatabaseFacade.updateSession(session);

        yield state.copyWith(isUpdating: false, databaseFailureOrSuccessOption: optionOf(failureOrSuccess));
      },
    );
  }
}
