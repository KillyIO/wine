import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:models/models.dart';

import 'package:wine/domain/authentication/authentication_failure.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/utils/paths.dart';

/// @nodoc
@LazySingleton(as: IAuthenticationFacade)
class FirebaseAuthenticationFacade implements IAuthenticationFacade {
  /// @nodoc
  FirebaseAuthenticationFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._firestore,
  );

  final auth.FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseFirestore _firestore;

  @override
  Future<String> getCurrentUserUID() async {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser?.uid;
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>>
      convertWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  ) async {
    try {
      final emailAddressStr =
          emailAddress.value.getOrElse(() => 'INVALID EMAIL ADDRESS');
      final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');

      var currentUser = _firebaseAuth.currentUser;

      final credential = auth.EmailAuthProvider.credential(
        email: emailAddressStr,
        password: passwordStr,
      );

      await currentUser.linkWithCredential(credential);

      currentUser = _firebaseAuth.currentUser;
      await currentUser.sendEmailVerification();

      final user = User.fromFirebaseUser(currentUser);
      return right(AuthenticationSuccess.userAuthenticatedSuccess(user));
    } on FirebaseException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthenticationFailure.emailAlreadyInUseFailure());
      }
      return left(const AuthenticationFailure.serverFailure());
    } catch (_) {
      return left(const AuthenticationFailure.unexpectedFailure());
    }
  }

  @override
  bool isAnonymous() {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null && currentUser.isAnonymous;
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>>
      isUsernameAvailable(Username username) async {
    try {
      final usernameStr = username.value.getOrElse(() => 'INVALID USERNAME');

      final documentSnapshot = await _firestore
          .collection(Paths.usernameUIDMapPath)
          .doc(usernameStr)
          .get();
      if (documentSnapshot != null && documentSnapshot.exists) {
        return left(const AuthenticationFailure.usernameAlreadyInUseFailure());
      }
      return right(const AuthenticationSuccess.usernameAvailableSuccess());
    } on FirebaseException catch (_) {
      return left(const AuthenticationFailure.serverFailure());
    } catch (_) {
      return left(const AuthenticationFailure.unexpectedFailure());
    }
  }

  @override
  bool isSignedIn() {
    final currentUser = _firebaseAuth.currentUser;
    return currentUser != null;
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>>
      resendVerificationEmail() async {
    try {
      final currentUser = _firebaseAuth.currentUser;

      if (currentUser != null) {
        await currentUser.sendEmailVerification();
        return right(
            const AuthenticationSuccess.verificationEmailSentSuccess());
      }
      return left(const AuthenticationFailure.unexpectedFailure());
    } on FirebaseException catch (_) {
      return left(const AuthenticationFailure.serverFailure());
    } catch (_) {
      return left(const AuthenticationFailure.unexpectedFailure());
    }
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>>
      signInAnonymously() async {
    try {
      await _firebaseAuth.signInAnonymously();
      return right(
        const AuthenticationSuccess.userSignedInAnonymouslySuccess(),
      );
    } on FirebaseException catch (_) {
      return left(const AuthenticationFailure.serverFailure());
    } catch (_) {
      return left(const AuthenticationFailure.unexpectedFailure());
    }
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>>
      signInWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  ) async {
    try {
      final emailAddressStr =
          emailAddress.value.getOrElse(() => 'INVALID EMAIL ADDRESS');
      final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');

      final anonymousUser = _firebaseAuth.currentUser;
      await anonymousUser?.delete();

      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      );

      final currentUser = _firebaseAuth.currentUser;
      final user = User.fromFirebaseUser(currentUser);

      return right(AuthenticationSuccess.userAuthenticatedSuccess(user));
    } on FirebaseException catch (e) {
      await _firebaseAuth.signInAnonymously();

      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(
          const AuthenticationFailure
              .invalidEmailAndPasswordCombinationFailure(),
        );
      }
      return left(const AuthenticationFailure.serverFailure());
    } catch (_) {
      return left(const AuthenticationFailure.unexpectedFailure());
    }
  }

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>>
      signInWithGoogle() async {
    try {
      final anonymousUser = _firebaseAuth.currentUser;

      final googleAccount = await _googleSignIn.signIn();
      if (googleAccount == null) {
        return left(const AuthenticationFailure.cancelledByUserFailure());
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
        return left(const AuthenticationFailure.serverFailure());
      } catch (_) {
        return left(const AuthenticationFailure.unexpectedFailure());
      }
    } on FirebaseException catch (_) {
      return left(const AuthenticationFailure.serverFailure());
    } catch (_) {
      return left(const AuthenticationFailure.unexpectedFailure());
    }
  }

  Future<AuthenticationSuccess> _trySignInWithGoogle(
    auth.User anonymousUser,
    auth.AuthCredential authCredential,
  ) async {
    await anonymousUser.linkWithCredential(authCredential);
    await _updateUserInfo(_googleSignIn.currentUser, anonymousUser);

    final anonymousUserTmp = _firebaseAuth.currentUser;

    final user = User.fromFirebaseUser(anonymousUserTmp);
    return AuthenticationSuccess.userAuthenticatedSuccess(user);
  }

  Future<AuthenticationSuccess> _signInWithGoogleCredentialAlreadyInUse(
    auth.User anonymousUser,
    auth.AuthCredential authCredential,
  ) async {
    await anonymousUser.delete();

    await _firebaseAuth.signInWithCredential(authCredential);

    var currentUser = _firebaseAuth.currentUser;

    await _updateUserInfo(_googleSignIn.currentUser, currentUser);

    currentUser = _firebaseAuth.currentUser;

    final user = User.fromFirebaseUser(currentUser);
    return AuthenticationSuccess.userAuthenticatedSuccess(user);
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

  @override
  Future<Either<AuthenticationFailure, AuthenticationSuccess>> signOut() async {
    try {
      await Future.wait([
        _firebaseAuth.signOut(),
        _googleSignIn.signOut(),
      ]);

      final currentUser = _firebaseAuth.currentUser;
      if (currentUser != null) {
        return left(const AuthenticationFailure.unableToSignOutFailure());
      }

      await _firebaseAuth.signInAnonymously();
      return right(const AuthenticationSuccess.userSignedOutSuccess());
    } on FirebaseException catch (_) {
      return left(const AuthenticationFailure.serverFailure());
    } catch (_) {
      return left(const AuthenticationFailure.unexpectedFailure());
    }
  }
}
