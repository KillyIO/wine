part of 'library_navigation_bloc.dart';

/// @nodoc
@freezed
abstract class LibraryNavigationEvent with _$LibraryNavigationEvent {
  /// @nodoc
  const factory LibraryNavigationEvent.pageViewIndexChangedEVT(int index) =
      PageViewIndexChangedEVT;

  /// @nodoc
  const factory LibraryNavigationEvent.resetBlocEVT() = ResetBlocEVT;

  /// @nodoc
  const factory LibraryNavigationEvent.verticalNavbarIndexChangedEVT(
    int index,
  ) = VerticalNavbarIndexChangedEVT;
}
