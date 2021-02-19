import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/authentication/failures/authentication_failure.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';

part 'settings_authentication_bloc.freezed.dart';
part 'settings_authentication_event.dart';
part 'settings_authentication_state.dart';

/// @nodoc
@injectable
class SettingsAuthenticationBloc
    extends Bloc<SettingsAuthenticationEvent, SettingsAuthenticationState> {
  /// @nodoc
  SettingsAuthenticationBloc(this._authenticationFacade)
      : super(SettingsAuthenticationState.initial());

  final IAuthenticationFacade _authenticationFacade;

  @override
  Stream<SettingsAuthenticationState> mapEventToState(
      SettingsAuthenticationEvent event) async* {
    yield* event.map(
      signOutPressed: (event) async* {
        Either<AuthenticationFailure, Unit> failureOrSuccess;

        yield state.copyWith(
          authenticationOption: none(),
          isSigningOut: true,
        );

        failureOrSuccess = await _authenticationFacade.signOut();

        yield state.copyWith(
          authenticationOption: optionOf(failureOrSuccess),
          isSigningOut: false,
        );
      },
      resetBloc: (event) async* {
        yield state.copyWith(
          authenticationOption: none(),
          isSigningOut: false,
        );
      },
    );
  }
}
