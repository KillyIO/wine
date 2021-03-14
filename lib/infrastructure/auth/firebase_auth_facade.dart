import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/user/user_dto.dart';

/// Implementation of [IAuthFacade] using Firebase.
@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  /// @nodoc
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  final auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  @override
  Future<Either<AuthFailure, Unit>> convertWithEmailAndPassword(
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

      await currentUser?.linkWithCredential(credential);

      currentUser = _firebaseAuth.currentUser;
      await currentUser?.sendEmailVerification();

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<User>> getLoggedInUser() async =>
      optionOf(_firebaseAuth.currentUser.toDomain());

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
  Future<Either<AuthFailure, Unit>> logInAnonymously() async {
    try {
      await _firebaseAuth.signInAnonymously();
      return right(unit);
    } on FirebaseException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> logInWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  ) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      final anonymousUser = _firebaseAuth.currentUser;
      await anonymousUser?.delete();

      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );

      return right(unit);
    } on FirebaseException catch (e) {
      await _firebaseAuth.signInAnonymously();

      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(
          const AuthFailure.invalidEmailAndPasswordCombination(),
        );
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> logInWithGoogle() async {
    try {
      final anonymousUser = _firebaseAuth.currentUser;

      final googleAccount = await _googleSignIn.signIn();
      if (googleAccount == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleAccount.authentication;
      final auth.AuthCredential authCredential =
          auth.GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      try {
        return right(await _trySignInWithGoogle(anonymousUser, authCredential));
      } on FirebaseException catch (e) {
        if (e.code == 'credential-already-in-use') {
          return right(await _signInWithGoogleCredentialAlreadyInUse(
            anonymousUser,
            authCredential,
          ));
        }
        return left(const AuthFailure.serverError());
      }
    } on FirebaseException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);

      final currentUser = _firebaseAuth.currentUser;
      if (currentUser != null) {
        return left(const AuthFailure.unableToSignOut());
      }

      await _firebaseAuth.signInAnonymously();
      return right(unit);
    } on FirebaseException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resendVerificationEmail() async {
    try {
      final currentUser = _firebaseAuth.currentUser;

      if (currentUser != null) {
        await currentUser.sendEmailVerification();
        return right(unit);
      }
      return left(const AuthFailure.serverError());
    } on FirebaseException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  Future<Unit> _trySignInWithGoogle(
    auth.User anonymousUser,
    auth.AuthCredential authCredential,
  ) async {
    await anonymousUser.linkWithCredential(authCredential);
    await _updateUserInfo(_googleSignIn.currentUser, anonymousUser);

    return unit;
  }

  Future<Unit> _signInWithGoogleCredentialAlreadyInUse(
    auth.User anonymousUser,
    auth.AuthCredential authCredential,
  ) async {
    await anonymousUser.delete();

    await _firebaseAuth.signInWithCredential(authCredential);

    var currentUser = _firebaseAuth.currentUser;

    await _updateUserInfo(_googleSignIn.currentUser, currentUser);

    return unit;
  }

  Future<void> _updateUserInfo(
    GoogleSignInAccount currentAccount,
    auth.User currentUser,
  ) async {
    await currentUser.updateProfile(
      displayName: currentAccount.displayName,
      photoURL: currentAccount.photoUrl,
    );
    await currentUser.reload();
  }
}
