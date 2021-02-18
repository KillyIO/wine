import 'package:dartz/dartz.dart';

import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/failures/authentication_failure.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/models/user.dart';

/// @nodoc
abstract class IAuthenticationFacade {
  /// @nodoc
  Future<String> getCurrentUserUID();

  /// @nodoc
  Future<Either<AuthenticationFailure, User>> convertWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  bool isAnonymous();

  /// @nodoc
  Future<Either<AuthenticationFailure, bool>> isUsernameAvailable(
    Username username,
  );

  /// @nodoc
  bool isSignedIn();

  /// @nodoc
  Future<Either<AuthenticationFailure, Unit>> resendVerificationEmail();

  /// @nodoc
  Future<Either<AuthenticationFailure, Unit>> signInAnonymously();

  /// @nodoc
  Future<Either<AuthenticationFailure, User>> signInWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  Future<Either<AuthenticationFailure, User>> signInWithGoogle();

  /// @nodoc
  Future<Either<AuthenticationFailure, Unit>> signOut();
}
