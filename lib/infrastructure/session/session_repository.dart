import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/session/i_session_repository.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/domain/user/user.dart';

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

    final sessionTest = _sessionsBox.get(firebaseUser.uid);
    if (sessionTest != null) return right(unit);

    return left(const SessionFailure.sessionNotCreated());
  }

  @override
  Future<Either<SessionFailure, Unit>> deleteSession() {
    // TODO: implement deleteSession
    throw UnimplementedError();
  }

  @override
  Future<Either<SessionFailure, User>> fetchSession() {
    // TODO: implement fetchSession
    throw UnimplementedError();
  }

  @override
  Future<Either<SessionFailure, Unit>> updateSession(User user) {
    // TODO: implement updateSession
    throw UnimplementedError();
  }
}
