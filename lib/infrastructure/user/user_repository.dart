import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';
import 'package:wine/infrastructure/user/user_dto.dart';
import 'package:wine/utils/constants/users.dart';
import 'package:wine/utils/paths/users.dart';

/// @nodoc
@LazySingleton(
  as: IUserRepository,
  env: [Environment.dev, Environment.prod],
)
class UserRepository implements IUserRepository {
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
        return Err(const UserFailure.usernameAlreadyInUse());
      }
      return Ok(unit);
    } on FirebaseException catch (_) {
      return Err(const UserFailure.serverError());
    } catch (_) {
      return Err(const UserFailure.unexpected());
    }
  }

  @override
  Future<Result<User, UserFailure>> loadUser(UniqueID userUID) async {
    try {
      final user = await _firestore
          .collection(usersPath)
          .withConverter<User>(
            fromFirestore: (snapshot, _) {
              if (snapshot.exists) {
                return UserDTO.fromJson(snapshot.data()!).toDomain();
              }
              return User(
                emailAddress: EmailAddress(defaultEmailAddress),
                uid: UniqueID.fromUniqueString(snapshot.id),
                username: Username(defaultUsername),
              );
            },
            toFirestore: (value, _) => UserDTO.fromDomain(value).toJson(),
          )
          .doc(userUID.getOrCrash())
          .get()
          .then((s) => s.data());

      if (user != null) {
        return Ok(user);
      }
      return Err(const UserFailure.userNotFound());
    } on FirebaseException catch (_) {
      return Err(const UserFailure.serverError());
    } catch (_) {
      return Err(const UserFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, UserFailure>> saveDetailsFromUser(User user) async {
    try {
      final usersRef = _firestore
          .collection(usersPath)
          .withConverter<User>(
            fromFirestore: (snapshot, _) =>
                UserDTO.fromJson(snapshot.data()!).toDomain(),
            toFirestore: (value, _) => UserDTO.fromDomain(value).toJson(),
          )
          .doc(user.uid.getOrCrash());

      await usersRef.set(user, SetOptions(merge: true));

      return Ok(unit);
    } on FirebaseException catch (_) {
      return Err(const UserFailure.serverError());
    } catch (_) {
      return Err(const UserFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, UserFailure>> saveUsername(
    UniqueID userUID,
    Username username,
  ) async {
    final uid = userUID.getOrCrash();
    final usernameStr = username.getOrCrash();

    try {
      final mapReference =
          _firestore.collection(usernameUIDMapPath).doc(usernameStr);

      await mapReference
          .set(<String, dynamic>{'uid': uid}, SetOptions(merge: true));

      return Ok(unit);
    } on FirebaseException catch (_) {
      return Err(const UserFailure.serverError());
    } catch (_) {
      return Err(const UserFailure.unexpected());
    }
  }
}
