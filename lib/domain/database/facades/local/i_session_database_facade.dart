import 'package:dartz/dartz.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/successes/session_database_success.dart';
import 'package:wine/domain/models/user.dart';

/// @nodoc
abstract class ISessionDatabaseFacade {
  /// @nodoc
  Future<Either<DatabaseFailure, SessionDatabaseSuccess>> deleteSession();

  /// @nodoc
  Future<Either<DatabaseFailure, SessionDatabaseSuccess>> fetchSession();

  /// @nodoc
  Future<Either<DatabaseFailure, SessionDatabaseSuccess>> initializeSession({
    User user,
  });

  /// @nodoc
  Future<Either<DatabaseFailure, SessionDatabaseSuccess>> updateSession(
    User user,
  );
}
