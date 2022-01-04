import 'package:freezed_annotation/freezed_annotation.dart';

part 'series_failure.freezed.dart';

/// @nodoc#
@freezed
class SeriesFailure with _$SeriesFailure {
  /// @nodoc
  const factory SeriesFailure.coverNotUploaded() = CoverNotUploaded;

  /// @nodoc
  const factory SeriesFailure.permissionDenied() = PermissionDenied;

  /// @nodoc
  const factory SeriesFailure.seriesNotFound() = SeriesNotFound;

  /// @nodoc
  const factory SeriesFailure.serverError() = ServerError;

  /// @nodoc
  const factory SeriesFailure.unexpected() = Unexpected;
}
