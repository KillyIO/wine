import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';

abstract class ILocalPlaceholderDatabaseFacade {
  Future<Either<DatabaseFailure, DatabaseSuccess>> fetchPlaceholderUrlByKey(String key);
  Future<Either<DatabaseFailure, DatabaseSuccess>> savePlaceholderUrls(Map<String, String> urls);
}