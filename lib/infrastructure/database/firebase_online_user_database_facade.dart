import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/database_success.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/paths.dart';

@LazySingleton(as: IOnlineUserDatabaseFacade)
class FirebaseOnlineUserDatabaseFacade extends IOnlineUserDatabaseFacade {
  final Firestore _firestore;

  FirebaseOnlineUserDatabaseFacade(this._firestore);

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> saveDetailsFromUser(User user) async {
    User finalUser = user;

    final DocumentReference ref = _firestore.collection(Paths.usersPath).document(finalUser.uid);

    final failureOrSuccess = await loadUser(finalUser.uid);

    User dbUser;
    failureOrSuccess.fold((_) {}, (success) {
      if (success is UserLoadedSCS) {
        dbUser = success.user;
      }
    });

    if (dbUser != null) {
      finalUser = dbUser;
      finalUser.updatedAt = DateTime.now().millisecondsSinceEpoch;
    }

    final DocumentReference mapReference = _firestore.collection(Paths.usernameUidMapPath).document(finalUser.username);

    await Future.wait([
      // map the uid to the username
      mapReference.setData({'uid': finalUser.uid}, merge: true),
      ref.setData(finalUser.toMap(), merge: true),
    ]);
    return right(DatabaseSuccess.userDetailsSavedSCS(finalUser));
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUser(String sessionUid) async {
    final DocumentReference ref = _firestore.collection(Paths.usersPath).document(sessionUid);

    final DocumentSnapshot snapshot = await ref.get();
    if (snapshot != null && snapshot.exists) {
      final User user = User.fromFirestore(snapshot);
      return right(DatabaseSuccess.userLoadedSCS(user));
    }
    return left(const DatabaseFailure.failedToFetchOnlineData());
  }

  @override
  Future<Either<DatabaseFailure, DatabaseSuccess>> loadUsersAsMapByUidList(List<String> userUids) async {
    final List<String> filterUserUids = userUids.toSet().toList();

    final CollectionReference usersCollection = _firestore.collection(Paths.usersPath);

    final QuerySnapshot querySnapshot = await usersCollection.where('uid', whereIn: filterUserUids).getDocuments();

    final List<User> usersList = <User>[];
    for (final DocumentSnapshot doc in querySnapshot.documents) {
      usersList.add(User.fromFirestore(doc));
    }

    final Map<String, User> usersMap = {for (final User user in usersList) user.uid: user};

    return right(DatabaseSuccess.userAsMapLoadedSCS(usersMap));
  }
}
