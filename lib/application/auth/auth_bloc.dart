import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  /// @nodoc
  AuthBloc(this._authFacade) : super(const AuthState.initial());

  final IAuthFacade _authFacade;

  StreamSubscription? _authSubscription;

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      anonymous: (_) async* {
        yield const AuthState.anonymous();
      },
      authChanged: (_) async* {
        await _authSubscription?.cancel();
        _authSubscription = _authFacade.authStateChanges.listen(
          (user) => user.match(
            (some) => add(const AuthEvent.authenticated()),
            () => add(const AuthEvent.anonymous()),
          ),
        );
        // if (_authFacade.isLoggedIn && !_authFacade.isAnonymous) {
        //   yield const AuthState.authenticated();
        // } else {
        //   yield const AuthState.anonymous();
        // }
      },
      authenticated: (_) async* {
        yield const AuthState.authenticated();
      },
    );
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();

    return super.close();
  }
}
