import 'package:dartz/dartz.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/user/user.dart';

/// @nodoc
abstract class ISessionsRepository {
  /// @nodoc
  Future<Either<SessionsFailure, Unit>> createSession();

  /// @nodoc
  Future<Either<SessionsFailure, Unit>> deleteSession();

  /// @nodoc
  Future<Either<SessionsFailure, User>> fetchSession();

  /// @nodoc
  Future<Either<SessionsFailure, Unit>> updateSession(User user);
}
