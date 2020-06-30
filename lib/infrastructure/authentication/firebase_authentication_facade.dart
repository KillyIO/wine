import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'package:wine/domain/authentication/authentication_failure.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/utils/paths.dart';

@LazySingleton(as: IAuthenticationFacade)
class FirebaseAuthenticationFacade implements IAuthenticationFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final Firestore _firestore;

  FirebaseAuthenticationFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._firestore,
  );

  @override
  Future<String> getCurrentUserUid() async {
    final FirebaseUser currentUser = await _firebaseAuth.currentUser();
    return currentUser.uid;
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> convertWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    try {
      final emailAddressStr = emailAddress.getOrCrash();
      final passwordStr = password.getOrCrash();

      FirebaseUser currentUser = await _firebaseAuth.currentUser();

      final AuthCredential credential = EmailAuthProvider.getCredential(email: emailAddressStr, password: passwordStr);

      await currentUser.linkWithCredential(credential);

      currentUser = await _firebaseAuth.currentUser();
      currentUser.sendEmailVerification();

      final User user = User.fromFirebaseUser(currentUser);
      return right(AuthenticationSuccess.userAuthenticatedSCS(user));
    } on PlatformException catch (e) {
      if (e.code == 'ERROR_EMAIL_ALREADY_IN_USE') {
        return left(const AuthenticationFailure.emailAlreadyInUse());
      } else {
        return left(const AuthenticationFailure.serverError());
      }
    }
  }

  @override
  Future<bool> isAnonymous() async {
    final FirebaseUser currentUser = await _firebaseAuth.currentUser();
    return currentUser != null && currentUser.isAnonymous;
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> isUsernameAvailable({
    Username username,
  }) async {
    final usernameStr = username.getOrCrash();

    final DocumentSnapshot documentSnapshot =
        await _firestore.collection(Paths.usernameUidMapPath).document(usernameStr).get();
    if (documentSnapshot != null && documentSnapshot.exists) {
      return left(const AuthenticationFailure.usernameAlreadyInUse());
    } else {
      return right(const AuthenticationSuccess.usernameAvailableSCS());
    }
  }

  @override
  Future<bool> isSignedIn() async {
    final FirebaseUser currentUser = await _firebaseAuth.currentUser();
    return currentUser != null;
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> resendVerificationEmail() async {
    final FirebaseUser currentUser = await _firebaseAuth.currentUser();

    if (currentUser != null) {
      await currentUser.sendEmailVerification();
      return right(const AuthenticationSuccess.verificationEmailSentSCS());
    }
    return left(const AuthenticationFailure.serverError());
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> signInAnonymously() async {
    try {
      await _firebaseAuth.signInAnonymously();
      return right(const AuthenticationSuccess.userSignedInAnonymouslySCS());
    } on PlatformException catch (_) {
      return left(const AuthenticationFailure.serverError());
    }
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    try {
      final emailAddressStr = emailAddress.getOrCrash();
      final passwordStr = password.getOrCrash();

      final FirebaseUser anonymousUser = await _firebaseAuth.currentUser();
      await anonymousUser?.delete();

      await _firebaseAuth.signInWithEmailAndPassword(email: emailAddressStr, password: passwordStr);

      final FirebaseUser currentUser = await _firebaseAuth.currentUser();
      final User user = User.fromFirebaseUser(currentUser);

      return right(AuthenticationSuccess.userAuthenticatedSCS(user));
    } on PlatformException catch (e) {
      await _firebaseAuth.signInAnonymously();

      if (e.code == 'ERROR_WRONG_PASSWORD' || e.code == 'ERROR_USER_NOT_FOUND') {
        return left(const AuthenticationFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthenticationFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> signInWithGoogle() async {
    try {
      final FirebaseUser anonymousUser = await _firebaseAuth.currentUser();

      final GoogleSignInAccount googleAccount = await _googleSignIn.signIn();
      if (googleAccount == null) {
        return left(const AuthenticationFailure.cancelledByUser());
      }

      final GoogleSignInAuthentication googleAuthentication = await googleAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.getCredential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      try {
        return right(await _trySignInWithGoogle(anonymousUser, authCredential));
      } on PlatformException catch (e) {
        if (e.code == 'ERROR_CREDENTIAL_ALREADY_IN_USE') {
          return right(await _signInWithGoogleCredentialAlreadyInUse(anonymousUser, authCredential));
        }
        return left(const AuthenticationFailure.serverError());
      }
    } on PlatformException catch (_) {
      return left(const AuthenticationFailure.serverError());
    }
  }

  Future<AuthenticationSuccess> _trySignInWithGoogle(
    FirebaseUser anonymousUser,
    AuthCredential authCredential,
  ) async {
    await anonymousUser.linkWithCredential(authCredential);
    await _updateUserInfo(_googleSignIn.currentUser, anonymousUser);

    final FirebaseUser anonymousUserTmp = await _firebaseAuth.currentUser();

    final User user = User.fromFirebaseUser(anonymousUserTmp);
    return AuthenticationSuccess.userAuthenticatedSCS(user);
  }

  Future<AuthenticationSuccess> _signInWithGoogleCredentialAlreadyInUse(
    FirebaseUser anonymousUser,
    AuthCredential authCredential,
  ) async {
    anonymousUser.delete();

    await _firebaseAuth.signInWithCredential(authCredential);

    FirebaseUser currentUser = await _firebaseAuth.currentUser();

    await _updateUserInfo(_googleSignIn.currentUser, currentUser);

    currentUser = await _firebaseAuth.currentUser();

    final User user = User.fromFirebaseUser(currentUser);
    return AuthenticationSuccess.userAuthenticatedSCS(user);
  }

  Future<void> _updateUserInfo(
    GoogleSignInAccount currentAccount,
    FirebaseUser currentUser,
  ) async {
    final UserUpdateInfo userUpdateInfo = UserUpdateInfo();

    userUpdateInfo.displayName = currentAccount.displayName;
    userUpdateInfo.photoUrl = currentAccount.photoUrl;

    await currentUser.updateProfile(userUpdateInfo);
    await currentUser.reload();
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> signOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);

      final FirebaseUser currentUser = await _firebaseAuth.currentUser();
      if (currentUser != null) {
        return left(const AuthenticationFailure.unableToSignOut());
      }

      await _firebaseAuth.signInAnonymously();
      return right(const AuthenticationSuccess.userSignedOutSCS());
    } on PlatformException catch (_) {
      return left(const AuthenticationFailure.serverError());
    }
  }
}
