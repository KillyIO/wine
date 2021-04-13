import 'package:freezed_annotation/freezed_annotation.dart';

part 'series_failure.freezed.dart';

/// @nodoc#
@freezed
abstract class SeriesFailure with _$SeriesFailure {
  /// @nodoc
  const factory SeriesFailure.serverError() = ServerError;

  /// @nodoc
  const factory SeriesFailure.unexpected() = Unexpected;
}
