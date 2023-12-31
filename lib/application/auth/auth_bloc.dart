import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/user/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthChanged>((_, emit) async {
      await _authSubscription?.cancel();
      _authSubscription = _authFacade.authStateChanges.listen(
        (user) => user.match(
          (some) => add(const AuthEvent.changedToAuthenticated()),
          () => add(const AuthEvent.changedToAnonymous()),
        ),
      );
    });
    on<ChangedToAnonymous>((_, emit) => emit(const AuthState.anonymous()));
    on<ChangedToAuthenticated>(
      (_, emit) => emit(const AuthState.authenticated()),
    );
  }

  final IAuthFacade _authFacade;

  StreamSubscription<Option<User>>? _authSubscription;

  @override
  Future<void> close() {
    _authSubscription?.cancel();

    return super.close();
  }
}
