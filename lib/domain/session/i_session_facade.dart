import 'package:dartz/dartz.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/domain/session/session_failure.dart';

/// @nodoc
abstract class ISessionFacade {
  /// @nodoc
  Future<Either<SessionFailure, Unit>> createSession(User user);

  /// @nodoc
  Future<Either<SessionFailure, Unit>> deleteSession();

  /// @nodoc
  Future<Either<SessionFailure, User>> fetchSession();

  /// @nodoc
  Future<Either<SessionFailure, Unit>> updateSession(
    User user,
  );
}
