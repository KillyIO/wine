import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

/// @nodoc
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  /// @nodoc
  AuthBloc(this._authFacade) : super(const AuthState.initial());

  final IAuthFacade _authFacade;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(authChanged: (_) async* {
      if (_authFacade.isLoggedIn && !_authFacade.isAnonymous) {
        yield const AuthState.authenticated();
      } else {
        yield const AuthState.anonymous();
      }
    });
  }
}
