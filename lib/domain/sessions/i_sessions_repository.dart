import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/user/user.dart';

/// @nodoc
abstract class ISessionsRepository {
  /// @nodoc
  Future<Result<SessionsFailure, Unit>> createSession();

  /// @nodoc
  Future<Result<SessionsFailure, Unit>> deleteSession();

  /// @nodoc
  Future<Result<SessionsFailure, User>> fetchSession();

  /// @nodoc
  Future<Result<SessionsFailure, Unit>> updateSession(User user);
}
