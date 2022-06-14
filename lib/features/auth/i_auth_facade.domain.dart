import 'package:oxidized/oxidized.dart';
import 'package:wine/features/auth/auth_failure.domain.dart';
import 'package:wine/features/auth/email_address.domain.dart';
import 'package:wine/features/auth/password.domain.dart';
import 'package:wine/features/user/user.domain.dart';

/// @nodoc
abstract class IAuthFacade {
  /// @nodoc
  Stream<Option<User>> get authStateChanges;

  /// @nodoc
  Future<Result<Unit, AuthFailure>> convertWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  Future<Option<User>> getLoggedInUser();

  /// @nodoc
  bool get isAnonymous;

  /// @nodoc
  bool get isLoggedIn;

  /// @nodoc
  Future<Result<Unit, AuthFailure>> logInAnonymously();

  /// @nodoc
  Future<Result<Unit, AuthFailure>> logInWithCredentialAlreadyInUse();

  /// @nodoc
  Future<Result<Unit, AuthFailure>> logInWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  Future<Result<Unit, AuthFailure>> logInWithGoogle();

  /// @nodoc
  Future<Result<Unit, AuthFailure>> logOut();

  /// @nodoc
  Future<Result<Unit, AuthFailure>> resendVerificationEmail();
}
