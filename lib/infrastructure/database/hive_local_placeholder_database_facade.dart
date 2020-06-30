import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_local_placeholder_database_facade.dart';

@LazySingleton(as: ILocalPlaceholderDatabaseFacade)
class HiveLocalPlaceholderDatabaseFacade implements ILocalPlaceholderDatabaseFacade {
  final Box<String> _placeholdersBox;

  HiveLocalPlaceholderDatabaseFacade(this._placeholdersBox);

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> fetchPlaceholderUrlByKey(String key) async {
    final String url = _placeholdersBox.get(key);

    if (url != null) {
      return right(DatabaseSuccess.placeholderFetchedSCS(url));
    }
    return left(const DatabaseFailure.failedToRetrieveLocalData());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> savePlaceholderUrls(Map<String, String> urls) async {
    for (final String key in urls.keys) {
      await _placeholdersBox.put(key, urls[key]);

      final String url = _placeholdersBox.get(key);
      if (url == null) {
        return left(const DatabaseFailure.failedToCreateLocalData());
      }
    }
    return right(const DatabaseSuccess.placeholdersSavedSCS());
  }
}
