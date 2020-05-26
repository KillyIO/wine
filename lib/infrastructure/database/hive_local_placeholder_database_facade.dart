import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_local_placeholder_database_facade.dart';

@lazySingleton
@RegisterAs(ILocalPlaceholderDatabaseFacade)
class HiveLocalPlaceholderDatabaseFacade
    implements ILocalPlaceholderDatabaseFacade {
  final Box<String> _placeholdersBox;

  HiveLocalPlaceholderDatabaseFacade(this._placeholdersBox);

  @override
  Future<Either<DatabaseFailure, Unit>> savePlaceholderUrls(
    Map<String, String> urls,
  ) async {
    for (final String key in urls.keys) {
      await _placeholdersBox.put(key, urls[key]);

      final String url = _placeholdersBox.get(key);
      if (url == null) {
        return left(const DatabaseFailure.failedToCreateLocalData());
      }
    }
    return right(unit);
  }

  @override
  Future<Either<DatabaseFailure, String>> getPlaceholderUrlByKey(
    String key,
  ) async {
    final String url = _placeholdersBox.get(key);

    if (url != null) {
      return right(url);
    }
    return left(const DatabaseFailure.failedToRetrieveLocalData());
  }
}
