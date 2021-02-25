import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/authentication/username.dart';

import 'package:wine/domain/models/user.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user_failure.dart';
import 'package:wine/utils/paths/users.dart';

/// @nodoc
@LazySingleton(as: IUserRepository)
class FirebaseUserRepository extends IUserRepository {
  /// @nodoc
  FirebaseUserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<UserFailure, User>> loadUser(
    String userUID,
  ) async {
    try {
      final documentSnapshot =
          await _firestore.collection(usersPath).doc(userUID).get();

      if (documentSnapshot != null && documentSnapshot.exists) {
        final user = User.fromFirestore(documentSnapshot);
        return right(user);
      }
      return left(const UserFailure.userNotFound());
    } on FirebaseException catch (_) {
      return left(const UserFailure.serverError());
    } catch (_) {
      return left(const UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, User>> saveDetailsFromUser(
    User user,
  ) async {
    try {
      var finalUser = user;

      final usersRef = _firestore.collection(usersPath).doc(finalUser.uid);

      final failureOrSuccess = await loadUser(finalUser.uid);

      User dbUser;
      failureOrSuccess.fold(
        (_) {},
        (success) => dbUser = success,
      );

      if (dbUser != null) {
        finalUser =
            dbUser.copyWith(updatedAt: DateTime.now().millisecondsSinceEpoch);
      }

      await usersRef.set(finalUser.toMap(), SetOptions(merge: true));

      return right(finalUser);
    } on FirebaseException catch (_) {
      return left(const UserFailure.serverError());
    } catch (_) {
      return left(const UserFailure.unexpectedError());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> saveUsername(
    String userUID,
    Username username,
  ) async {
    try {
      final usernameStr = username.getOrCrash();

      final mapReference =
          _firestore.collection(usernameUIDMapPath).doc(usernameStr);

      await mapReference.set({'uid': userUID}, SetOptions(merge: true));

      return right(unit);
    } on FirebaseException catch (_) {
      return left(const UserFailure.serverError());
    } catch (_) {
      return left(const UserFailure.unexpectedError());
    }
  }
}
