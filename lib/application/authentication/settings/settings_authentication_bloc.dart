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
    if (event is SignOutPressed) {
      Either<AuthenticationFailure, Unit> failureOrSuccess;

      yield state.copyWith(
        isSigningOut: true,
        authenticationFailureOrSuccessOption: none(),
      );
      failureOrSuccess = await _authenticationFacade.signOut();
      yield state.copyWith(
        isSigningOut: false,
        authenticationFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }
  }
}
