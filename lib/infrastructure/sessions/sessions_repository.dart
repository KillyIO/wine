import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:oxidized/oxidized.dart';

import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/user/isar_user.dart';
import 'package:wine/infrastructure/user/user_dto.dart';
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
    this._isar,
  );

  final auth.FirebaseAuth _firebaseAuth;

  /// @nodoc
  final Isar _isar;

  @override
  Future<Result<Unit, SessionsFailure>> createSession() async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      return _isar.writeTxn((isar) async {
        final session = await isar.isarUsers
            .where()
            .uidEqualTo(firebaseUser.uid)
            .findFirst();

        if (session == null) {
          await isar.isarUsers.put(
            IsarUser(
              emailAddress: defaultEmailAddress,
              uid: firebaseUser.uid,
              username: defaultUsername,
            ),
          );
        }

        return Ok(unit);
      });
    }
    return Err(const SessionsFailure.sessionNotCreated());
  }

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
  Future<Result<Unit, SessionsFailure>> updateSession(User user) async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      var session = await _isar.isarUsers
          .where()
          .uidEqualTo(firebaseUser.uid)
          .findFirst();

      if (session == null) {
        return Err(const SessionsFailure.sessionNotFound());
      }

      final userAdapter =
          UserDTO.fromDomain(user).toAdapter().copyWith(id: session.id);

      await _isar.writeTxn((isar) async {
        await isar.isarUsers.put(userAdapter);
      });

      session = await _isar.isarUsers
          .where()
          .uidEqualTo(firebaseUser.uid)
          .findFirst();

      if (session != null && session == userAdapter) {
        return Ok(unit);
      }
    }
    return Err(const SessionsFailure.sessionNotUpdated());
  }
}
