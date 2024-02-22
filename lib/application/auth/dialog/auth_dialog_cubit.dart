import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_dialog_state.dart';
part 'auth_dialog_cubit.freezed.dart';

@injectable
class AuthDialogCubit extends Cubit<AuthDialogState> {
  AuthDialogCubit() : super(const AuthDialogState.initial());

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
