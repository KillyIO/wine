import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/models/hive/session.dart';

abstract class ILocalSessionDatabaseFacade {
  Future<Either<DatabaseFailure, Unit>> saveSession(Session session);
  Future<Either<DatabaseFailure, Session>> getSession();
  Future<Either<DatabaseFailure, Unit>> updateSession(Session session);
  Future<Either<DatabaseFailure, Unit>> deleteSession();
}
