import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/facades/local/i_local_placeholder_database_facade.dart';
import 'package:wine/domain/database/failures/placeholder_database_failure.dart';
import 'package:wine/domain/database/successes/placeholder_database_success.dart';

/// @nodoc
@LazySingleton(as: ILocalPlaceholderDatabaseFacade)
class HivePlaceholderDatabaseFacade implements ILocalPlaceholderDatabaseFacade {
  /// @nodoc
  HivePlaceholderDatabaseFacade(this._placeholdersBox);

  final Box<String> _placeholdersBox;

  @override
  Future<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
      fetchPlaceholderByKey(String key) async {
    final url = _placeholdersBox.get(key);

    if (url != null) {
      return right(PlaceholderDatabaseSuccess.placeholderFetchedSCS(url));
    }
    return left(const PlaceholderDatabaseFailure.failedToFetchPlaceholderFLR());
  }

  @override
  Future<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
      initializePlaceholders(Map<String, String> urls) async {
    for (final key in urls.keys) {
      await _placeholdersBox.put(key, urls[key]);

      final url = _placeholdersBox.get(key);
      if (url == null) {
        return left(const PlaceholderDatabaseFailure
            .failedToInitializePlaceholdersFLR());
      }
    }
    return right(const PlaceholderDatabaseSuccess.placeholdersInitializedSCS());
  }
}
