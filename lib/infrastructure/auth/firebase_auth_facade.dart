import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_sign_in/google_sign_in.dart';

import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/models/user.dart';

/// Implementation of [IAuthFacade] using Firebase.
class FirebaseAuthFacade implements IAuthFacade {
  /// @nodoc
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._firestore,
  );

  final auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;

  @override
  Future<Either<AuthFailure, User>> convertWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  ) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      var currentUser = _firebaseAuth.currentUser;

      final credential = auth.EmailAuthProvider.credential(
        email: emailAddressStr,
        password: passwordStr,
      );

      await currentUser.linkWithCredential(credential);

      currentUser = _firebaseAuth.currentUser;
      await currentUser.sendEmailVerification();

      return right(User.fromFirebaseUser(currentUser));
    } on FirebaseException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  String getCurrentUserUID() {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser?.uid;
  }

  @override
  bool isAnonymous() {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null && currentUser.isAnonymous;
  }

  @override
  bool isSignedIn() {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  @override
  Future<Either<AuthFailure, bool>> isUsernameAvailable(Username username) {
    // TODO: implement isUsernameAvailable
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> logInAnonymously() {
    // TODO: implement logInAnonymously
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, User>> logInWithEmailAndPassword(
      EmailAddress emailAddress, Password password) {
    // TODO: implement logInWithEmailAndPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, User>> logInWithGoogle() {
    // TODO: implement logInWithGoogle
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> logOut() {
    // TODO: implement logOut
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, Unit>> resendVerificationEmail() {
    // TODO: implement resendVerificationEmail
    throw UnimplementedError();
  }
}
