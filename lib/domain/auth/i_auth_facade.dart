import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/user/user.dart';

abstract class IAuthFacade {
  Stream<Option<User>> get authStateChanges;

  Future<Result<Unit, AuthFailure>> convertWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  Future<Option<User>> getLoggedInUser();

  bool get isAnonymous;

  bool get isLoggedIn;

  Future<Result<Unit, AuthFailure>> logInAnonymously();

  Future<Result<Unit, AuthFailure>> logInWithCredentialAlreadyInUse();

  Future<Result<Unit, AuthFailure>> logInWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  Future<Result<Unit, AuthFailure>> logInWithGoogle();

  Future<Result<Unit, AuthFailure>> logOut();

  Future<Result<Unit, AuthFailure>> resendVerificationEmail();
}
