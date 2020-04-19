import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:wine/models/user.dart';
import 'package:wine/services/authentication/base_authentication_service.dart';

class FirebaseAuthenticationService extends BaseAuthenticationService {
  final Logger _logger = Logger();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  static final FirebaseAuthenticationService _singleton =
      FirebaseAuthenticationService._internal();

  FirebaseAuthenticationService._internal();

  factory FirebaseAuthenticationService() => _singleton;

  @override
  Future<User> convertWithEmailAndPassword(
      String email, String password) async {
    FirebaseUser currentUser = await _firebaseAuth.currentUser();

    final AuthCredential credential =
        EmailAuthProvider.getCredential(email: email, password: password);

    await currentUser.linkWithCredential(credential);

    currentUser = await _firebaseAuth.currentUser();
    currentUser.sendEmailVerification();

    return User.fromFirebaseUser(currentUser);
  }

  @override
  Future<User> convertWithGoogle() async {
    FirebaseUser currentUser = await _firebaseAuth.currentUser();

    final GoogleSignInAccount account = await _googleSignIn.signIn();
    final GoogleSignInAuthentication _googleAuth = await account.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: _googleAuth.idToken,
      accessToken: _googleAuth.accessToken,
    );
    await currentUser.linkWithCredential(credential);

    await _updateUserInfo(_googleSignIn.currentUser, currentUser);

    currentUser = await _firebaseAuth.currentUser();

    return User.fromFirebaseUser(currentUser);
  }

  Future _updateUserInfo(
    GoogleSignInAccount currentAccount,
    FirebaseUser currentUser,
  ) async {
    UserUpdateInfo userUpdateInfo = UserUpdateInfo();

    userUpdateInfo.displayName = currentAccount.displayName;
    userUpdateInfo.photoUrl = currentAccount.photoUrl;

    await currentUser.updateProfile(userUpdateInfo);
    await currentUser.reload();
  }

  @override
  Future<bool> isAnonymous() async {
    final FirebaseUser currentUser = await _firebaseAuth.currentUser();
    return currentUser != null ? currentUser.isAnonymous : null;
  }

  @override
  Future<bool> isSignedIn() async {
    final FirebaseUser currentUser = await _firebaseAuth.currentUser();
    return currentUser != null;
  }

  @override
  Future<void> signInAnonymously() async {
    await _firebaseAuth.signInAnonymously();
  }

  @override
  Future<User> signInWithGoogle() async {
    FirebaseUser anonymousUser = await _firebaseAuth.currentUser();
    await anonymousUser.delete();

    final GoogleSignInAccount account = await _googleSignIn.signIn();
    final GoogleSignInAuthentication authentication =
        await account.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(
      idToken: authentication.idToken,
      accessToken: authentication.accessToken,
    );

    await _firebaseAuth.signInWithCredential(credential);

    FirebaseUser currentUser = await _firebaseAuth.currentUser();

    await _updateUserInfo(_googleSignIn.currentUser, currentUser);

    currentUser = await _firebaseAuth.currentUser();

    return User.fromFirebaseUser(currentUser);
  }

  @override
  Future<User> signInWithEmailAndPassword(String email, String password) async {
    FirebaseUser anonymousUser = await _firebaseAuth.currentUser();
    await anonymousUser.delete();

    await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    FirebaseUser currentUser = await _firebaseAuth.currentUser();

    return User.fromFirebaseUser(currentUser);
  }

  @override
  Future<void> signOut() async {
    await Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);
  }

  @override
  void dispose() {
    // TODO: implement dispose
  }
}
