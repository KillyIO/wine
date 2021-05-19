import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';
import 'package:wine/infrastructure/user/user_dto.dart';
import 'package:wine/infrastructure/core/firestore_helpers.dart';
import 'package:wine/utils/paths/users.dart';

/// @nodoc
@LazySingleton(as: IUserRepository, env: ['dev', 'prod'])
class UserRepository extends IUserRepository {
  /// @nodoc
  UserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Result<Unit, UserFailure>> checkUsernameAvailability(
    Username username,
  ) async {
    final usernameStr = username.getOrCrash();

    try {
      final documentSnapshot = await _firestore
          .collection(usernameUIDMapPath)
          .doc(usernameStr)
          .get();

      if (documentSnapshot.exists) {
        return const Err(UserFailure.usernameAlreadyInUse());
      }
      return const Ok(Unit());
    } on FirebaseException catch (_) {
      return const Err(UserFailure.serverError());
    } catch (_) {
      return const Err(UserFailure.unexpected());
    }
  }

  @override
  Future<Result<User, UserFailure>> loadUser(String userUID) async {
    try {
      final user = await _firestore.usersCollectionReference
          .doc(userUID)
          .get()
          .then((s) {
        if (!s.exists) return null;
        return s.data() as User;
      });

      if (user != null) {
        return Ok(user);
      }
      return const Err(UserFailure.userNotFound());
    } on FirebaseException catch (_) {
      return const Err(UserFailure.serverError());
    } catch (_) {
      return const Err(UserFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, UserFailure>> saveDetailsFromUser(User user) async {
    try {
      final usersRef =
          _firestore.usersCollectionReference.doc(user.uid.getOrCrash());

      await usersRef.set(user, SetOptions(merge: true));

      return const Ok(Unit());
    } on FirebaseException catch (_) {
      return const Err(UserFailure.serverError());
    } catch (_) {
      return const Err(UserFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, UserFailure>> saveUsername(
    String userUID,
    Username username,
  ) async {
    final usernameStr = username.getOrCrash();

    try {
      final mapReference =
          _firestore.collection(usernameUIDMapPath).doc(usernameStr);

      await mapReference.set({'uid': userUID}, SetOptions(merge: true));

      return const Ok(Unit());
    } on FirebaseException catch (_) {
      return const Err(UserFailure.serverError());
    } catch (_) {
      return const Err(UserFailure.unexpected());
    }
  }
}
