import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_dialog_state.application.dart';
part 'auth_dialog_cubit.application.freezed.dart';

/// @nodoc
@Environment(Environment.dev)
@Environment(Environment.prod)
@injectable
class AuthDialogCubit extends Cubit<AuthDialogState> {
  /// @nodoc
  AuthDialogCubit() : super(const AuthDialogState.initial());

  /// @nodoc
  void updateLayout() {
    state.maybeMap(
      signUp: (_) {
        emit(const AuthDialogState.logIn());
      },
      orElse: () {
        emit(const AuthDialogState.signUp());
      },
    );
  }
}
