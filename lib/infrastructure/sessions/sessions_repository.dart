import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/user/hive_user.dart';
import 'package:wine/infrastructure/user/user_dto.dart';
import 'package:wine/utils/constants/boxes.dart';

/// @nodoc
@LazySingleton(as: ISessionsRepository, env: ['dev', 'prod'])
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
  Future<Either<SessionsFailure, Unit>> createSession() async {
    final box = await _hive.openBox<HiveUser>(sessionsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    await box.put(firebaseUser.uid, const HiveUser());

    if (box.get(firebaseUser.uid) != null) return right(unit);

    return left(const SessionsFailure.sessionNotCreated());
  }

  @override
  Future<Either<SessionsFailure, Unit>> deleteSession() async {
    final box = await _hive.openBox<HiveUser>(sessionsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    await box.delete(firebaseUser.uid);

    if (box.get(firebaseUser.uid) != null) {
      return left(const SessionsFailure.sessionNotDeleted());
    }
    return right(unit);
  }

  @override
  Future<Either<SessionsFailure, User>> fetchSession() async {
    final box = await _hive.openBox<HiveUser>(sessionsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    final session = box.get(firebaseUser.uid);

    if (session != null) {
      return right(session.toDomain());
    }
    return left(const SessionsFailure.sessionNotFound());
  }

  @override
  Future<Either<SessionsFailure, Unit>> updateSession(User user) async {
    final box = await _hive.openBox<HiveUser>(sessionsBox);

    final firebaseUser = _firebaseAuth.currentUser;

    final userAdapter = UserDTO.fromDomain(user).toAdapter();
    await box.put(firebaseUser.uid, userAdapter);

    if (box.get(firebaseUser.uid) == userAdapter) return right(unit);

    return left(const SessionsFailure.sessionNotUpdated());
  }
}
