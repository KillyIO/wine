part of 'series_bloc.dart';

/// @nodoc
@freezed
class SeriesEvent with _$SeriesEvent {
  /// @nodoc
  const factory SeriesEvent.fetchSession() = FetchSession;

  /// @nodoc
  const factory SeriesEvent.launchWithID(
    UniqueID id, {
    Series? series,
  }) = LaunchWithID;

  /// @nodoc
  const factory SeriesEvent.loadAuthor() = LoadAuthor;
}
