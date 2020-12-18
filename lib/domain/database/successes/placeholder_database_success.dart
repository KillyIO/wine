import 'package:freezed_annotation/freezed_annotation.dart';

part 'placeholder_database_success.freezed.dart';

/// @nodoc
@freezed
abstract class PlaceholderDatabaseSuccess with _$PlaceholderDatabaseSuccess {
  // SECTION Placeholders local
  /// @nodoc
  const factory PlaceholderDatabaseSuccess.placeholderFetchedSCS(
    String placeholder,
  ) = PlaceholderFetchedSCS;

  /// @nodoc
  const factory PlaceholderDatabaseSuccess.placeholdersInitializedSCS() =
      PlaceholdersInitializedSCS;

  // SECTION Placeholders online
  /// @nodoc
  const factory PlaceholderDatabaseSuccess.placeholdersLoadedSCS(
    Map<String, String> placeholders,
  ) = PlaceholdersLoadedSCS;
}
