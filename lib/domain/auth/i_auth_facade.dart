import 'package:dartz/dartz.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/password.dart';

/// @nodoc
abstract class IAuthFacade {
  /// @nodoc
  Future<String> getCurrentUserUID();

  /// @nodoc
  Future<Either<AuthFailure, User>> convertWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  bool isAnonymous();

  /// @nodoc
  Future<Either<AuthFailure, bool>> isUsernameAvailable(Username username);

  /// @nodoc
  bool isSignedIn();

  /// @nodoc
  Future<Either<AuthFailure, Unit>> resendVerificationEmail();

  /// @nodoc
  Future<Either<AuthFailure, Unit>> signInAnonymously();

  /// @nodoc
  Future<Either<AuthFailure, User>> signInWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  Future<Either<AuthFailure, User>> signInWithGoogle();

  /// @nodoc
  Future<Either<AuthFailure, Unit>> signOut();
}
