import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/features/user/user.domain.dart';

/// @nodoc
abstract class ISessionsRepository {
  /// @nodoc
  Future<Result<Unit, SessionsFailure>> deleteSession();

  /// @nodoc
  Future<Result<User, SessionsFailure>> fetchSession();

  /// @nodoc
  Future<Result<Unit, SessionsFailure>> insertSession(User user);
}
