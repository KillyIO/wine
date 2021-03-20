import 'package:dartz/dartz.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/domain/user/user.dart';

/// @nodoc
abstract class ISessionRepository {
  /// @nodoc
  Future<Either<SessionFailure, Unit>> createSession();

  /// @nodoc
  Future<Either<SessionFailure, Unit>> deleteSession();

  /// @nodoc
  Future<Either<SessionFailure, User>> fetchSession();

  /// @nodoc
  Future<Either<SessionFailure, Unit>> updateSession(User user);
}
