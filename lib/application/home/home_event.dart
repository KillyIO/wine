part of 'home_bloc.dart';

/// @nodoc
@freezed
class HomeEvent with _$HomeEvent {
  /// @nodoc
  const factory HomeEvent.loadNewTree() = LoadNewTree;

  /// @nodoc
  const factory HomeEvent.loadTopTree() = LoadTopTree;

  /// @nodoc
  const factory HomeEvent.loadTreeByGenre(String key) = LoadTreeByGenre;

  /// @nodoc
  const factory HomeEvent.loadTreeByLanguage(String key) = LoadTreeByLanguage;

  /// @nodoc
  const factory HomeEvent.loadTreeByTime(String key) = LoadTreeByTime;

  /// @nodoc
  const factory HomeEvent.pageViewIndexChanged(int index) =
      PageViewIndexChanged;
}
