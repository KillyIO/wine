import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import 'package:wine/domain/authentication/i_authentication_facade.dart';

part 'core_authentication_bloc.freezed.dart';
part 'core_authentication_event.dart';
part 'core_authentication_state.dart';

/// @nodoc
@injectable
class CoreAuthenticationBloc
    extends Bloc<CoreAuthenticationEvent, CoreAuthenticationState> {
  /// @nodoc
  CoreAuthenticationBloc(this._authenticationFacade)
      : super(const CoreAuthenticationState.initial());

  final IAuthenticationFacade _authenticationFacade;

  @override
  Stream<CoreAuthenticationState> mapEventToState(
    CoreAuthenticationEvent event,
  ) async* {
    yield* event.map(
      appLaunched: (_) async* {
        yield* _checkAnonymity();
      },
      userAuthenticated: (event) async* {
        yield* _checkAnonymity();
      },
      userLoggedOut: (event) async* {
        yield* _checkAnonymity();
      },
    );
  }

  Stream<CoreAuthenticationState> _checkAnonymity() async* {
    yield const CoreAuthenticationState.checkingUserAnonymity();

    yield CoreAuthenticationState.userAnonymityChecked(
      _authenticationFacade.isAnonymous(),
    );
  }
}
