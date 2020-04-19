import 'package:wine/models/user.dart';
import 'package:wine/services/authentication/base_authentication_service.dart';
import 'package:wine/services/authentication/firebase_authentication_service.dart';

class AuthenticationRepository {
  final BaseAuthenticationService _authenticationService =
      FirebaseAuthenticationService();

  static final AuthenticationRepository _singleton =
      AuthenticationRepository._internal();

  AuthenticationRepository._internal();

  factory AuthenticationRepository() => _singleton;

  Future<User> convertWithEmailAndPassword(String email, String password) =>
      _authenticationService.convertWithEmailAndPassword(email, password);

  Future<User> convertWithGoogle() =>
      _authenticationService.convertWithGoogle();

  Future<bool> isAnonymous() => _authenticationService.isAnonymous();

  Future<bool> isSignedIn() => _authenticationService.isSignedIn();

  Future<void> signInAnonymously() =>
      _authenticationService.signInAnonymously();

  Future<User> signInWithGoogle() => _authenticationService.signInWithGoogle();

  Future<User> signInWithEmailAndPassword(String email, String password) =>
      _authenticationService.signInWithEmailAndPassword(email, password);

  Future<void> signOut() => _authenticationService.signOut();
}
