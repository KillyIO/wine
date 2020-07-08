part of 'core_outlier_bloc.dart';

@freezed
abstract class CoreOutlierState with _$CoreOutlierState {
  const factory CoreOutlierState({
    @required String deviceLocale,
  }) = _CoreOutlierState;

  factory CoreOutlierState.initial() => const CoreOutlierState(
        deviceLocale: '',
      );
}
