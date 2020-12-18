import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/local/i_local_config_database_facade.dart';
import 'package:wine/domain/database/facades/local/i_local_placeholder_database_facade.dart';
import 'package:wine/domain/database/facades/local/i_local_session_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_placeholder_database_facade.dart';
import 'package:wine/domain/database/facades/online/i_online_user_database_facade.dart';
import 'package:wine/domain/database/failures/config_database_failure.dart';
import 'package:wine/domain/database/failures/placeholder_database_failure.dart';
import 'package:wine/domain/database/successes/config_database_success.dart';
import 'package:wine/domain/database/successes/placeholder_database_success.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/domain/database/successes/user_database_success.dart';
import 'package:wine/domain/models/hive/session.dart';
import 'package:wine/domain/models/user.dart';

part 'splash_database_bloc.freezed.dart';
part 'splash_database_event.dart';
part 'splash_database_state.dart';

/// @nodoc
@injectable
class SplashDatabaseBloc
    extends Bloc<SplashDatabaseEvent, SplashDatabaseState> {
  /// @nodoc
  SplashDatabaseBloc(
    this._localConfigDatabaseFacade,
    this._localSessionDatabaseFacade,
    this._onlineUserDatabaseFacade,
    this._localPlaceholderDatabaseFacade,
    this._onlinePlaceholderDatabaseFacade,
  ) : super(SplashDatabaseState.initial());

  final ILocalConfigDatabaseFacade _localConfigDatabaseFacade;
  final ILocalSessionDatabaseFacade _localSessionDatabaseFacade;
  final IOnlineUserDatabaseFacade _onlineUserDatabaseFacade;
  final ILocalPlaceholderDatabaseFacade _localPlaceholderDatabaseFacade;
  final IOnlinePlaceholderDatabaseFacade _onlinePlaceholderDatabaseFacade;

  @override
  Stream<SplashDatabaseState> mapEventToState(
      SplashDatabaseEvent event) async* {
    yield* event.map(
      authenticatedEVT: (event) async* {
        yield state.copyWith(
          isAnonymous: event.isAnonymous,
          isUpdating: true,
        );

        final failureOrSuccess = await _localConfigDatabaseFacade.fetchConfig();
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          configDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          isUpdating: callSuccess,
          placeholderDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
          userDatabaseFailureOrSuccessOption: none(),
        );

        if (callSuccess) {
          add(const SplashDatabaseEvent.configFetchedEVT());
        }
      },
      configFetchedEVT: (event) async* {
        var placeholders = <String, String>{};

        final failureOrSuccess =
            await _onlinePlaceholderDatabaseFacade.loadPlaceholders()
              ..fold(
                (_) {},
                (success) {
                  if (success is PlaceholdersLoadedSCS) {
                    placeholders = success.placeholders;
                  }
                },
              );
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          configDatabaseFailureOrSuccessOption: none(),
          isUpdating: callSuccess,
          placeholderDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          sessionDatabaseFailureOrSuccessOption: none(),
          userDatabaseFailureOrSuccessOption: none(),
        );

        if (callSuccess) {
          add(SplashDatabaseEvent.placeholdersLoadedEVT(placeholders));
        }
      },
      placeholdersInitializedEVT: (event) async* {
        final failureOrSuccess =
            await _localSessionDatabaseFacade.fetchSession();
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          configDatabaseFailureOrSuccessOption: none(),
          isUpdating: callSuccess && !state.isAnonymous,
          placeholderDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          userDatabaseFailureOrSuccessOption: none(),
        );

        if (callSuccess && !state.isAnonymous) {
          Session session;

          failureOrSuccess.fold(
            (_) {},
            (success) {
              if (success is SessionFetchedSCS) {
                session = success.session;
              }
            },
          );

          add(SplashDatabaseEvent.sessionFetchedEVT(session));
        }
      },
      placeholdersLoadedEVT: (event) async* {
        final failureOrSuccess = await _localPlaceholderDatabaseFacade
            .initializePlaceholders(event.placeholders);
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          configDatabaseFailureOrSuccessOption: none(),
          isUpdating: callSuccess,
          placeholderDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          sessionDatabaseFailureOrSuccessOption: none(),
          userDatabaseFailureOrSuccessOption: none(),
        );

        if (callSuccess) {
          add(const SplashDatabaseEvent.placeholdersInitializedEVT());
        }
      },
      sessionFetchedEVT: (event) async* {
        final failureOrSuccess =
            await _onlineUserDatabaseFacade.loadUser(event.session.uid);
        final callSuccess = failureOrSuccess.isRight();

        yield state.copyWith(
          configDatabaseFailureOrSuccessOption: none(),
          isUpdating: callSuccess,
          placeholderDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: none(),
          userDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
        );

        if (callSuccess) {
          User user;

          failureOrSuccess
            ..fold(
              (_) {},
              (success) {
                if (success is UserLoadedSCS) {
                  user = success.user;
                }
              },
            );

          add(SplashDatabaseEvent.userLoadedEVT(user));
        }
      },
      userLoadedEVT: (event) async* {
        final session = Session.fromMap(event.user.toMap());

        final failureOrSuccess =
            await _localSessionDatabaseFacade.updateSession(session);

        yield state.copyWith(
          configDatabaseFailureOrSuccessOption: none(),
          isUpdating: false,
          placeholderDatabaseFailureOrSuccessOption: none(),
          sessionDatabaseFailureOrSuccessOption: optionOf(failureOrSuccess),
          userDatabaseFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
