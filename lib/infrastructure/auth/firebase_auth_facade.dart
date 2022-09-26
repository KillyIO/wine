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
import 'package:wine/features/user/user_dto.infrastructure.dart';

/// Implementation of [IAuthFacade] using Firebase.
@LazySingleton(as: IAuthFacade, env: [Environment.dev, Environment.prod])
class FirebaseAuthFacade implements IAuthFacade {
  /// @nodoc
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  final auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  /// @nodoc
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

        return Ok(unit);
      }
      return Err(const AuthFailure.unexpected());
    } on FirebaseException catch (e) {
      if (e.code == 'email-already-in-use') {
        return Err(const AuthFailure.emailAlreadyInUse());
      }
      if (e.code == 'permission-denied') {
        return Err(const AuthFailure.permissionDenied());
      }
      return Err(const AuthFailure.serverError());
    } catch (err) {
      return Err(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Option<User>> getLoggedInUser() async =>
      Option.from(_firebaseAuth.currentUser?.toDomain());

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
      return Ok(unit);
    } on FirebaseException catch (_) {
      return Err(const AuthFailure.serverError());
    } catch (_) {
      return Err(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, AuthFailure>> logInWithCredentialAlreadyInUse() async {
    try {
      final anonymousUser = _firebaseAuth.currentUser;

      if (anonymousUser != null) {
        final googleAccount = await _googleSignIn.signIn();
        if (googleAccount == null) {
          return Err(const AuthFailure.cancelledByUser());
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
      return Err(const AuthFailure.unexpected());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const AuthFailure.permissionDenied());
      }
      return Err(const AuthFailure.serverError());
    } on Exception catch (e) {
      if (e is PlatformException) {
        if (e.code == 'popup_closed_by_user') {
          return Err(const AuthFailure.cancelledByUser());
        }
      }
      return Err(const AuthFailure.unexpected());
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

        return Ok(unit);
      }
      return Err(const AuthFailure.unexpected());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const AuthFailure.permissionDenied());
      }
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return Err(const AuthFailure.invalidEmailAndPasswordCombination());
      }

      await _firebaseAuth.signInAnonymously();

      return Err(const AuthFailure.serverError());
    } catch (_) {
      return Err(const AuthFailure.unexpected());
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
            return Err(const AuthFailure.cancelledByUser());
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
      return Err(const AuthFailure.unexpected());
    } on FirebaseException catch (e) {
      if (e.code == 'credential-already-in-use') {
        return Err(const AuthFailure.credentialAlreadyInUse());
      }
      if (e.code == 'email-already-in-use') {
        return Err(const AuthFailure.emailAlreadyInUse());
      }
      if (e.code == 'permission-denied') {
        return Err(const AuthFailure.permissionDenied());
      }
      return Err(const AuthFailure.serverError());
    } on Exception catch (e) {
      if (e is PlatformException) {
        if (e.code == 'popup_closed_by_user') {
          return Err(const AuthFailure.cancelledByUser());
        }
      }
      return Err(const AuthFailure.unexpected());
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
        return Err(const AuthFailure.unableToSignOut());
      }

      await _firebaseAuth.signInAnonymously();
      return Ok(unit);
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const AuthFailure.permissionDenied());
      }
      return Err(const AuthFailure.serverError());
    } catch (_) {
      return Err(const AuthFailure.unexpected());
    }
  }

  @override
  Future<Result<Unit, AuthFailure>> resendVerificationEmail() async {
    try {
      final currentUser = _firebaseAuth.currentUser;

      if (currentUser != null) {
        await currentUser.sendEmailVerification();
        return Ok(unit);
      }
      return Err(const AuthFailure.unexpected());
    } on FirebaseException catch (e) {
      if (e.code == 'permission-denied') {
        return Err(const AuthFailure.permissionDenied());
      }
      return Err(const AuthFailure.serverError());
    } catch (_) {
      return Err(const AuthFailure.unexpected());
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

      return Ok(unit);
    }
    return Err(const AuthFailure.unexpected());
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

      return Ok(unit);
    }
    return Err(const AuthFailure.unexpected());
  }
}
