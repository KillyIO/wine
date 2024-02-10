import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/user/user_dto.dart';

@LazySingleton(
  as: ISessionsRepository,
  env: [Environment.dev, Environment.prod],
)
class SharedPreferencesSessionsRepository implements ISessionsRepository {
  SharedPreferencesSessionsRepository(
    this._firebaseAuth,
    this._sharedPreferences,
  );

  final auth.FirebaseAuth _firebaseAuth;
  final SharedPreferences _sharedPreferences;

  @override
  Future<Result<Unit, SessionsFailure>> deleteSession() async {
    try {
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) {
        return const Err(SessionsFailure.sessionNotDeleted());
      }

      return (await _sharedPreferences.remove('users_${firebaseUser.uid}'))
          ? const Ok(unit)
          : const Err(SessionsFailure.sessionNotDeleted());
    } catch (_) {
      return const Err(SessionsFailure.sessionNotDeleted());
    }
  }

  @override
  Future<Result<User, SessionsFailure>> fetchSession() async {
    try {
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) {
        return const Err(SessionsFailure.sessionNotFound());
      }

      final sessionJson =
          _sharedPreferences.getString('users_${firebaseUser.uid}');

      if (sessionJson != null) {
        return Ok(
          UserDTO.fromJson(jsonDecode(sessionJson) as Map<String, dynamic>)
              .toDomain(),
        );
      }
      return const Err(SessionsFailure.sessionNotFound());
    } catch (_) {
      return const Err(SessionsFailure.sessionNotFound());
    }
  }

  @override
  Future<Result<Unit, SessionsFailure>> insertSession(User user) async {
    try {
      var tmpUser = user;
      final firebaseUser = _firebaseAuth.currentUser;

      if (firebaseUser == null) {
        return const Err(SessionsFailure.sessionNotInserted());
      }

      if (firebaseUser.isAnonymous) {
        tmpUser = tmpUser.copyWith(
          uid: UniqueID.fromUniqueString(firebaseUser.uid),
        );
      }

      final result = await _sharedPreferences.setString(
        firebaseUser.uid,
        jsonEncode(
          UserDTO.fromDomain(tmpUser).toJson(),
        ),
      );

      if (result) {
        return const Ok(unit);
      }
      return const Err(SessionsFailure.sessionNotInserted());
    } catch (_) {
      return const Err(SessionsFailure.sessionNotInserted());
    }
  }
}
