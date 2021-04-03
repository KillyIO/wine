import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/widgets.dart';
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

        debugPrint(result.toString());

        result.fold(
          (_) {},
          (success) => expect(success, unit),
        );
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
              .thenThrow(testUnexpectedError);

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
  });
}
