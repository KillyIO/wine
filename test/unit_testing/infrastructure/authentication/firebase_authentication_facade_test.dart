import 'package:firebase_core/firebase_core.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wine/domain/authentication/authentication_failure.dart';

import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/authentication/username.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/infrastructure/authentication/firebase_authentication_facade.dart';

import '../../../mocks/firebase_auth_mocks.dart';
import '../../../mocks/firebase_firestore_mocks.dart';
import '../../../mocks/google_sign_in_mocks.dart';

void main() {
  const validEmail = 'hdima.riyal.99@tapiitudulu.com';
  const validPassword = 'Wd8G/[-2A+';
  const validUsername = 'hdima.riyal.99';

  const invalidEmail = 'hdima.riyal.99_tapiitudulu.com';
  const invalidPassword = '123456';
  const invalidUsername = '';

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
  MockUserCredential mockUserCredential;

  MockGoogleSignInAccount mockGoogleSignInAccount;

  MockDocumentSnapshot mockDocumentSnapshot;
  MockCollectionReference mockCollectionReference;
  MockDocumentReference mockDocumentReference;

  FirebaseAuthenticationFacade authenticationFacade;

  setUp(() {
    firebaseAuth = MockFirebaseAuth();
    googleSignIn = MockGoogleSignIn();
    firestore = MockFirestore();

    mockFirebaseUser = MockFirebaseUser(isAnonymous: true);
    mockUserCredential = MockUserCredential(isAnonymous: true);

    mockGoogleSignInAccount = MockGoogleSignInAccount();

    mockDocumentSnapshot = MockDocumentSnapshot();
    mockCollectionReference = MockCollectionReference();
    mockDocumentReference = MockDocumentReference();

    authenticationFacade =
        FirebaseAuthenticationFacade(firebaseAuth, googleSignIn, firestore);
  });

  group(
    'FirebaseAuthenticationFacade',
    () {
      // SECTION: getCurrentUserUID
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

      // SECTION: convertWithEmailAndPassword
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

          result.fold(
            (failure) => expect(failure, isA<ServerFailure>()),
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

          result.fold(
            (failure) => expect(failure, isA<ServerFailure>()),
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
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(mockFirebaseUser.linkWithCredential(any)).thenAnswer(
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

          result.fold(
            (failure) => expect(failure, isA<EmailAlreadyInUseFailure>()),
            (_) {},
          );
        },
      );

      // SECTION: isAnonymous
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

      // SECTION: isUsernameAvailable
      test(
        '''
        Given a valid and non-existent username
        When isUsernameAvailable() is called
        Then usernameAvailableSuccess() is returned
        ''',
        () async {
          when(firestore.collection(any)).thenReturn(mockCollectionReference);
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
        Given a valid and existent username
        When isUsernameAvailable() is called
        Then usernameAlreadyInUseFailure() is returned
        ''',
        () async {
          when(firestore.collection(any)).thenReturn(mockCollectionReference);
          when(mockCollectionReference.doc(any))
              .thenReturn(mockDocumentReference);
          when(mockDocumentReference.get())
              .thenAnswer((_) async => mockDocumentSnapshot);
          when(mockDocumentSnapshot.exists).thenReturn(true);

          final result = await authenticationFacade
              .isUsernameAvailable(Username(validUsername));

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<UsernameAlreadyInUseFailure>()),
            (_) {},
          );
        },
      );

      test(
        '''
        Given an invalid
        When isUsernameAvailable() is called
        Then serverFailure() is returned
        ''',
        () async {
          when(firestore.collection(any)).thenReturn(mockCollectionReference);
          when(mockCollectionReference.doc(any))
              .thenReturn(mockDocumentReference);
          when(mockDocumentReference.get())
              .thenAnswer((_) async => mockDocumentSnapshot);
          when(mockDocumentSnapshot.exists).thenReturn(true);

          final result = await authenticationFacade
              .isUsernameAvailable(Username(invalidUsername));

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<ServerFailure>()),
            (_) {},
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
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);

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
          when(firebaseAuth.currentUser).thenReturn(null);

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
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);

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
          when(firebaseAuth.currentUser).thenReturn(null);

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
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(mockFirebaseUser.sendEmailVerification()).thenAnswer(
            (_) => throw Exception('An unexpected error occured!'),
          );

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
          when(firebaseAuth.signInAnonymously())
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
          when(firebaseAuth.signInAnonymously()).thenAnswer(
            (_) => throw Exception('An unexpected error occured!'),
          );

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
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(
            firebaseAuth.signInWithEmailAndPassword(
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
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(
            firebaseAuth.signInWithEmailAndPassword(
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
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(
            firebaseAuth.signInWithEmailAndPassword(
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
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(
            firebaseAuth.signInWithEmailAndPassword(
              email: anyNamed('email'),
              password: anyNamed('password'),
            ),
          ).thenAnswer(
            (_) async => throw FirebaseException(
              plugin: 'auth',
              message: 'Wrong email/password combination',
              code: 'user-not-found',
            ),
          );

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
        Given an exception is thrown
        When signInWithEmailAndPassword() is called
        Then serverFailure() is returned
        ''',
        () async {
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(
            firebaseAuth.signInWithEmailAndPassword(
              email: anyNamed('email'),
              password: anyNamed('password'),
            ),
          ).thenAnswer(
            (_) async => throw Exception('An unexpected error occured!'),
          );

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
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(googleSignIn.signIn()).thenAnswer(
            (_) async => mockGoogleSignInAccount,
          );
          when(mockFirebaseUser.linkWithCredential(any))
              .thenAnswer((_) async => mockUserCredential);
          when(googleSignIn.currentUser).thenReturn(mockGoogleSignInAccount);

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

          verifyInOrder([
            firebaseAuth.currentUser,
            googleSignIn.signIn(),
            mockGoogleSignInAccount.authentication,
            mockFirebaseUser.linkWithCredential(any),
            googleSignIn.currentUser,
            mockFirebaseUser.updateProfile(
              displayName: anyNamed('displayName'),
              photoURL: anyNamed('photoURL'),
            ),
            mockFirebaseUser.reload(),
            firebaseAuth.currentUser,
          ]);
        },
      );

      test(
        '''
        Given user tries to log with Google and cancel
        When signInWithGoogle() is called
        Then cancelledByUserFailure() is returned
        ''',
        () async {
          when(firebaseAuth.currentUser).thenReturn(mockFirebaseUser);
          when(googleSignIn.signIn()).thenAnswer((_) => null);

          final result = await authenticationFacade.signInWithGoogle();

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<CancelledByUserFailure>()),
            (_) {},
          );
        },
      );

      // SECTION: signOut
    },
  );
}
