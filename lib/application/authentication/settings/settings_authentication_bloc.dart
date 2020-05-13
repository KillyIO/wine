import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';

part 'settings_authentication_event.dart';
part 'settings_authentication_state.dart';

part 'settings_authentication_bloc.freezed.dart';

@injectable
class SettingsAuthenticationBloc
    extends Bloc<SettingsAuthenticationEvent, SettingsAuthenticationState> {
  final IAuthenticationFacade _authenticationFacade;

  SettingsAuthenticationBloc(this._authenticationFacade);

  @override
  SettingsAuthenticationState get initialState =>
      SettingsAuthenticationState.initial();

  @override
  Stream<SettingsAuthenticationState> mapEventToState(
    SettingsAuthenticationEvent event,
  ) async* {
    yield* event.map(
      signOutPressed: (event) async* {
        Either<AuthenticationFailure, Unit> failureOrSuccess;
        bool isUserSignedOut = false;

        yield state.copyWith(
          isSigningOut: true,
          authenticationFailureOrSuccessOption: none(),
        );

        failureOrSuccess = await _authenticationFacade.signOut();
        failureOrSuccess.fold(
          (_) {},
          (success) => isUserSignedOut = true,
        );

        yield state.copyWith(
          isSigningOut: false,
          isUserSignedOut: isUserSignedOut,
          authenticationFailureOrSuccessOption: optionOf(failureOrSuccess),
        );
      },
      resetSettingsAuthenticationBloc: (event) async* {
        yield state.copyWith(
          isSigningOut: false,
          isUserSignedOut: false,
          authenticationFailureOrSuccessOption: none(),
        );
      },
    );
  }
}
