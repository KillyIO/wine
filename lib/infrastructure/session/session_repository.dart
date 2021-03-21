import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/session/i_session_repository.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/user/user_dto.dart';

/// @nodoc
@LazySingleton(as: ISessionRepository)
class SessionRepository implements ISessionRepository {
  /// @nodoc
  SessionRepository(
    this._firebaseAuth,
    this._sessionsBox,
  );

  final auth.FirebaseAuth _firebaseAuth;

  /// @nodoc
  final Box<Map<String, dynamic>> _sessionsBox;

  @override
  Future<Either<SessionFailure, Unit>> createSession() async {
    final firebaseUser = _firebaseAuth.currentUser;

    await _sessionsBox.put(firebaseUser.uid, {});

    if (_sessionsBox.get(firebaseUser.uid) != null) return right(unit);

    return left(const SessionFailure.sessionNotCreated());
  }

  @override
  Future<Either<SessionFailure, Unit>> deleteSession() async {
    final firebaseUser = _firebaseAuth.currentUser;

    await _sessionsBox.delete(firebaseUser.uid);

    if (_sessionsBox.get(firebaseUser.uid) != null) {
      return left(const SessionFailure.sessionNotDeleted());
    }
    return right(unit);
  }

  @override
  Either<SessionFailure, User> fetchSession() {
    final firebaseUser = _firebaseAuth.currentUser;

    final session = _sessionsBox.get(firebaseUser.uid);

    if (session != null) {
      return right(session.toDomain());
    }
    return left(const SessionFailure.sessionNotFound());
  }

  @override
  Future<Either<SessionFailure, Unit>> updateSession(User user) async {
    final firebaseUser = _firebaseAuth.currentUser;

    final userAsMap = UserDTO.fromDomain(user).toJson();
    await _sessionsBox.put(firebaseUser.uid, userAsMap);

    if (_sessionsBox.get(firebaseUser.uid) == userAsMap) return right(unit);

    return left(const SessionFailure.sessionNotUpdated());
  }
}
