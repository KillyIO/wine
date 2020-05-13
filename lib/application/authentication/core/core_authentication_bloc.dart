import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';

part 'core_authentication_event.dart';
part 'core_authentication_state.dart';

part 'core_authentication_bloc.freezed.dart';

@injectable
class CoreAuthenticationBloc
    extends Bloc<CoreAuthenticationEvent, CoreAuthenticationState> {
  final IAuthenticationFacade _authenticationFacade;

  CoreAuthenticationBloc(this._authenticationFacade);

  @override
  CoreAuthenticationState get initialState => CoreAuthenticationState.initial();

  @override
  Stream<CoreAuthenticationState> mapEventToState(
    CoreAuthenticationEvent event,
  ) async* {
    yield* event.map(
      appLaunched: (event) async* {
        yield state.copyWith(
          authenticationFailureOrSuccessOption: none(),
        );

        bool isAnonymous;

        final Either<AuthenticationFailure, dynamic> failureOrSuccess =
            await _authenticationFacade.isAnonymous();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is bool) {
              isAnonymous = success;
            }
          },
        );

        if (isAnonymous != null) {
          yield state.copyWith(
            isAnonymous: isAnonymous,
            authenticationFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }
      },
      authenticationChanged: (event) async* {
        yield state.copyWith(
          authenticationFailureOrSuccessOption: none(),
        );

        bool isAnonymous;

        final Either<AuthenticationFailure, dynamic> failureOrSuccess =
            await _authenticationFacade.isAnonymous();
        failureOrSuccess.fold(
          (_) {},
          (success) {
            if (success is bool) {
              isAnonymous = success;
            }
          },
        );

        if (isAnonymous != null) {
          yield state.copyWith(
            isAnonymous: isAnonymous,
            authenticationFailureOrSuccessOption: optionOf(failureOrSuccess),
          );
        }
      },
    );
  }
}
