part of 'core_miscellaneous_bloc.dart';

/// @nodoc
@freezed
abstract class CoreMiscellaneousEvent with _$CoreMiscellaneousEvent {
  /// @nodoc
  const factory CoreMiscellaneousEvent.appLaunched() = AppLaunched;
}
