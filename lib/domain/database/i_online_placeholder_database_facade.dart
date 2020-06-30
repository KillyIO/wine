import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';

abstract class IOnlinePlaceholderDatabaseFacade {
  Future<Either<DatabaseFailure, DatabaseSuccess>> getPlaceholderUrls();
}
