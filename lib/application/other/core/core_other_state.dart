part of 'core_other_bloc.dart';

/// @nodoc
@freezed
abstract class CoreOtherState with _$CoreOtherState {
  /// @nodoc
  const factory CoreOtherState({
    @required String deviceLocale,
  }) = _CoreOtherState;

  /// @nodoc
  factory CoreOtherState.initial() => const CoreOtherState(
        deviceLocale: '',
      );
}
