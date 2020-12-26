import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/database/facades/online/i_online_user_database_facade.dart';
import 'package:wine/domain/database/failures/user_database_failure.dart';
import 'package:wine/domain/database/successes/user_database_success.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/paths.dart';

/// @nodoc
@LazySingleton(as: IOnlineUserDatabaseFacade)
class FirebaseOnlineUserDatabaseFacade extends IOnlineUserDatabaseFacade {
  /// @nodoc
  FirebaseOnlineUserDatabaseFacade(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<UserDatabaseFailure, UserDatabaseSuccess>> loadUser(
    String userUID,
  ) async {
    try {
      final documentSnapshot =
          await _firestore.collection(Paths.usersPath).doc(userUID).get();

      if (documentSnapshot != null && documentSnapshot.exists) {
        final user = User.fromFirestore(documentSnapshot);
        return right(UserDatabaseSuccess.userLoadedSuccess(user));
      }
      return left(const UserDatabaseFailure.userNotFoundFailure());
    } catch (_) {
      return left(const UserDatabaseFailure.serverErrorFailure());
    }
  }

  @override
  Future<Either<UserDatabaseFailure, UserDatabaseSuccess>> saveDetailsFromUser(
    User user,
  ) async {
    try {
      var finalUser = user;

      final usersRef =
          _firestore.collection(Paths.usersPath).doc(finalUser.uid);

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
    } catch (_) {
      return left(const UserDatabaseFailure.serverErrorFailure());
    }
  }

  @override
  Future<Either<UserDatabaseFailure, UserDatabaseSuccess>> saveUsername(
    String userUID,
    String username,
  ) async {
    try {
      final mapReference =
          _firestore.collection(Paths.usernameUIDMapPath).doc(username);

      await mapReference.set({'uid': userUID}, SetOptions(merge: true));

      return right(UserDatabaseSuccess.usernameSavedSuccess(username));
    } catch (_) {
      return left(const UserDatabaseFailure.serverErrorFailure());
    }
  }
}
