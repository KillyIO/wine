part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.anonymous() = _Anonymous;

  const factory AuthState.authenticated() = _Authenticated;

  const factory AuthState.initial() = _Initial;
}
