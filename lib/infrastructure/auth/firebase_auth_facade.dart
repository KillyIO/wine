import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/user/user_dto.dart';

/// Implementation of [IAuthFacade] using Firebase.
@LazySingleton(as: IAuthFacade, env: [Environment.dev, Environment.prod])
class FirebaseAuthFacade implements IAuthFacade {
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  final auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  @override
  Stream<Option<User>> get authStateChanges =>
      _firebaseAuth.authStateChanges().map((user) {
        if (user != null) {
          if (user.isAnonymous) return const None();
          return Some(user.toDomain());
        }
        return const None();
      });

  @override
  Future<Result<Unit, AuthFailure>> convertWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  ) async {
    final emailAddressStr = emailAddress.getOrCrash();
    final passwordStr = password.getOrCrash();

    try {
      var currentUser = _firebaseAuth.currentUser;

      if (currentUser != null) {
        final credential = auth.EmailAuthProvider.credential(
          email: emailAddressStr,
          password: passwordStr,
        );

        await currentUser.linkWithCredential(credential);

        currentUser = _firebaseAuth.currentUser;
        await currentUser?.sendEmailVerification();

        return const Ok(unit);
      }
      return const Err(AuthFailure.unexpected());
    } on FirebaseException catch (e) {
      if (e.code == 'email-already-in-use') {
        return const Err(AuthFailure.emailAlreadyInUse());
      }
      if (e.code == 'permission-denied') {
        return const Err(AuthFailure.permissionDenied());
      }
      return const Err(AuthFailure.serverError());
    } catch (err) {
      return const Err(AuthFailure.unexpected());
    }
  }

  @override
  Future<Option<User>> getLoggedInUser() async {
    final user = _firebaseAuth.currentUser;

    if (user != null) {
      if (user.isAnonymous) return const None();
      return Some(user.toDomain());
    }
    return const None();
  }

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
      return const Ok(unit);
    } on FirebaseException catch (_) {
      return const Err(AuthFailure.serverError());
    } catch (_) {
      return const Err(AuthFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, AuthFailure>> logInWithCredentialAlreadyInUse() async {
    try {
      final anonymousUser = _firebaseAuth.currentUser;

      if (anonymousUser != null) {
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

        await anonymousUser.delete();

        await _firebaseAuth.signInWithCredential(authCredential);

        final currentUser = _firebaseAuth.currentUser;

        return _updateUserInfo(_googleSignIn.currentUser, currentUser);
      }
      return const Err(AuthFailure.unexpected());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(AuthFailure.permissionDenied());
      }
      return const Err(AuthFailure.serverError());
    } on Exception catch (e) {
      if (e is PlatformException) {
        if (e.code == 'popup_closed_by_user') {
          return const Err(AuthFailure.cancelledByUser());
        }
      }
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

      if (anonymousUser != null) {
        await anonymousUser.delete();

        await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr,
          password: passwordStr,
        );

        return const Ok(unit);
      }
      return const Err(AuthFailure.unexpected());
    } on FirebaseException catch (e) {
      await _firebaseAuth.signInAnonymously();

      if (e.code == 'permission-denied') {
        return const Err(AuthFailure.permissionDenied());
      }
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

      if (anonymousUser != null) {
        if (kIsWeb) {
          final provider = auth.GoogleAuthProvider();

          final credential = await anonymousUser.linkWithPopup(provider);

          return _updateUserInfoWithUser(credential.user, anonymousUser);
        } else {
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

          await anonymousUser.linkWithCredential(authCredential);

          return _updateUserInfo(_googleSignIn.currentUser, anonymousUser);
        }
      }
      return const Err(AuthFailure.unexpected());
    } on FirebaseException catch (e) {
      if (e.code == 'credential-already-in-use') {
        return const Err(AuthFailure.credentialAlreadyInUse());
      }
      if (e.code == 'email-already-in-use') {
        return const Err(AuthFailure.emailAlreadyInUse());
      }
      if (e.code == 'permission-denied') {
        return const Err(AuthFailure.permissionDenied());
      }
      return const Err(AuthFailure.serverError());
    } on Exception catch (e) {
      if (e is PlatformException) {
        if (e.code == 'popup_closed_by_user') {
          return const Err(AuthFailure.cancelledByUser());
        }
      }
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
      return const Ok(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(AuthFailure.permissionDenied());
      }
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
        return const Ok(unit);
      }
      return const Err(AuthFailure.unexpected());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return const Err(AuthFailure.permissionDenied());
      }
      return const Err(AuthFailure.serverError());
    } catch (_) {
      return const Err(AuthFailure.unexpected());
    }
  }

  Future<Result<Unit, AuthFailure>> _updateUserInfo(
    GoogleSignInAccount? currentAccount,
    auth.User? currentUser,
  ) async {
    if (currentAccount != null && currentUser != null) {
      await Future.wait([
        currentUser.updateDisplayName(currentAccount.displayName),
        currentUser.updatePhotoURL(currentAccount.photoUrl),
      ]);
      await currentUser.reload();

      return const Ok(unit);
    }
    return const Err(AuthFailure.unexpected());
  }

  Future<Result<Unit, AuthFailure>> _updateUserInfoWithUser(
    auth.User? newUser,
    auth.User? currentUser,
  ) async {
    if (newUser != null && currentUser != null) {
      await Future.wait([
        currentUser.updateDisplayName(newUser.displayName),
        currentUser.updatePhotoURL(newUser.photoURL),
      ]);
      await currentUser.reload();

      return const Ok(unit);
    }
    return const Err(AuthFailure.unexpected());
  }
}
