part of 'auth_bloc.application.dart';

/// @nodoc
@freezed
class AuthState with _$AuthState {
  /// @nodoc
  const factory AuthState.anonymous() = _Anonymous;

  /// @nodoc
  const factory AuthState.authenticated() = _Authenticated;

  /// @nodoc
  const factory AuthState.initial() = _Initial;
}
