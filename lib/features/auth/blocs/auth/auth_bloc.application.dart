import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/features/auth/i_auth_facade.domain.dart';
import 'package:wine/features/user/user.domain.dart';

part '../auth_event.application.dart';
part '../auth_state.application.dart';
part '../auth_bloc.application.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  /// @nodoc
  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthChanged>((_, emit) async {
      await _authSubscription?.cancel();
      _authSubscription = _authFacade.authStateChanges.listen(
        (user) => user.match(
          (some) => add(const AuthEvent.authenticated()),
          () => add(const AuthEvent.anonymous()),
        ),
      );
    });
    on<Anonymous>((_, emit) => emit(const AuthState.anonymous()));
    on<Authenticated>((_, emit) => emit(const AuthState.authenticated()));
  }

  final IAuthFacade _authFacade;

  StreamSubscription<Option<User>>? _authSubscription;

  @override
  Future<void> close() {
    _authSubscription?.cancel();

    return super.close();
  }
}
