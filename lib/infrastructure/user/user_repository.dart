import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';
import 'package:wine/infrastructure/user/user_dto.dart';
import 'package:wine/utils/paths/users.dart';

/// @nodoc
@LazySingleton(as: IUserRepository, env: ['dev', 'prod'])
class UserRepository extends IUserRepository {
  /// @nodoc
  UserRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<UserFailure, Unit>> checkUsernameAvailability(
    Username username,
  ) async {
    final usernameStr = username.getOrCrash();

    try {
      final documentSnapshot = await _firestore
          .collection(usernameUIDMapPath)
          .doc(usernameStr)
          .get();

      if (documentSnapshot.exists) {
        return left(const UserFailure.usernameAlreadyInUse());
      }
      return right(unit);
    } on FirebaseException catch (_) {
      return left(const UserFailure.serverError());
    } catch (_) {
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, User>> loadUser(String userUID) async {
    try {
      final documentSnapshot =
          await _firestore.collection(usersPath).doc(userUID).get();

      if (documentSnapshot != null && documentSnapshot.exists) {
        final user = UserDTO.fromFirestore(documentSnapshot).toDomain();
        return right(user);
      }
      return left(const UserFailure.userNotFound());
    } on FirebaseException catch (_) {
      return left(const UserFailure.serverError());
    } catch (_) {
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> saveDetailsFromUser(User user) async {
    try {
      final usersRef =
          _firestore.collection(usersPath).doc(user.uid.getOrCrash());

      final userDTO = UserDTO.fromDomain(user);
      await usersRef.set(userDTO.toJson(), SetOptions(merge: true));

      return right(unit);
    } on FirebaseException catch (_) {
      return left(const UserFailure.serverError());
    } catch (_) {
      return left(const UserFailure.unexpected());
    }
  }

  @override
  Future<Either<UserFailure, Unit>> saveUsername(
    String userUID,
    Username username,
  ) async {
    final usernameStr = username.getOrCrash();

    try {
      final mapReference =
          _firestore.collection(usernameUIDMapPath).doc(usernameStr);

      await mapReference.set({'uid': userUID}, SetOptions(merge: true));

      return right(unit);
    } on FirebaseException catch (_) {
      return left(const UserFailure.serverError());
    } catch (_) {
      return left(const UserFailure.unexpected());
    }
  }
}
