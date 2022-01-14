import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:oxidized/oxidized.dart';

import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/user/isar_user.dart';
import 'package:wine/infrastructure/user/user_dto.dart';

/// @nodoc
@LazySingleton(
  as: ISessionsRepository,
  env: [Environment.dev, Environment.prod],
)
class SessionsRepository implements ISessionsRepository {
  /// @nodoc
  SessionsRepository(
    this._firebaseAuth,
    this._isar,
  );

  final auth.FirebaseAuth _firebaseAuth;
  final Isar _isar;

  @override
  Future<Result<Unit, SessionsFailure>> deleteSession() async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      return _isar.writeTxn((isar) async {
        final isDeleted = await isar.isarUsers
            .where()
            .uidEqualTo(firebaseUser.uid)
            .deleteFirst();

        if (isDeleted) {
          return Ok(unit);
        }
        return Err(const SessionsFailure.sessionNotDeleted());
      });
    }
    return Err(const SessionsFailure.sessionNotDeleted());
  }

  @override
  Future<Result<User, SessionsFailure>> fetchSession() async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      final session = await _isar.isarUsers
          .where()
          .uidEqualTo(firebaseUser.uid)
          .findFirst();

      if (session != null) {
        return Ok(session.toDomain());
      }
    }
    return Err(const SessionsFailure.sessionNotFound());
  }

  @override
  Future<Result<Unit, SessionsFailure>> insertSession(User user) async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      var userAdapter = UserDTO.fromDomain(user).toAdapter();
      var session = await _isar.isarUsers
          .where()
          .uidEqualTo(firebaseUser.uid)
          .findFirst();

      if (session != null) {
        userAdapter = userAdapter.copyWith(id: session.id);
      }

      await _isar.writeTxn((isar) async {
        await isar.isarUsers.put(userAdapter);
      });

      session = await _isar.isarUsers
          .where()
          .uidEqualTo(firebaseUser.uid)
          .findFirst();

      if (session != null &&
          session.updatedAt.compareTo(userAdapter.updatedAt) >= 0) {
        return Ok(unit);
      }
    }
    return Err(const SessionsFailure.sessionNotInserted());
  }
}
