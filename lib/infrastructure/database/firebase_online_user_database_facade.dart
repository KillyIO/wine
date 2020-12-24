import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/facades/online/i_online_user_database_facade.dart';
import 'package:wine/domain/database/successes/user_database_success.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/extensions.dart';
import 'package:wine/utils/paths.dart';

/// @nodoc
@LazySingleton(as: IOnlineUserDatabaseFacade)
class FirebaseOnlineUserDatabaseFacade extends IOnlineUserDatabaseFacade {
  /// @nodoc
  FirebaseOnlineUserDatabaseFacade(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Either<DatabaseFailure, UserDatabaseSuccess>> loadUser(
    String userUID,
  ) async {
    final documentSnapshot =
        await _firestore.collection(Paths.usersPath).doc(userUID).get();

    if (documentSnapshot != null && documentSnapshot.exists) {
      final user = User.fromFirestore(documentSnapshot);
      return right(UserDatabaseSuccess.userLoadedSCS(user));
    }
    return left(const DatabaseFailure.failedToLoadOnlineData());
  }

  @override
  Future<Either<DatabaseFailure, UserDatabaseSuccess>> loadUsersAsMapByUIDList(
    List<String> userUIDs,
  ) async {
    final usersCollection = _firestore.collection(Paths.usersPath);

    final userUIDsChunked = userUIDs.chunk(10);

    final usersList = <User>[];

    for (final chunk in userUIDsChunked) {
      final querySnapshot =
          await usersCollection.where('uid', whereIn: chunk).get();

      for (final DocumentSnapshot doc in querySnapshot.docs) {
        usersList.add(User.fromFirestore(doc));
      }
    }

    final usersMap = <String, User>{
      for (final User user in usersList) user.uid: user
    };

    return right(UserDatabaseSuccess.userAsMapLoadedSCS(usersMap));
  }

  @override
  Future<Either<DatabaseFailure, UserDatabaseSuccess>> loadUsers(
    List<String> userUIDs,
  ) async {
    final usersCollection = _firestore.collection(Paths.usersPath);

    final userUIDsChunked = userUIDs.chunk(10);

    final users = <User>[];
    for (final chunk in userUIDsChunked) {
      final querySnapshot =
          await usersCollection.where('uid', whereIn: chunk).get();

      for (final DocumentSnapshot doc in querySnapshot.docs) {
        users.add(User.fromFirestore(doc));
      }
    }

    return right(UserDatabaseSuccess.usersLoadedSCS(users));
  }

  @override
  Future<Either<DatabaseFailure, UserDatabaseSuccess>> saveDetailsFromUser(
    User user,
  ) async {
    var finalUser = user;

    final usersRef = _firestore.collection(Paths.usersPath).doc(finalUser.uid);

    final failureOrSuccess = await loadUser(finalUser.uid);

    User dbUser;
    failureOrSuccess.fold(
      (_) {},
      (success) {
        if (success is UserLoadedSCS) {
          dbUser = success.user;
        }
      },
    );

    if (dbUser != null) {
      finalUser =
          dbUser.copyWith(updatedAt: DateTime.now().millisecondsSinceEpoch);
    }

    final mapReference =
        _firestore.collection(Paths.usernameUIDMapPath).doc(finalUser.username);

    await Future.wait([
      // map the uid to the username
      mapReference.set(
        {'uid': finalUser.uid},
        SetOptions(mergeFields: <FieldPath>[FieldPath.fromString('uid')]),
      ),
      usersRef.set(finalUser.toMap(), SetOptions(merge: true)),
    ]);
    return right(UserDatabaseSuccess.userDetailsSavedSCS(finalUser));
  }
}
