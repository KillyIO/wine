import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';
import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/models/user.dart';

abstract class IAuthenticationFacade {
  Future<Either<AuthenticationFailure, User>> convertWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<bool> isAnonymous();
  Future<Either<AuthenticationFailure, Unit>> isUsernameAvailable({
    @required Username username,
  });
  Future<bool> isSignedIn();
  Future<Either<AuthenticationFailure, Unit>> signInAnonymously();
  Future<Either<AuthenticationFailure, User>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthenticationFailure, User>> signInWithGoogle();
  Future<Either<AuthenticationFailure, Unit>> signOut();
}
