import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/models/hive/session.dart';

abstract class ILocalSessionDatabaseFacade {
  Future<Either<DatabaseFailure, DatabaseSuccess>> deleteSession();
  Future<Either<DatabaseFailure, DatabaseSuccess>> fetchSession();
  Future<Either<DatabaseFailure, DatabaseSuccess>> saveSession(Session session);
  Future<Either<DatabaseFailure, DatabaseSuccess>> updateSession(Session session);
}
