import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';

import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/infrastructure/auth/firebase_auth_facade.dart';

import '../../mocks/firebase_auth_mocks.dart';
import '../../mocks/google_sign_in_mocks.dart';
import '../utils/constants.dart';

void main() {
  FirebaseAuth _firebaseAuth;
  GoogleSignIn _googleSignIn;

  auth.User _firebaseUser;

  IAuthFacade _authFacade;

  setUp(() {
    _firebaseAuth = MockFirebaseAuth();
    _googleSignIn = MockGoogleSignIn();

    _firebaseUser = MockUser();

    _authFacade = FirebaseAuthFacade(_firebaseAuth, _googleSignIn);

    registerFallbackValue<AuthCredential>(MockAuthCredential());
  });

  group('FirebaseAuthFacade -', () {
    group('convertWithEmailAndPassword -', () {
      setUp(() {
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);
      });

      test('When credentials valid Then return Unit', () async {
        final result = await _authFacade.convertWithEmailAndPassword(
          EmailAddress(testEmailAddress),
          Password(testPassword),
        );

        result.fold(
          (_) {},
          (success) => expect(success, unit),
        );

        verify(_firebaseUser.sendEmailVerification).called(1);
      });

      test(
        'When user already registered Then return EmailAlreadyInUse',
        () async {
          when(() => _firebaseUser.linkWithCredential(any()))
              .thenThrow(testEmailAlreadyinUserException);

          final result = await _authFacade.convertWithEmailAndPassword(
            EmailAddress(testEmailAddress),
            Password(testPassword),
          );

          result.fold(
            (failure) => expect(failure, isA<EmailAlreadyInUse>()),
            (_) {},
          );
        },
      );

      test('When server error occurs Then return ServerError', () async {
        when(() => _firebaseUser.linkWithCredential(any()))
            .thenThrow(testRandomServerException);

        final result = await _authFacade.convertWithEmailAndPassword(
          EmailAddress(testEmailAddress),
          Password(testPassword),
        );

        result.fold(
          (failure) => expect(failure, isA<ServerError>()),
          (_) {},
        );
      });

      test(
        'When unexpected error occurs Then return Unexpected',
        () async {
          when(() => _firebaseUser.linkWithCredential(any()))
              .thenThrow(testUnexpected);

          final result = await _authFacade.convertWithEmailAndPassword(
            EmailAddress(testEmailAddress),
            Password(testPassword),
          );

          result.fold(
            (failure) => expect(failure, isA<Unexpected>()),
            (_) {},
          );
        },
      );
    });

    group('getLoggedInUser -', () {
      test('When user not logged in Then return None', () async {
        when(() => _firebaseAuth.currentUser).thenReturn(null);

        final result = await _authFacade.getLoggedInUser();

        expect(result.isNone(), true);
      });

      test('When user logged in Then return Some User', () async {
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);

        final result = await _authFacade.getLoggedInUser();

        result.fold(
          () {},
          (some) => expect(some, testUser),
        );
      });
    });

    group('isAnonymous -', () {
      test('When user not logged in Then return false', () {
        when(() => _firebaseAuth.currentUser).thenReturn(null);

        expect(_authFacade.isAnonymous, false);
      });

      test('When user logged anonymously Then return true', () {
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);

        expect(_authFacade.isAnonymous, true);
      });

      test('When user authenticated Then return false', () {
        final authUser = MockUser(isAnonymous: false);

        when(() => _firebaseAuth.currentUser).thenReturn(authUser);

        expect(_authFacade.isAnonymous, false);
      });
    });

    group('isLoggedIn -', () {
      test('When user logged in Then return true', () {
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);

        expect(_authFacade.isLoggedIn, true);
      });

      test('When user not logged in Then return false', () {
        when(() => _firebaseAuth.currentUser).thenReturn(null);

        expect(_authFacade.isLoggedIn, false);
      });
    });

    group('logInAnonymously -', () {
      test('When user logged in Then return Unit', () async {
        when(_firebaseAuth.signInAnonymously)
            .thenAnswer((_) async => MockUserCredential());

        final result = await _authFacade.logInAnonymously();

        result.fold(
          (_) {},
          (success) => expect(success, isA<Unit>()),
        );
      });

      test('When server error occurs Then return ServerError', () async {
        when(_firebaseAuth.signInAnonymously)
            .thenThrow(testRandomServerException);

        final result = await _authFacade.logInAnonymously();

        result.fold(
          (failure) => expect(failure, isA<ServerError>()),
          (_) {},
        );
      });

      test('When unexpected error occurs Then return Unexpected', () async {
        when(_firebaseAuth.signInAnonymously).thenThrow(testUnexpected);

        final result = await _authFacade.logInAnonymously();

        result.fold(
          (failure) => expect(failure, isA<Unexpected>()),
          (_) {},
        );
      });
    });

    group('logInWithEmailAndPassword -', () {
      setUp(() {
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);
      });

      test(
        'When credentials valid and user registered Then return Unit',
        () async {
          when(
            () => _firebaseAuth.signInWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
            ),
          ).thenAnswer((_) async => MockUserCredential());

          final result = await _authFacade.logInWithEmailAndPassword(
            EmailAddress(testEmailAddress),
            Password(testPassword),
          );

          result.fold(
            (_) {},
            (success) => expect(success, unit),
          );
        },
      );

      test(
        '''When wrong email/password combination Then return InvalidEmailAndPasswordCombination''',
        () async {
          when(
            () => _firebaseAuth.signInWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
            ),
          ).thenThrow(testInvalidEmailPasswordCombination);

          final result = await _authFacade.logInWithEmailAndPassword(
            EmailAddress(testEmailAddress),
            Password(testPassword),
          );

          result.fold(
            (failure) => expect(
              failure,
              isA<InvalidEmailAndPasswordCombination>(),
            ),
            (_) {},
          );
        },
      );

      test('When server error occurs Then return ServerError', () async {
        when(
          () => _firebaseAuth.signInWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenThrow(testRandomServerException);

        final result = await _authFacade.logInWithEmailAndPassword(
          EmailAddress(testEmailAddress),
          Password(testPassword),
        );

        result.fold(
          (failure) => expect(failure, isA<ServerError>()),
          (_) {},
        );
      });
    });

    group('logInWithGoogle -', () {});

    group('logOut -', () {
      setUp(() {
        when(_firebaseAuth.signOut).thenAnswer((_) async => null);
      });

      test('When user logged out Then return Unit', () async {
        when(_googleSignIn.signOut)
            .thenAnswer((_) async => MockGoogleSignInAccount());
        when(() => _firebaseAuth.currentUser).thenReturn(null);
        when(_firebaseAuth.signInAnonymously)
            .thenAnswer((_) async => MockUserCredential());

        final result = await _authFacade.logOut();

        result.fold(
          (_) {},
          (success) => expect(success, isA<Unit>()),
        );
      });

      test('When user not logged out Then return UnableToSignOut', () async {
        when(_googleSignIn.signOut)
            .thenAnswer((_) async => MockGoogleSignInAccount());
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);

        final result = await _authFacade.logOut();

        result.fold(
          (failure) => expect(failure, isA<UnableToSignOut>()),
          (_) {},
        );
      });

      test('When unexpected error occurs Then return Unexpected', () async {
        when(_googleSignIn.signOut).thenThrow(testUnexpected);

        final result = await _authFacade.logOut();

        result.fold(
          (failure) => expect(failure, isA<Unexpected>()),
          (_) {},
        );
      });
    });

    group('resendVerificationEmail -', () {
      test('When verification email sent Then return Unit', () async {
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);

        final result = await _authFacade.resendVerificationEmail();

        result.fold(
          (_) {},
          (success) => expect(success, isA<Unit>()),
        );
      });

      test('When user null Then return Unexpected', () async {
        when(() => _firebaseAuth.currentUser).thenReturn(null);

        final result = await _authFacade.resendVerificationEmail();

        result.fold(
          (failure) => expect(failure, isA<Unexpected>()),
          (_) {},
        );
      });

      test(
        'When unexpected error occurs Then return Unexpected',
        () async {
          when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);
          when(_firebaseUser.sendEmailVerification).thenThrow(testUnexpected);

          final result = await _authFacade.resendVerificationEmail();

          result.fold(
            (failure) => expect(failure, isA<Unexpected>()),
            (_) {},
          );
        },
      );
    });
  });
}
