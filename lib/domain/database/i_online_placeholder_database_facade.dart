import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';

abstract class IOnlinePlaceholderDatabaseFacade {
  Future<Either<DatabaseFailure, Map<String, String>>> getPlaceholderUrls();
}
