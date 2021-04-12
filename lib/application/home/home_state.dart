part of 'home_bloc.dart';

/// @nodoc
@freezed
abstract class HomeState with _$HomeState {
  /// @nodoc
  const factory HomeState({
    @required String genreFilterKey,
    @required String languageFilterKey,
    @required String timeFilterKey,
  }) = _HomeState;

  /// @nodoc
  factory HomeState.initial() => const HomeState(
        genreFilterKey: '',
        languageFilterKey: '',
        timeFilterKey: '',
      );
}
