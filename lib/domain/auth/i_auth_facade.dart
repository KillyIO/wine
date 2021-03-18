import 'package:dartz/dartz.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/user/user.dart';

/// @nodoc
abstract class IAuthFacade {
  /// @nodoc
  Future<Either<AuthFailure, Unit>> convertWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  Future<Option<User>> getLoggedInUser();

  /// @nodoc
  bool isAnonymous();

  /// @nodoc
  bool isLoggedIn();

  /// @nodoc
  Future<Either<AuthFailure, Unit>> logInAnonymously();

  /// @nodoc
  Future<Either<AuthFailure, Unit>> logInWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  Future<Either<AuthFailure, Unit>> logInWithGoogle();

  /// @nodoc
  Future<Either<AuthFailure, Unit>> logOut();

  /// @nodoc
  Future<Either<AuthFailure, Unit>> resendVerificationEmail();
}
