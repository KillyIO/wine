part of 'core_outlier_bloc.dart';

@freezed
abstract class CoreOutlierEvent with _$CoreOutlierEvent {
  const factory CoreOutlierEvent.appLaunchedEVT() = AppLaunchedEVT;
}
