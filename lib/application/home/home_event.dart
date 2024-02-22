part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.init() = Init;

  const factory HomeEvent.pageViewIndexChanged(int index) =
      PageViewIndexChanged;

  const factory HomeEvent.loadNewTree() = LoadNewTree;

  const factory HomeEvent.loadTopTree() = LoadTopTree;

  const factory HomeEvent.loadTreeByGenre(String key) = LoadTreeByGenre;

  const factory HomeEvent.loadTreeByLanguage(String key) = LoadTreeByLanguage;

  const factory HomeEvent.loadTreeByTime(String key) = LoadTreeByTime;
}
