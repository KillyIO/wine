import 'package:dartz/dartz.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';

import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/infrastructure/authentication/firebase_authentication_facade.dart';

import '../../mocks/firebase_auth_mocks.dart';
import '../../mocks/firebase_firestore_mocks.dart';
import '../../mocks/google_sign_in_mocks.dart';
import '../../utils/constants.dart';

void main() {
  const validEmail = 'email@email.com';
  const validPassword = 'Wd8G/[-2A+';
  const validUsername = 'email';

  const invalidEmail = 'email.email.com';
  const invalidPassword = '123456';
  const invalidUsername = '';

  User user;

  MockFirebaseAuth mockFirebaseAuth;
  MockGoogleSignIn mockGoogleSignIn;
  MockFirestore mockFirestore;

  MockFirebaseUser mockFirebaseUser;
  MockUserCredential mockUserCredential;

  MockGoogleSignInAccount mockGoogleSignInAccount;

  MockDocumentSnapshot mockDocumentSnapshot;
  MockCollectionReference mockCollectionReference;
  MockDocumentReference mockDocumentReference;

  IAuthenticationFacade authenticationFacade;

  setUp(() {
    user = User(
      isBanned: false,
      isDeleted: false,
      banDeadline: null,
      createdAt: testTimeStamp,
      updatedAt: testTimeStamp,
      banReason: null,
      bio: null,
      deletionReason: null,
      email: validEmail,
      name: testName,
      profilePictureURL: null,
      uid: testUserUID,
      username: testUsername,
    );

    mockFirebaseAuth = MockFirebaseAuth();
    mockGoogleSignIn = MockGoogleSignIn();
    mockFirestore = MockFirestore();

    mockFirebaseUser = MockFirebaseUser(isAnonymous: true);
    mockUserCredential = MockUserCredential(isAnonymous: true);

    mockGoogleSignInAccount = MockGoogleSignInAccount();

    mockDocumentSnapshot = MockDocumentSnapshot();
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();

    authenticationFacade = FirebaseAuthenticationFacade(
      mockFirebaseAuth,
      mockGoogleSignIn,
      mockFirestore,
    );
  });

  group(
    'IAuthenticationFacade -',
    () {
      group(
        'getCurrentUserUID -',
        () {
          test(
            'When user unauthenticated Then return null',
            () async {
              when(mockFirebaseAuth.currentUser).thenReturn(null);

              final result = await authenticationFacade.getCurrentUserUID();

              expect(result, null);
            },
          );

          test(
            'When user authenticated Then return user UID',
            () async {
              when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

              final result = await authenticationFacade.getCurrentUserUID();

              expect(result, user.uid);
            },
          );
        },
      );

      group(
        'convertWithEmailAndPassword -',
        () {
          test(
            'When credential valid Then return user data',
            () async {
              when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

              final result =
                  await authenticationFacade.convertWithEmailAndPassword(
                EmailAddress(validEmail),
                Password(validPassword),
              );

              expect(result.isRight(), true);
              result.fold(
                (_) {},
                (usuccess) => expect(usuccess, user),
              );
            },
          );

          test(
            'When email invalid Then return UnexpectedError',
            () async {
              final result =
                  await authenticationFacade.convertWithEmailAndPassword(
                EmailAddress(invalidEmail),
                Password(validPassword),
              );

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<UnexpectedError>()),
                (_) {},
              );
            },
          );

          test(
            'When password invalid Then return UnexpectedError',
            () async {
              final result =
                  await authenticationFacade.convertWithEmailAndPassword(
                EmailAddress(validEmail),
                Password(invalidPassword),
              );

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<UnexpectedError>()),
                (_) {},
              );
            },
          );

          test(
            'When email already registered Then return EmailAlreadyInUse',
            () async {
              when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
              when(mockFirebaseUser.linkWithCredential(any)).thenThrow(
                FirebaseException(
                  plugin: 'auth',
                  message: 'Email already in use.',
                  code: 'email-already-in-use',
                ),
              );

              final result =
                  await authenticationFacade.convertWithEmailAndPassword(
                EmailAddress(validEmail),
                Password(validPassword),
              );

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<EmailAlreadyInUse>()),
                (_) {},
              );
            },
          );

          test(
            'When FirebaseException thrown Then return ServerError',
            () async {
              when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
              when(mockFirebaseUser.linkWithCredential(any)).thenThrow(
                FirebaseException(
                  plugin: 'auth',
                  message: 'Provider already linked.',
                  code: 'provider-already-linked',
                ),
              );

              final result =
                  await authenticationFacade.convertWithEmailAndPassword(
                EmailAddress(validEmail),
                Password(validPassword),
              );

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<ServerError>()),
                (_) {},
              );
            },
          );

          test(
            'When Exception thrown Then return UnexpectedError',
            () async {
              when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
              when(mockFirebaseUser.linkWithCredential(any))
                  .thenThrow(Exception('An unexpected error occured!'));

              final result =
                  await authenticationFacade.convertWithEmailAndPassword(
                EmailAddress(validEmail),
                Password(validPassword),
              );

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<UnexpectedError>()),
                (_) {},
              );
            },
          );
        },
      );

      group(
        'isAnonymous -',
        () {
          test(
            'When user anonymous Then return true',
            () async {
              when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

              final result = authenticationFacade.isAnonymous();

              expect(result, true);
            },
          );

          test(
            'When user authenticated Then return false',
            () async {
              mockFirebaseUser = MockFirebaseUser(isAnonymous: false);

              when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

              final result = authenticationFacade.isAnonymous();

              expect(result, false);
            },
          );
        },
      );

      group(
        'isUsernameAvailable -',
        () {
          test(
            'When username valid And not registered Then return true',
            () async {
              when(mockFirestore.collection(any))
                  .thenReturn(mockCollectionReference);
              when(mockCollectionReference.doc(any))
                  .thenReturn(mockDocumentReference);
              when(mockDocumentReference.get())
                  .thenAnswer((_) async => mockDocumentSnapshot);
              when(mockDocumentSnapshot.exists).thenReturn(false);

              final result = await authenticationFacade
                  .isUsernameAvailable(Username(validUsername));

              expect(result.isRight(), true);
              result.fold(
                (_) {},
                (success) => expect(success, true),
              );
            },
          );

          test(
            'When username valid But already registered Then return false',
            () async {
              when(mockFirestore.collection(any))
                  .thenReturn(mockCollectionReference);
              when(mockCollectionReference.doc(any))
                  .thenReturn(mockDocumentReference);
              when(mockDocumentReference.get())
                  .thenAnswer((_) async => mockDocumentSnapshot);
              when(mockDocumentSnapshot.exists).thenReturn(true);

              final result = await authenticationFacade
                  .isUsernameAvailable(Username(validUsername));

              expect(result.isRight(), true);
              result.fold(
                (_) {},
                (success) => expect(success, false),
              );
            },
          );

          test(
            'When Exception thrown Then return UnexpectedError',
            () async {
              when(mockFirestore.collection(any))
                  .thenThrow(Exception('An unexpected error occured!'));

              final result = await authenticationFacade
                  .isUsernameAvailable(Username(invalidUsername));

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<UnexpectedError>()),
                (_) {},
              );
            },
          );

          test(
            'When FirebaseException thrown Then return ServerError',
            () async {
              when(mockFirestore.collection(any)).thenThrow(
                FirebaseException(
                  plugin: 'auth',
                  message: 'The user has been disabled!',
                  code: 'user-disabled',
                ),
              );

              final result = await authenticationFacade
                  .isUsernameAvailable(Username(validUsername));

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<ServerError>()),
                (_) {},
              );
            },
          );
        },
      );

      group('isSignedIn -', () {
        test(
          'When user signed in Then return true',
          () {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

            final result = authenticationFacade.isSignedIn();

            expect(result, true);
          },
        );

        test(
          'When user not signed in Then return false',
          () {
            when(mockFirebaseAuth.currentUser).thenReturn(null);

            final result = authenticationFacade.isSignedIn();

            expect(result, false);
          },
        );
      });

      group('resendVerificationEmail -', () {
        test(
          'When user null Then return UnexpectedError',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(null);

            final result = await authenticationFacade.resendVerificationEmail();

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(failure, isA<UnexpectedError>()),
              (_) {},
            );
          },
        );

        test(
          'When verification email sent Then return unit',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

            final result = await authenticationFacade.resendVerificationEmail();

            expect(result.isRight(), true);
            result.fold(
              (_) {},
              (success) => expect(success, isA<Unit>()),
            );
          },
        );

        test(
          'When Exception thrown Then return UnexpectedError',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
            when(mockFirebaseUser.sendEmailVerification())
                .thenThrow(Exception('An unexpected error occured!'));

            final result = await authenticationFacade.resendVerificationEmail();

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(failure, isA<UnexpectedError>()),
              (_) {},
            );
          },
        );
      });

      group('signInAnonymously -', () {
        test(
          'When user signed in Then return Unit',
          () async {
            when(mockFirebaseAuth.signInAnonymously())
                .thenAnswer((_) async => mockUserCredential);

            final result = await authenticationFacade.signInAnonymously();

            expect(result.isRight(), true);
            result.fold(
              (_) {},
              (success) => expect(success, isA<Unit>()),
            );
          },
        );

        test(
          'When Exception thrown Then return UnexpectedError',
          () async {
            when(mockFirebaseAuth.signInAnonymously())
                .thenThrow(Exception('An unexpected error occured!'));

            final result = await authenticationFacade.signInAnonymously();

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(failure, isA<UnexpectedError>()),
              (_) {},
            );
          },
        );
      });

      group('signInWithEmailAndPassword -', () {
        test(
          'When user authenticated Then return user data',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
            when(
              mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed('email'),
                password: anyNamed('password'),
              ),
            ).thenAnswer((_) async => mockUserCredential);

            final result =
                await authenticationFacade.signInWithEmailAndPassword(
              EmailAddress(validEmail),
              Password(validPassword),
            );

            expect(result.isRight(), true);
            result.fold(
              (_) {},
              (success) => expect(success, user),
            );
          },
        );

        test(
          'When email invalid Then return UnexpectedError',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
            when(
              mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed('email'),
                password: anyNamed('password'),
              ),
            ).thenAnswer((_) async => mockUserCredential);

            final result =
                await authenticationFacade.signInWithEmailAndPassword(
              EmailAddress(invalidEmail),
              Password(validPassword),
            );
            debugPrint(result.toString());

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(failure, isA<UnexpectedError>()),
              (_) {},
            );
          },
        );

        test(
          'When password invalid Then return UnexpectedError',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
            when(
              mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed('email'),
                password: anyNamed('password'),
              ),
            ).thenAnswer((_) async => mockUserCredential);

            final result =
                await authenticationFacade.signInWithEmailAndPassword(
              EmailAddress(validEmail),
              Password(invalidPassword),
            );

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(failure, isA<UnexpectedError>()),
              (_) {},
            );
          },
        );

        test(
          '''When wrong email/password combination Then return InvalidEmailAndPasswordCombination''',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
            when(
              mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed('email'),
                password: anyNamed('password'),
              ),
            ).thenThrow(FirebaseException(
              plugin: 'auth',
              message: 'Wrong email/password combination',
              code: 'user-not-found',
            ));

            final result =
                await authenticationFacade.signInWithEmailAndPassword(
              EmailAddress(validEmail),
              Password(validPassword),
            );

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(
                failure,
                isA<InvalidEmailAndPasswordCombination>(),
              ),
              (_) {},
            );
          },
        );

        test(
          'When FirebaseException thrown (wrong-password/user-not-found excluded) Then return ServerError',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
            when(
              mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed('email'),
                password: anyNamed('password'),
              ),
            ).thenThrow(FirebaseException(
              plugin: 'auth',
              message: 'An unexpected error occured!',
              code: 'user-disabled',
            ));

            final result =
                await authenticationFacade.signInWithEmailAndPassword(
              EmailAddress(validEmail),
              Password(validPassword),
            );

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(failure, isA<ServerError>()),
              (_) {},
            );
          },
        );

        test(
          'When Exception thrown Then return UnexpectedError',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
            when(
              mockFirebaseAuth.signInWithEmailAndPassword(
                email: anyNamed('email'),
                password: anyNamed('password'),
              ),
            ).thenThrow(Exception('An unexpected error occured!'));

            final result =
                await authenticationFacade.signInWithEmailAndPassword(
              EmailAddress(validEmail),
              Password(validPassword),
            );

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(failure, isA<UnexpectedError>()),
              (_) {},
            );
          },
        );
      });

      group('signInWithGoogle -', () {
        test(
          'When user signed in Then return user data',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
            when(mockGoogleSignIn.signIn()).thenAnswer(
              (_) async => mockGoogleSignInAccount,
            );
            when(mockFirebaseUser.linkWithCredential(any))
                .thenAnswer((_) async => mockUserCredential);
            when(mockGoogleSignIn.currentUser)
                .thenReturn(mockGoogleSignInAccount);

            final result = await authenticationFacade.signInWithGoogle();

            expect(result.isRight(), true);
            result.fold(
              (_) {},
              (success) => expect(success, user),
            );
          },
        );

        test(
          'When user cancel Then return CancelledByUser',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
            when(mockGoogleSignIn.signIn()).thenAnswer((_) async => null);

            final result = await authenticationFacade.signInWithGoogle();

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(failure, isA<CancelledByUser>()),
              (_) {},
            );
          },
        );

        test(
          'When credential already in use Then return user data',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
            when(mockGoogleSignIn.signIn())
                .thenAnswer((_) async => mockGoogleSignInAccount);
            when(mockFirebaseUser.linkWithCredential(any)).thenThrow(
              FirebaseException(
                plugin: 'auth',
                message: 'Credential already in use!',
                code: 'credential-already-in-use',
              ),
            );
            when(mockFirebaseAuth.signInWithCredential(any))
                .thenAnswer((_) async => mockUserCredential);
            when(mockGoogleSignIn.currentUser)
                .thenReturn(mockGoogleSignInAccount);

            final result = await authenticationFacade.signInWithGoogle();

            expect(result.isRight(), true);
            result.fold(
              (_) {},
              (success) => expect(success, user),
            );
          },
        );

        test(
          '''When FirebaseException thrown (credential-already-in-use excluded) Then return ServerError''',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
            when(mockGoogleSignIn.signIn()).thenThrow(FirebaseException(
              plugin: 'auth',
              message: 'Email already in use!',
              code: 'email-already-in-use',
            ));

            final result = await authenticationFacade.signInWithGoogle();

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(failure, isA<ServerError>()),
              (_) {},
            );
          },
        );

        test(
          'When Exception thrown Then return UnexpectedError',
          () async {
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
            when(mockGoogleSignIn.signIn())
                .thenThrow(Exception('An unexpected error occured!'));

            final result = await authenticationFacade.signInWithGoogle();

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(failure, isA<UnexpectedError>()),
              (_) {},
            );
          },
        );
      });

      group('signOut -', () {
        test(
          'When user signed out Then return Unit',
          () async {
            when(mockFirebaseAuth.signOut()).thenAnswer((_) async => null);
            when(mockGoogleSignIn.signOut())
                .thenAnswer((_) async => mockGoogleSignInAccount);
            when(mockFirebaseAuth.currentUser).thenReturn(null);
            when(mockFirebaseAuth.signInAnonymously())
                .thenAnswer((_) async => mockUserCredential);

            final result = await authenticationFacade.signOut();

            expect(result.isRight(), true);
            result.fold(
              (_) {},
              (success) => expect(success, isA<Unit>()),
            );
          },
        );

        test(
          'When user not signed out Then return UnableToSignOut',
          () async {
            when(mockFirebaseAuth.signOut()).thenAnswer((_) async => null);
            when(mockGoogleSignIn.signOut())
                .thenAnswer((_) async => mockGoogleSignInAccount);
            when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

            final result = await authenticationFacade.signOut();

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(failure, isA<UnableToSignOut>()),
              (_) {},
            );
          },
        );

        test(
          'When Exception thrown Then return UnexpectedError',
          () async {
            when(mockFirebaseAuth.signOut()).thenAnswer((_) async => null);
            when(mockGoogleSignIn.signOut())
                .thenThrow(Exception('An unexpected error occured!'));

            final result = await authenticationFacade.signOut();

            expect(result.isLeft(), true);
            result.fold(
              (failure) => expect(failure, isA<UnexpectedError>()),
              (_) {},
            );
          },
        );
      });
    },
  );
}
