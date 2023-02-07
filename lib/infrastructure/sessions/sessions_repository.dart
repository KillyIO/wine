import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/unique_id.dart';
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
      return _isar.writeTxn(() async {
        final isDeleted = await _isar.users
            .where()
            .uidEqualTo(firebaseUser.uid)
            .deleteFirst();

        if (isDeleted) {
          return const Ok(unit);
        }
        return const Err(SessionsFailure.sessionNotDeleted());
      });
    }
    return const Err(SessionsFailure.sessionNotDeleted());
  }

  @override
  Future<Result<User, SessionsFailure>> fetchSession() async {
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      final session =
          await _isar.users.where().uidEqualTo(firebaseUser.uid).findFirst();

      if (session != null) {
        return Ok(session.toDomain());
      }
    }
    return const Err(SessionsFailure.sessionNotFound());
  }

  @override
  Future<Result<Unit, SessionsFailure>> insertSession(User user) async {
    var tmpUser = user;
    final firebaseUser = _firebaseAuth.currentUser;

    if (firebaseUser != null) {
      if (firebaseUser.isAnonymous) {
        tmpUser = tmpUser.copyWith(
          uid: UniqueID.fromUniqueString(firebaseUser.uid),
        );
      }

      var userAdapter = UserDTO.fromDomain(tmpUser).toAdapter();
      var session =
          await _isar.users.where().uidEqualTo(firebaseUser.uid).findFirst();

      if (session != null) {
        userAdapter = userAdapter.copyWith(id: session.id);
      }

      await _isar.writeTxn(() async {
        await _isar.users.put(userAdapter);
      });

      session =
          await _isar.users.where().uidEqualTo(firebaseUser.uid).findFirst();

      if (session != null &&
          session.updatedAt.compareTo(userAdapter.updatedAt) >= 0) {
        return const Ok(unit);
      }
    }
    return const Err(SessionsFailure.sessionNotInserted());
  }
}
