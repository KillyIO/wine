part of 'home_bloc.dart';

/// @nodoc
@freezed
class HomeEvent with _$HomeEvent {
  /// @nodoc
  const factory HomeEvent.initBloc() = InitBloc;

  /// @nodoc
  const factory HomeEvent.loadNewSeries() = LoadNewSeries;

  /// @nodoc
  const factory HomeEvent.loadNewSeries() = LoadNewSeries;

  /// @nodoc
  const factory HomeEvent.loadSeriesByGenre(String key) = LoadSeriesByGenre;

  /// @nodoc
  const factory HomeEvent.loadSeriesByLanguage(String key) =
      LoadSeriesByLanguage;

  /// @nodoc
  const factory HomeEvent.loadSeriesByTime(String key) = LoadSeriesByTime;

  /// @nodoc
  const factory HomeEvent.loadTopSeries() = LoadTopSeries;
}
