import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/user/user.dart';

abstract class ISessionsRepository {
  Future<Result<Unit, SessionsFailure>> deleteSession();

  Future<Result<User, SessionsFailure>> fetchSession();

  Future<Result<Unit, SessionsFailure>> insertSession(User user);
}
