import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/failures/placeholder_database_failure.dart';
import 'package:wine/domain/database/successes/placeholder_database_success.dart';

/// @nodoc
abstract class ILocalPlaceholderDatabaseFacade {
  /// @nodoc
  Future<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
      fetchPlaceholderByKey(String key);

  /// @nodoc
  Future<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
      initializePlaceholders(Map<String, String> urls);
}
