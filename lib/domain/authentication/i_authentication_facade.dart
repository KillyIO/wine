import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/authentication/username.dart';

abstract class IAuthenticationFacade {
  Future<String> getCurrentUserUid();
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> convertWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<bool> isAnonymous();
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> isUsernameAvailable({@required Username username});
  Future<bool> isSignedIn();
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> resendVerificationEmail();
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> signInAnonymously();
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> signInWithGoogle();
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> signOut();
}
