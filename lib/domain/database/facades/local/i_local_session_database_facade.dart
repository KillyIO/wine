import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/domain/models/hive/session.dart';

/// @nodoc
abstract class ILocalSessionDatabaseFacade {
  /// @nodoc
  Future<Either<DatabaseFailure, SessionDatabaseSuccess>> deleteSession();

  /// @nodoc
  Future<Either<DatabaseFailure, SessionDatabaseSuccess>> fetchSession();

  /// @nodoc
  Future<Either<DatabaseFailure, SessionDatabaseSuccess>> initializeSession({
    Session session,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, SessionDatabaseSuccess>> updateSession(
    Session session,
  );
}
