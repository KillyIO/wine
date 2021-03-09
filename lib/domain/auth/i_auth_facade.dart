import 'package:dartz/dartz.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/user/user.dart';

/// @nodoc
abstract class IAuthFacade {
  /// @nodoc
  Future<Either<CoreFailure, Unit>> convertWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  Future<Option<User>> getLoggedInUser();

  /// @nodoc
  bool isAnonymous();

  /// @nodoc
  bool isSignedIn();

  /// @nodoc
  Future<Either<CoreFailure, Unit>> logInAnonymously();

  /// @nodoc
  Future<Either<CoreFailure, Unit>> logInWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  Future<Either<CoreFailure, Unit>> logInWithGoogle();

  /// @nodoc
  Future<Either<CoreFailure, Unit>> logOut();

  /// @nodoc
  Future<Either<CoreFailure, Unit>> resendVerificationEmail();
}
