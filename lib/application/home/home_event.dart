part of 'home_bloc.dart';

/// @nodoc
@freezed
abstract class HomeEvent with _$HomeEvent {
  /// @nodoc
  const factory HomeEvent.homePageLaunched() = HomePageLaunched;

  /// @nodoc
  const factory HomeEvent.loadSeriesByGenre(String key) = LoadSeriesByGenre;

  /// @nodoc
  const factory HomeEvent.loadSeriesByLanguage(String key) =
      LoadSeriesByLanguage;

  /// @nodoc
  const factory HomeEvent.loadSeriesByTime(String key) = LoadSeriesByTime;
}
