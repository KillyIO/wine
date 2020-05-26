import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';

abstract class ILocalPlaceholderDatabaseFacade {
  Future<Either<DatabaseFailure, Unit>> savePlaceholderUrls(Map<String, String> urls);
  Future<Either<DatabaseFailure, String>> getPlaceholderUrlByKey(String key);
}