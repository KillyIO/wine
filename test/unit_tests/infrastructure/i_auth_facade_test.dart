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

  group('IAuthFacade -', () {
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
  });
}
