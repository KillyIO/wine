part of 'core_other_bloc.dart';

/// @nodoc
@freezed
abstract class CoreOtherEvent with _$CoreOtherEvent {
  /// @nodoc
  const factory CoreOtherEvent.appLaunchedEVT() = AppLaunchedEVT;
}
