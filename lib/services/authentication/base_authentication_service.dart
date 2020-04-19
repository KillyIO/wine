import 'package:wine/models/user.dart';
import 'package:wine/services/base_service.dart';

abstract class BaseAuthenticationService extends BaseService {
  Future<User> convertWithEmailAndPassword(String email, String password);
  Future<User> convertWithGoogle();
  Future<bool> isAnonymous();
  Future<bool> isSignedIn();
  Future<void> signInAnonymously();
  Future<User> signInWithGoogle();
  Future<User> signInWithEmailAndPassword(String email, String password);
  Future<void> signOut();
}
