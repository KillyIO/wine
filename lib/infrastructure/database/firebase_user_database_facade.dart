import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/database/facades/online/i_user_database_facade.dart';

import 'package:wine/domain/database/failures/user_database_failure.dart';
import 'package:wine/domain/database/successes/user_database_success.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/paths/users.dart';

/// @nodoc
@LazySingleton(as: IUserDatabaseFacade)
class FirebaseUserDatabaseFacade extends IUserDatabaseFacade {
  /// @nodoc
  FirebaseUserDatabaseFacade(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<UserDatabaseFailure, UserDatabaseSuccess>> loadUser(
    String userUID,
  ) async {
    try {
      final documentSnapshot =
          await _firestore.collection(usersPath).doc(userUID).get();

      if (documentSnapshot != null && documentSnapshot.exists) {
        final user = User.fromFirestore(documentSnapshot);
        return right(UserDatabaseSuccess.userLoadedSuccess(user));
      }
      return left(const UserDatabaseFailure.userNotFoundFailure());
    } on FirebaseException catch (_) {
      return left(const UserDatabaseFailure.serverFailure());
    } catch (_) {
      return left(const UserDatabaseFailure.unexpectedFailure());
    }
  }

  @override
  Future<Either<UserDatabaseFailure, UserDatabaseSuccess>> saveDetailsFromUser(
    User user,
  ) async {
    try {
      var finalUser = user;

      final usersRef = _firestore.collection(usersPath).doc(finalUser.uid);

      final failureOrSuccess = await loadUser(finalUser.uid);

      User dbUser;
      failureOrSuccess.fold(
        (_) {},
        (success) {
          if (success is UserLoadedSuccess) {
            dbUser = success.user;
          }
        },
      );

      if (dbUser != null) {
        finalUser =
            dbUser.copyWith(updatedAt: DateTime.now().millisecondsSinceEpoch);
      }

      await usersRef.set(finalUser.toMap(), SetOptions(merge: true));

      return right(UserDatabaseSuccess.userDetailsSavedSuccess(finalUser));
    } on FirebaseException catch (_) {
      return left(const UserDatabaseFailure.serverFailure());
    } catch (_) {
      return left(const UserDatabaseFailure.unexpectedFailure());
    }
  }

  @override
  Future<Either<UserDatabaseFailure, UserDatabaseSuccess>> saveUsername(
    String userUID,
    Username username,
  ) async {
    try {
      final usernameStr = username.getOrCrash();

      final mapReference =
          _firestore.collection(usernameUIDMapPath).doc(usernameStr);

      await mapReference.set({'uid': userUID}, SetOptions(merge: true));

      return right(UserDatabaseSuccess.usernameSavedSuccess(usernameStr));
    } on FirebaseException catch (_) {
      return left(const UserDatabaseFailure.serverFailure());
    } catch (_) {
      return left(const UserDatabaseFailure.unexpectedFailure());
    }
  }
}
