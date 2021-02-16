import 'package:firebase_core/firebase_core.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';

import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/infrastructure/authentication/firebase_authentication_facade.dart';

import '../../../mocks/firebase_auth_mocks.dart';
import '../../../mocks/firebase_firestore_mocks.dart';
import '../../../mocks/google_sign_in_mocks.dart';
import '../../../utils/constants.dart';

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
            'When user authenticated Then return user UID',
            () async {
              when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

              final result = await authenticationFacade.getCurrentUserUID();

              expect(result, user.uid);
            },
          );

          test(
            'When user unauthenticated Then return null',
            () async {
              when(mockFirebaseAuth.currentUser).thenReturn(null);

              final result = await authenticationFacade.getCurrentUserUID();

              expect(result, null);
            },
          );
        },
      );

      group(
        'convertWithEmailAndPassword -',
        () {
          test(
            '''
            Scenario: We trying to convert an anonymous user to a registered user with an email and a password [SUCCESS CASE]
            Given a valid EmailAddress() and a valid Password()
            When convertWithEmailAndPassword() is called
            Then userAuthenticatedSuccess() is returned with a User()
            ''',
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
                (success) {
                  expect(success, isA<UserAuthenticatedSuccess>());

                  if (success is UserAuthenticatedSuccess) {
                    expect(success.user, user);
                  }
                },
              );
            },
          );

          test(
            '''
            Scenario: We trying to convert an anonymous user to a registered user with an email and a password [UNEXPECTED FAILURE CASE]
            Given an invalid EmailAddress() and a valid Password()
            When convertWithEmailAndPassword() is called
            Then unexpectedFailure() is returned
            ''',
            () async {
              final result =
                  await authenticationFacade.convertWithEmailAndPassword(
                EmailAddress(invalidEmail),
                Password(validPassword),
              );

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<UnexpectedFailure>()),
                (_) {},
              );
            },
          );

          test(
            '''
            Scenario: We trying to convert an anonymous user to a registered user with an email and a password [UNEXPECTED FAILURE CASE]
            Given a valid EmailAddress() and an invalid Password()
            When convertWithEmailAndPassword() is called
            Then unexpectedFailure() is returned
            ''',
            () async {
              final result =
                  await authenticationFacade.convertWithEmailAndPassword(
                EmailAddress(validEmail),
                Password(invalidPassword),
              );

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<UnexpectedFailure>()),
                (_) {},
              );
            },
          );

          test(
            '''
            Scenario: We trying to convert an anonymous user to a registered user with an email and a password [SERVER FAILURE CASE]
            Given an email address is already in use
            When convertWithEmailAndPassword() is called
            Then emailAlreadyInUseFailure() is returned
            ''',
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
                (failure) => expect(failure, isA<EmailAlreadyInUseFailure>()),
                (_) {},
              );
            },
          );

          test(
            '''
            Scenario: We trying to convert an anonymous user to a registered user with an email and a password [SERVER FAILURE CASE]
            Given the user credential is already linked to an account
            When convertWithEmailAndPassword() is called
            Then serverFailure() is returned
            ''',
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
                (failure) => expect(failure, isA<ServerFailure>()),
                (_) {},
              );
            },
          );

          test(
            '''
            Scenario: We trying to convert an anonymous user to a registered user with an email and a password [UNEXPECTED FAILURE CASE]
            Given a valid EmailAddress() and a valid Password()
            When convertWithEmailAndPassword() is called
            Then unexpectedFailure() is returned
            ''',
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
                (failure) => expect(failure, isA<UnexpectedFailure>()),
                (_) {},
              );
            },
          );
        },
      );

      // SECTION: isAnonymous
      group(
        'isAnonymous -',
        () {
          test(
            '''
            Scenario: We trying to know if the user is anonymous [TRUE CASE]
            Given an user is logged in anonymously
            When isAnonymous() is called
            Then true is returned
            ''',
            () async {
              when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

              final result = authenticationFacade.isAnonymous();

              expect(result, true);
            },
          );

          test(
            '''
            Scenario: We trying to know if the user is anonymous [FALSE CASE]
            Given an user is logged as a registered user
            When isAnonymous() is called
            Then false is returned
            ''',
            () async {
              mockFirebaseUser = MockFirebaseUser(isAnonymous: false);

              when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

              final result = authenticationFacade.isAnonymous();

              expect(result, false);
            },
          );
        },
      );

      // SECTION: isUsernameAvailable
      group(
        'isUsernameAvailable -',
        () {
          test(
            '''
            Scenario: We trying to know if the username is available [SUCCESS CASE]
            Given a valid and non-existent username
            When isUsernameAvailable() is called
            Then usernameAvailableSuccess() is returned
            ''',
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
                (success) => expect(success, isA<UsernameAvailableSuccess>()),
              );
            },
          );

          test(
            '''
            Scenario: We trying to know if the username is available [FAILURE CASE]
            Given a valid and existent username
            When isUsernameAvailable() is called
            Then usernameAlreadyInUseFailure() is returned
            ''',
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

              expect(result.isLeft(), true);

              result.fold(
                (failure) =>
                    expect(failure, isA<UsernameAlreadyInUseFailure>()),
                (_) {},
              );
            },
          );

          test(
            '''
            Scenario: We trying to know if the username is available [UNEXPECTED FAILURE CASE]
            Given an invalid username
            When isUsernameAvailable() is called
            Then unexpectedFailure() is returned
            ''',
            () async {
              when(mockFirestore.collection(any))
                  .thenThrow(Exception('An unexpected error occured!'));

              final result = await authenticationFacade
                  .isUsernameAvailable(Username(invalidUsername));

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<UnexpectedFailure>()),
                (_) {},
              );
            },
          );

          test(
            '''
            Scenario: We trying to know if the username is available [SERVER FAILURE CASE]
            Given an valid username
            When isUsernameAvailable() is called
            Then serverFailure() is returned
            ''',
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
                (failure) => expect(failure, isA<ServerFailure>()),
                (_) {},
              );
            },
          );
        },
      );

      // SECTION: isSignedIn
      test(
        '''
        Given is signed in
        When isSignedIn() is called
        Then true is returned
        ''',
        () {
          when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

          final result = authenticationFacade.isSignedIn();

          expect(result, true);
        },
      );

      test(
        '''
        Given is not signed in
        When isSignedIn() is called
        Then false is returned
        ''',
        () {
          when(mockFirebaseAuth.currentUser).thenReturn(null);

          final result = authenticationFacade.isSignedIn();

          expect(result, false);
        },
      );

      // SECTION: resendVerificationEmail
      test(
        '''
        Given currentUser is not null
        When resendVerificationEmail() is called
        Then verificationEmailSentSuccess() is returned
        ''',
        () async {
          when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

          final result = await authenticationFacade.resendVerificationEmail();

          expect(result.isRight(), true);

          result.fold(
            (_) {},
            (success) => expect(success, isA<VerificationEmailSentSuccess>()),
          );
        },
      );

      test(
        '''
        Given currentUser is null
        When resendVerificationEmail() is called
        Then serverFailure() is returned
        ''',
        () async {
          when(mockFirebaseAuth.currentUser).thenReturn(null);

          final result = await authenticationFacade.resendVerificationEmail();

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<ServerFailure>()),
            (_) {},
          );
        },
      );

      test(
        '''
        Given an exception is thrown
        When resendVerificationEmail() is called
        Then serverFailure() is returned
        ''',
        () async {
          when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(mockFirebaseUser.sendEmailVerification())
              .thenThrow(Exception('An unexpected error occured!'));

          final result = await authenticationFacade.resendVerificationEmail();

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<ServerFailure>()),
            (_) {},
          );
        },
      );

      // SECTION: signInAnonymously
      test(
        '''
        Given the user sign in anonymously
        When signInAnonymously() is called
        Then userSignedInAnonymouslySuccess() is returned
        ''',
        () async {
          when(mockFirebaseAuth.signInAnonymously())
              .thenAnswer((_) async => mockUserCredential);

          final result = await authenticationFacade.signInAnonymously();

          expect(result.isRight(), true);

          result.fold(
            (_) {},
            (success) => expect(success, isA<UserSignedInAnonymouslySuccess>()),
          );
        },
      );

      test(
        '''
        Given an exception is thrown
        When resendVerificationEmail() is called
        Then serverFailure() is returned
        ''',
        () async {
          when(mockFirebaseAuth.signInAnonymously())
              .thenThrow(Exception('An unexpected error occured!'));

          final result = await authenticationFacade.signInAnonymously();

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<ServerFailure>()),
            (_) {},
          );
        },
      );

      // SECTION: signInWithEmailAndPassword
      test(
        '''
        Given valid email and password
        When signInWithEmailAndPassword() is called
        Then userAuthenticatedSuccess() is returned with User()
        ''',
        () async {
          when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(
            mockFirebaseAuth.signInWithEmailAndPassword(
              email: anyNamed('email'),
              password: anyNamed('password'),
            ),
          ).thenAnswer((_) async => mockUserCredential);

          final result = await authenticationFacade.signInWithEmailAndPassword(
            EmailAddress(validEmail),
            Password(validPassword),
          );

          expect(result.isRight(), true);

          result.fold(
            (_) {},
            (success) {
              expect(success, isA<UserAuthenticatedSuccess>());

              if (success is UserAuthenticatedSuccess) {
                expect(success.user, user);
              }
            },
          );
        },
      );

      test(
        '''
        Given invalid email
        When signInWithEmailAndPassword() is called
        Then serverFailure() is returned
        ''',
        () async {
          when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(
            mockFirebaseAuth.signInWithEmailAndPassword(
              email: anyNamed('email'),
              password: anyNamed('password'),
            ),
          ).thenAnswer((_) async => mockUserCredential);

          final result = await authenticationFacade.signInWithEmailAndPassword(
            EmailAddress(invalidEmail),
            Password(validPassword),
          );

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<ServerFailure>()),
            (_) {},
          );
        },
      );

      test(
        '''
        Given invalid password
        When signInWithEmailAndPassword() is called
        Then serverFailure() is returned
        ''',
        () async {
          when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(
            mockFirebaseAuth.signInWithEmailAndPassword(
              email: anyNamed('email'),
              password: anyNamed('password'),
            ),
          ).thenAnswer((_) async => mockUserCredential);

          final result = await authenticationFacade.signInWithEmailAndPassword(
            EmailAddress(validEmail),
            Password(invalidPassword),
          );

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<ServerFailure>()),
            (_) {},
          );
        },
      );

      test(
        '''
        Given valid email and password but wrong combination of credentials
        When signInWithEmailAndPassword() is called
        Then invalidEmailAndPasswordCombinationFailure() is returned
        ''',
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

          final result = await authenticationFacade.signInWithEmailAndPassword(
            EmailAddress(validEmail),
            Password(validPassword),
          );

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(
              failure,
              isA<InvalidEmailAndPasswordCombinationFailure>(),
            ),
            (_) {},
          );
        },
      );

      test(
        '''
        Given a Firebase exception other than 'wrong-password' and 'user-not-found' is thrown
        When signInWithEmailAndPassword() is called
        Then serverFailure() is returned
        ''',
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

          final result = await authenticationFacade.signInWithEmailAndPassword(
            EmailAddress(validEmail),
            Password(validPassword),
          );

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<ServerFailure>()),
            (_) {},
          );
        },
      );

      test(
        '''
        Given an exception is thrown
        When signInWithEmailAndPassword() is called
        Then serverFailure() is returned
        ''',
        () async {
          when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(
            mockFirebaseAuth.signInWithEmailAndPassword(
              email: anyNamed('email'),
              password: anyNamed('password'),
            ),
          ).thenThrow(Exception('An unexpected error occured!'));

          final result = await authenticationFacade.signInWithEmailAndPassword(
            EmailAddress(validEmail),
            Password(validPassword),
          );

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<ServerFailure>()),
            (_) {},
          );
        },
      );

      // SECTION: signInWithGoogle
      test(
        '''
        Given user logs with Google
        When signInWithGoogle() is called
        Then userAuthenticatedSuccess() is returned with User()
        ''',
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
            (success) {
              expect(success, isA<UserAuthenticatedSuccess>());

              if (success is UserAuthenticatedSuccess) {
                expect(success.user, user);
              }
            },
          );
        },
      );

      test(
        '''
        Given user tries to log with Google and cancel
        When signInWithGoogle() is called
        Then cancelledByUserFailure() is returned
        ''',
        () async {
          when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(mockGoogleSignIn.signIn()).thenAnswer((_) async => null);

          final result = await authenticationFacade.signInWithGoogle();

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<CancelledByUserFailure>()),
            (_) {},
          );
        },
      );

      test(
        '''
        Given user credential already in use
        When signInWithGoogle() is called
        Then userAuthenticatedSucess() is returned with User()
        ''',
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
            (success) {
              expect(success, isA<UserAuthenticatedSuccess>());

              if (success is UserAuthenticatedSuccess) {
                expect(success.user, user);
              }
            },
          );
        },
      );

      test(
        '''
        Given a Firebase exception other than 'credential-already-in-use' is thrown
        When signInWithGoogle() is called
        Then serverFailure() is returned
        ''',
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
            (failure) => expect(failure, isA<ServerFailure>()),
            (_) {},
          );
        },
      );

      test(
        '''
        Given an exception is thrown
        When signInWithGoogle() is called
        Then serverFailure() is returned
        ''',
        () async {
          when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(mockGoogleSignIn.signIn())
              .thenThrow(Exception('An unexpected error occured!'));

          final result = await authenticationFacade.signInWithGoogle();

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<ServerFailure>()),
            (_) {},
          );
        },
      );

      // SECTION: signOut
      test(
        '''
        Given logged in user try to log out
        When signOut() is called
        Then userSignedOutSuccess() is returned
        ''',
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
            (success) => expect(success, isA<UserSignedOutSuccess>()),
          );
        },
      );

      test(
        '''
        Given logged in user try to log out and fails
        When signOut() is called
        Then unableToSignOutFailure() is returned
        ''',
        () async {
          when(mockFirebaseAuth.signOut()).thenAnswer((_) async => null);
          when(mockGoogleSignIn.signOut())
              .thenAnswer((_) async => mockGoogleSignInAccount);
          when(mockFirebaseAuth.currentUser).thenReturn(mockFirebaseUser);

          final result = await authenticationFacade.signOut();

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<UnableToSignOutFailure>()),
            (_) {},
          );
        },
      );

      test(
        '''
        Given an exception is thrown
        When signOut() is called
        Then serverFailure() is returned
        ''',
        () async {
          when(mockFirebaseAuth.signOut()).thenAnswer((_) async => null);
          when(mockGoogleSignIn.signOut())
              .thenThrow(Exception('An unexpected error occured!'));

          final result = await authenticationFacade.signOut();

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<ServerFailure>()),
            (_) {},
          );
        },
      );
    },
  );
}
