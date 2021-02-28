import 'package:dartz/dartz.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/models/user.dart';

/// @nodoc
abstract class IAuthFacade {
  /// @nodoc
  Future<Either<AuthFailure, User>> convertWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  String getCurrentUserUID();

  /// @nodoc
  bool isAnonymous();

  /// @nodoc
  bool isSignedIn();

  /// @nodoc
  // Future<Either<AuthFailure, bool>> isUsernameAvailable(Username username);

  /// @nodoc
  Future<Either<AuthFailure, Unit>> logInAnonymously();

  /// @nodoc
  Future<Either<AuthFailure, User>> logInWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  Future<Either<AuthFailure, User>> logInWithGoogle();

  /// @nodoc
  Future<Either<AuthFailure, Unit>> logOut();

  /// @nodoc
  Future<Either<AuthFailure, Unit>> resendVerificationEmail();
}
