import 'package:dartz/dartz.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/authentication/username.dart';

/// @nodoc
abstract class IAuthenticationFacade {
  /// @nodoc
  Future<String> getCurrentUserUID();

  /// @nodoc
  Future<Either<AuthenticationFailure, AuthenticationSuccess>>
      convertWithEmailAndPassword(EmailAddress emailAddress, Password password);

  /// @nodoc
  bool isAnonymous();

  /// @nodoc
  Future<Either<AuthenticationFailure, AuthenticationSuccess>>
      isUsernameAvailable(Username username);

  /// @nodoc
  bool isSignedIn();

  /// @nodoc
  Future<Either<AuthenticationFailure, AuthenticationSuccess>>
      resendVerificationEmail();

  /// @nodoc
  Future<Either<AuthenticationFailure, AuthenticationSuccess>>
      signInAnonymously();

  /// @nodoc
  Future<Either<AuthenticationFailure, AuthenticationSuccess>>
      signInWithEmailAndPassword(EmailAddress emailAddress, Password password);

  /// @nodoc
  Future<Either<AuthenticationFailure, AuthenticationSuccess>>
      signInWithGoogle();

  /// @nodoc
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> signOut();
}
