import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:wine/domain/database/database_failure.dart';
import 'package:wine/domain/database/i_online_user_database_facade.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/paths.dart';

@lazySingleton
@RegisterAs(IOnlineUserDatabaseFacade)
class FirebaseOnlineUserDatabaseFacade extends IOnlineUserDatabaseFacade {
  final Firestore _firestore;

  FirebaseOnlineUserDatabaseFacade(this._firestore);

  @override
  Future<Either<DatabaseFailure, User>> getUser(String sessionUid) async {
    final DocumentReference ref =
        _firestore.collection(Paths.usersPath).document(sessionUid);

    final DocumentSnapshot snapshot = await ref.get();
    if (snapshot != null && snapshot.exists) {
      final User user = User.fromFirestore(snapshot);
      return right(user);
    }
    return left(const DatabaseFailure.failedToRetrieveUserData());
  }

  @override
  Future<Either<DatabaseFailure, User>> saveDetailsFromUser(User user) async {
    User finalUser = user;

    final DocumentReference ref =
        _firestore.collection(Paths.usersPath).document(finalUser.uid);

    final failureOrSuccess = await getUser(finalUser.uid);

    User dbUser;
    failureOrSuccess.fold((_) {}, (getUser) {
      dbUser = getUser;
    });

    if (dbUser != null) {
      finalUser = dbUser;
      finalUser.updatedAt = DateTime.now().millisecondsSinceEpoch;
    }

    final DocumentReference mapReference =
        _firestore.collection(Paths.usernameUidMapPath).document(finalUser.username);

    await Future.wait([
      // map the uid to the username
      mapReference.setData({'uid': finalUser.uid}, merge: true),
      ref.setData(finalUser.toMap(), merge: true),
    ]);
    return right(finalUser);
  }
}
