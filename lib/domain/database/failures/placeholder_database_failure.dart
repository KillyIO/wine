import 'package:freezed_annotation/freezed_annotation.dart';

part 'placeholder_database_failure.freezed.dart';

/// @nodoc
@freezed
abstract class PlaceholderDatabaseFailure with _$PlaceholderDatabaseFailure {
  // SECTION Placeholders local
  /// @nodoc
  const factory PlaceholderDatabaseFailure.placeholderNotFetched() =
      PlaceholderNotFetched;

  /// @nodoc
  const factory PlaceholderDatabaseFailure.placeholdersNotInitialized() =
      PlaceholdersNotInitialized;

  // SECTION Placeholders online
  /// @nodoc
  const factory PlaceholderDatabaseFailure.placeholdersNotLoaded() =
      PlaceholdersNotLoaded;
}
