import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';

import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/user/hive_user.dart';
import 'package:wine/infrastructure/user/user_dto.dart';
import 'package:wine/utils/constants/boxes.dart';
import 'package:wine/utils/constants/users.dart';

/// @nodoc
@LazySingleton(
  as: ISessionsRepository,
  env: [Environment.dev, Environment.prod],
)
class SessionsRepository implements ISessionsRepository {
  /// @nodoc
  SessionsRepository(
    this._firebaseAuth,
    this._hive,
  );

  final auth.FirebaseAuth _firebaseAuth;

  /// @nodoc
  final HiveInterface _hive;

  @override
  Future<Result<Unit, SessionsFailure>> createSession() async {
    final box = await _hive.openBox<HiveUser>(sessionsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      await box.put(
        firebaseUser.uid,
        HiveUser(
          emailAddress: defaultEmailAddress,
          uid: firebaseUser.uid,
          username: defaultUsername,
        ),
      );
    }

    if (box.get(firebaseUser?.uid) != null) return Ok(unit);

    return Err(const SessionsFailure.sessionNotCreated());
  }

  @override
  Future<Result<Unit, SessionsFailure>> deleteSession() async {
    final box = await _hive.openBox<HiveUser>(sessionsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      await box.delete(firebaseUser.uid);
    }

    if (box.get(firebaseUser?.uid) != null) {
      return Err(const SessionsFailure.sessionNotDeleted());
    }
    return Ok(unit);
  }

  @override
  Future<Result<User, SessionsFailure>> fetchSession() async {
    final box = await _hive.openBox<HiveUser>(sessionsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    final session = box.get(firebaseUser?.uid);

    if (session != null) {
      return Ok(session.toDomain());
    }
    return Err(const SessionsFailure.sessionNotFound());
  }

  @override
  Future<Result<Unit, SessionsFailure>> updateSession(User user) async {
    final box = await _hive.openBox<HiveUser>(sessionsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    final userAdapter = UserDTO.fromDomain(user).toAdapter();

    if (firebaseUser != null) {
      await box.put(firebaseUser.uid, userAdapter);
    }

    if (box.get(firebaseUser?.uid) == userAdapter) return Ok(unit);

    return Err(const SessionsFailure.sessionNotUpdated());
  }
}
