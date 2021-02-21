import 'package:dartz/dartz.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/models/user.dart';
import 'package:wine/domain/session/i_session_facade.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/utils/constants.dart';

/// @nodoc
@LazySingleton(as: ISessionFacade)
class HiveSessionFacade implements ISessionFacade {
  /// @nodoc
  HiveSessionFacade(this._sessionsBox);

  final Box<User> _sessionsBox;

  @override
  Future<Either<SessionFailure, Unit>> deleteSession() async {
    await _sessionsBox.delete(Constants.session);

    final session = _sessionsBox.get(Constants.session);
    if (session != null) {
      return left(const SessionFailure.sessionNotDeleted());
    }
    return right(unit);
  }

  @override
  Future<Either<SessionFailure, User>> fetchSession() async {
    final session = _sessionsBox.get(Constants.session);

    if (session != null) {
      return right(session);
    }
    return left(const SessionFailure.sessionNotFetched());
  }

  @override
  Future<Either<SessionFailure, User>> initializeSession({
    User user,
  }) async {
    await _sessionsBox.put(Constants.session, user ?? User());

    final sessionTest = _sessionsBox.get(Constants.session);
    if (sessionTest != null) return right(user);

    return left(const SessionFailure.sessionNotInitialized());
  }

  @override
  Future<Either<SessionFailure, Unit>> updateSession(User user) async {
    await _sessionsBox.put(Constants.session, user);

    final currentSession = _sessionsBox.get(Constants.session);
    if (currentSession != null) return right(unit);

    return left(const SessionFailure.sessionNotUpdated());
  }
}
