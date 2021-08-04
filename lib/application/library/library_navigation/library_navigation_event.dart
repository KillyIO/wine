part of 'library_navigation_bloc.dart';

/// @nodoc
@freezed
class LibraryNavigationEvent with _$LibraryNavigationEvent {
  /// @nodoc
  const factory LibraryNavigationEvent.pageViewIndexChanged(int index) =
      PageViewIndexChanged;

  /// @nodoc
  const factory LibraryNavigationEvent.verticalNavbarIndexChanged(int index) =
      VerticalNavbarIndexChanged;
}
