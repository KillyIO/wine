part of 'setup_bloc.dart';

@freezed
sealed class SetupState with _$SetupState {
  const factory SetupState.content() = _Content;

  const factory SetupState.failure(CoreFailure failure) = _Failure;

  const factory SetupState.initial() = _Initial;
}
