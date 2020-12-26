import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';

import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/infrastructure/authentication/firebase_authentication_facade.dart';

import '../../../mocks/firebase_auth_mocks.dart';
import '../../../mocks/firebase_firestore_mocks.dart';
import '../../../mocks/google_sign_in_mocks.dart';

void main() {
  const validEmail = 'hdima.riyal.99@tapiitudulu.com';
  const validPassword = 'Wd8G/[-2A+';

  const invalidEmail = 'hdima.riyal.99_tapiitudulu.com';
  const invalidPassword = '123456';

  final user = User(
    bio: null,
    createdAt: 1592255973418,
    email: validEmail,
    name: 'hdima.riyal.99',
    profilePictureURL: null,
    uid: 'IhyAvFOnGegIFDBJYmL30nAbWu92',
    updatedAt: 1608137445032,
    username: 'hdima.riyal.99',
  );

  MockFirebaseAuth firebaseAuth;
  MockGoogleSignIn googleSignIn;
  MockFirestore firestore;

  MockFirebaseUser mockFirebaseUser;

  MockDocumentSnapshot mockDocumentSnapshot;
  MockCollectionReference mockCollectionReference;
  MockDocumentReference mockDocumentReference;

  FirebaseAuthenticationFacade authenticationFacade;

  setUp(() {
    firebaseAuth = MockFirebaseAuth();
    googleSignIn = MockGoogleSignIn();
    firestore = MockFirestore();

    mockFirebaseUser = MockFirebaseUser(isAnonymous: true);

    mockDocumentSnapshot = MockDocumentSnapshot();
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();

    authenticationFacade =
        FirebaseAuthenticationFacade(firebaseAuth, googleSignIn, firestore);
  });

  group(
    'FirebaseAuthenticationFacade',
    () {
      test(
        '''
        Given a user is logged in (anonymously or otherwise)
        When getCurrentUserUID() is called
        Then an UID is returned
        ''',
        () async {
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);

          final result = await authenticationFacade.getCurrentUserUID();

          expect(result, user.uid);
        },
      );

      test(
        '''
        Given no user is logged in
        When getCurrentUserUID() is called
        Then null is returned
        ''',
        () async {
          when(firebaseAuth.currentUser).thenReturn(null);

          final result = await authenticationFacade.getCurrentUserUID();

          expect(result, null);
        },
      );

      test(
        '''
        Given a valid email and a valid password
        When convertWithEmailAndPassword() is called
        Then userAuthenticatedSuccess() is returned with a User()
        ''',
        () async {
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);

          final result = await authenticationFacade.convertWithEmailAndPassword(
            EmailAddress(validEmail),
            Password(validPassword),
          );

          expect(result.isRight(), true);
          expect(
            result,
            Right(AuthenticationSuccess.userAuthenticatedSuccess(user)),
          );

          result.fold(
            (_) {},
            (success) {
              expect(success is UserAuthenticatedSuccess, true);

              if (success is UserAuthenticatedSuccess) {
                expect(success.user, user);
              }
            },
          );
        },
      );

      test(
        '''
        Given a invalid email
        When convertWithEmailAndPassword() is called
        Then serverErrorFailure() is returned
        ''',
        () async {
          final result = await authenticationFacade.convertWithEmailAndPassword(
            EmailAddress(invalidEmail),
            Password(validPassword),
          );

          expect(result.isLeft(), true);
          expect(
            result,
            const Left(AuthenticationFailure.serverFailure()),
          );

          result.fold(
            (failure) => expect(failure is ServerFailure, true),
            (_) {},
          );
        },
      );

      test(
        '''
        Given a invalid password
        When convertWithEmailAndPassword() is called
        Then serverErrorFailure() is returned
        ''',
        () async {
          final result = await authenticationFacade.convertWithEmailAndPassword(
            EmailAddress(validEmail),
            Password(invalidPassword),
          );

          expect(result.isLeft(), true);
          expect(
            result,
            const Left(AuthenticationFailure.serverFailure()),
          );

          result.fold(
            (failure) => expect(failure is ServerFailure, true),
            (_) {},
          );
        },
      );

      test(
        '''
        Given an email is already in use
        When convertWithEmailAndPassword() is called
        Then emailAlreadyInUseFailure() is returned
        ''',
        () async {
          when(firebaseAuth.currentUser).thenAnswer(
            (_) => throw FirebaseException(
              plugin: 'auth',
              message: 'Email already in use.',
              code: 'email-already-in-use',
            ),
          );

          final result = await authenticationFacade.convertWithEmailAndPassword(
            EmailAddress(validEmail),
            Password(validPassword),
          );

          expect(result.isLeft(), true);
          expect(
            result,
            const Left(AuthenticationFailure.emailAlreadyInUseFailure()),
          );

          result.fold(
            (failure) => expect(failure is EmailAlreadyInUseFailure, true),
            (_) {},
          );
        },
      );

      test(
        '''
        Given an user is logged in anonymously
        When isAnonymous() is called
        Then true is returned
        ''',
        () async {
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);

          final result = authenticationFacade.isAnonymous();

          expect(result, true);
        },
      );

      test(
        '''
        Given an user is logged but not anonymous
        When isAnonymous() is called
        Then false is returned
        ''',
        () async {
          mockFirebaseUser = MockFirebaseUser(isAnonymous: false);

          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);

          final result = authenticationFacade.isAnonymous();

          expect(result, false);
        },
      );
    },
  );
}
