part of 'core_miscellaneous_bloc.dart';

/// @nodoc
@freezed
abstract class CoreMiscellaneousState with _$CoreMiscellaneousState {
  /// @nodoc
  const factory CoreMiscellaneousState({
    @required String deviceLocale,
  }) = _CoreMiscellaneousState;

  /// @nodoc
  factory CoreMiscellaneousState.initial() => const CoreMiscellaneousState(
        deviceLocale: '',
      );
}
