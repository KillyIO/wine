import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:rustic/option.dart';
import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';

import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/user/user_dto.dart';

/// Implementation of [IAuthFacade] using Firebase.
@LazySingleton(as: IAuthFacade, env: ['dev', 'prod'])
class FirebaseAuthFacade implements IAuthFacade {
  /// @nodoc
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  final auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  @override
  Future<Result<Unit, AuthFailure>> convertWithEmailAndPassword(
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

      return const Ok(Unit());
    } on FirebaseException catch (e) {
      if (e.code == 'email-already-in-use') {
        return const Err(AuthFailure.emailAlreadyInUse());
      }
      return const Err(AuthFailure.serverError());
    } catch (_) {
      return const Err(AuthFailure.unexpected());
    }
  }

  @override
  Future<Option<User>?> getLoggedInUser() async =>
      _firebaseAuth.currentUser?.toDomain().asOption();

  @override
  bool get isAnonymous {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null && currentUser.isAnonymous;
  }

  @override
  bool get isLoggedIn {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  @override
  Future<Result<Unit, AuthFailure>> logInAnonymously() async {
    try {
      await _firebaseAuth.signInAnonymously();
      return const Ok(Unit());
    } on FirebaseException catch (_) {
      return const Err(AuthFailure.serverError());
    } catch (_) {
      return const Err(AuthFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, AuthFailure>> logInWithEmailAndPassword(
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

      return const Ok(Unit());
    } on FirebaseException catch (e) {
      await _firebaseAuth.signInAnonymously();

      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return const Err(AuthFailure.invalidEmailAndPasswordCombination());
      }
      return const Err(AuthFailure.serverError());
    } catch (_) {
      return const Err(AuthFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, AuthFailure>> logInWithGoogle() async {
    try {
      final anonymousUser = _firebaseAuth.currentUser;

      final googleAccount = await _googleSignIn.signIn();
      if (googleAccount == null) {
        return const Err(AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleAccount.authentication;
      final auth.AuthCredential authCredential =
          auth.GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      try {
        return await _trySignInWithGoogle(anonymousUser, authCredential);
      } on FirebaseException catch (e) {
        if (e.code == 'credential-already-in-use') {
          return await _signInWithGoogleCredentialAlreadyInUse(
            anonymousUser,
            authCredential,
          );
        }
        return const Err(AuthFailure.serverError());
      } catch (_) {
        return const Err(AuthFailure.unexpected());
      }
    } on FirebaseException catch (_) {
      return const Err(AuthFailure.serverError());
    } catch (_) {
      return const Err(AuthFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, AuthFailure>> logOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);

      final currentUser = _firebaseAuth.currentUser;
      if (currentUser != null) {
        return const Err(AuthFailure.unableToSignOut());
      }

      await _firebaseAuth.signInAnonymously();
      return const Ok(Unit());
    } on FirebaseException catch (_) {
      return const Err(AuthFailure.serverError());
    } catch (_) {
      return const Err(AuthFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, AuthFailure>> resendVerificationEmail() async {
    try {
      final currentUser = _firebaseAuth.currentUser;

      if (currentUser != null) {
        await currentUser.sendEmailVerification();
        return const Ok(Unit());
      }
      return const Err(AuthFailure.unexpected());
    } on FirebaseException catch (_) {
      return const Err(AuthFailure.serverError());
    } catch (_) {
      return const Err(AuthFailure.unexpected());
    }
  }

  Future<Result<Unit, AuthFailure>> _trySignInWithGoogle(
    auth.User? anonymousUser,
    auth.AuthCredential authCredential,
  ) async {
    if (anonymousUser != null) {
      await anonymousUser.linkWithCredential(authCredential);

      return await _updateUserInfo(_googleSignIn.currentUser, anonymousUser);
    }
    return const Err(AuthFailure.unexpected());
  }

  Future<Result<Unit, AuthFailure>> _signInWithGoogleCredentialAlreadyInUse(
    auth.User? anonymousUser,
    auth.AuthCredential authCredential,
  ) async {
    if (anonymousUser != null) {
      await anonymousUser.delete();

      await _firebaseAuth.signInWithCredential(authCredential);

      var currentUser = _firebaseAuth.currentUser;

      return await _updateUserInfo(_googleSignIn.currentUser, currentUser);
    }
    return const Err(AuthFailure.unexpected());
  }

  Future<Result<Unit, AuthFailure>> _updateUserInfo(
    GoogleSignInAccount? currentAccount,
    auth.User? currentUser,
  ) async {
    if (currentAccount != null || currentUser != null) {
      await currentUser?.updateProfile(
        displayName: currentAccount?.displayName,
        photoURL: currentAccount?.photoUrl,
      );
      await currentUser?.reload();

      return const Ok(Unit());
    }
    return const Err(AuthFailure.unexpected());
  }
}
