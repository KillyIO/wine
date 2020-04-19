import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:logger/logger.dart';
import 'package:wine/models/user.dart';
import 'package:wine/services/user/base_user_service.dart';
import 'package:wine/utils/exceptions.dart';
import 'package:wine/utils/paths.dart';

class FirebaseUserService extends BaseUserService {
  final Logger _logger = Logger();
  final Firestore _firestore = Firestore.instance;

  static final FirebaseUserService _singleton = FirebaseUserService._internal();

  FirebaseUserService._internal();

  factory FirebaseUserService() => _singleton;

  @override
  Future<void> saveDetailsFromUser(User user) async {
    DocumentReference ref =
        _firestore.collection(Paths.usersPath).document(user.uid);
    final User dbUser = await getUser(user.uid);

    if (dbUser != null) {
      user = dbUser;
      user.updatedAt = DateTime.now().millisecondsSinceEpoch;
    } else {
      user.createdAt = DateTime.now().millisecondsSinceEpoch;
      user.updatedAt = DateTime.now().millisecondsSinceEpoch;
    }

    await ref.setData(user.toMap(), merge: true);
  }

  @override
  Future<void> checkUsernameAvailability(String username) async {
    DocumentSnapshot documentSnapshot = await _firestore
        .collection(Paths.usernameUidMapPath)
        .document(username)
        .get();
    if (documentSnapshot != null && documentSnapshot.exists) {
      throw UsernameAlreadyTakenException();
    }
  }

  @override
  Future<bool> isAccountComplete(String sessionUid) async {
    DocumentReference ref =
        _firestore.collection(Paths.usersPath).document(sessionUid);

    final DocumentSnapshot currentDocument = await ref.get();

    bool isAccountComplete = true;

    if (currentDocument != null) {
      User user = User.fromFirestore(currentDocument);

      if (user.username == null) {
        isAccountComplete = false;
      }
    }

    return isAccountComplete;
  }

  @override
  Future<User> getUser(String sessionUid) async {
    DocumentReference ref =
        _firestore.collection(Paths.usersPath).document(sessionUid);

    DocumentSnapshot snapshot = await ref.get();
    if (snapshot != null && snapshot.exists) {
      final User user = User.fromFirestore(snapshot);
      return user;
    }
    return null;
  }

  @override
  Future<void> updateUsername(String sessionUid, String username) async {
    DocumentReference mapReference =
        _firestore.collection(Paths.usernameUidMapPath).document(username);

    DocumentReference ref =
        _firestore.collection(Paths.usersPath).document(sessionUid);

    await Future.wait([
      // map the uid to the username
      mapReference.setData({'uid': sessionUid}, merge: true),
      ref.setData({'username': username}, merge: true),
    ]);
  }

  @override
  Future<void> updateIsEmailVerified(
      String sessionUid, bool isEmailVerified) async {
    DocumentReference ref =
        _firestore.collection(Paths.usersPath).document(sessionUid);
    await ref.setData({'isEmailVerified': isEmailVerified}, merge: true);
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
