part of 'library_navigation_bloc.dart';

/// @nodoc
@freezed
abstract class LibraryNavigationState with _$LibraryNavigationState {
  /// @nodoc
  const factory LibraryNavigationState({
    @required int currentPageViewIdx,
    @required int currentVerticalNavbarIdx,
  }) = _LibraryNavigationState;

  /// @nodoc
  factory LibraryNavigationState.initial() => const LibraryNavigationState(
        currentPageViewIdx: 0,
        currentVerticalNavbarIdx: 0,
      );
}
