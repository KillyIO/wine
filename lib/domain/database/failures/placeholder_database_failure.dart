import 'package:freezed_annotation/freezed_annotation.dart';

part 'placeholder_database_failure.freezed.dart';

/// @nodoc
@freezed
abstract class PlaceholderDatabaseFailure with _$PlaceholderDatabaseFailure {
  // SECTION Placeholders local
  /// @nodoc
  const factory PlaceholderDatabaseFailure.failedToFetchPlaceholderFLR() =
      FailedToFetchPlaceholderFLR;

  /// @nodoc
  const factory PlaceholderDatabaseFailure.failedToInitializePlaceholdersFLR() =
      FailedToInitializePlaceholdersFLR;

  // SECTION Placeholders online
  /// @nodoc
  const factory PlaceholderDatabaseFailure.failedToLoadPlaceholdersFLR() =
      FailedToLoadPlaceholdersFLR;
}
