import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/infrastructure/auth/firebase_auth_facade.dart';

import '../../mocks/firebase_auth_mocks.dart';
import '../../mocks/google_sign_in_mocks.dart';
import '../utils/constants.dart';

void main() {
  late auth.FirebaseAuth firebaseAuth;
  late GoogleSignIn googleSignIn;

  late auth.User firebaseUser;

  late IAuthFacade authFacade;

  setUp(() {
    firebaseAuth = MockFirebaseAuth();
    googleSignIn = MockGoogleSignIn();

    firebaseUser = MockUser();

    authFacade = FirebaseAuthFacade(firebaseAuth, googleSignIn);

    registerFallbackValue(MockAuthCredential());
  });

  group('FirebaseAuthFacade -', () {
    group('authStateChanges -', () {
      test(
        'When user null Then return None',
        () async {
          when(firebaseAuth.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([null]));

          authFacade.authStateChanges.listen((option) {
            expect(option.isNone(), true);
            expect(option.toNullable(), null);
          });
        },
      );

      test(
        'When user anonymous Then return None',
        () async {
          when(firebaseAuth.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([firebaseUser]));

          authFacade.authStateChanges.listen((option) {
            expect(option.isNone(), true);
            expect(option.toNullable(), null);
          });
        },
      );

      test(
        'When user authenticated Then return Some',
        () async {
          firebaseUser = MockUser(isAnonymous: false);

          when(firebaseAuth.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([firebaseUser]));

          authFacade.authStateChanges.listen((option) {
            expect(option.isSome(), true);
          });
        },
      );
    });

    group('convertWithEmailAndPassword -', () {
      setUp(() {
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);
        when(firebaseUser.sendEmailVerification).thenAnswer((_) async {
          return;
        });
      });

      test('When credentials valid Then return Unit', () async {
        when(() => firebaseUser.linkWithCredential(any()))
            .thenAnswer((_) async => MockUserCredential());

        final result = await authFacade.convertWithEmailAndPassword(
          EmailAddress(testEmailAddress),
          Password(testPassword),
        );

        expect(result.isOk(), true);
        result.match(
          (ok) => expect(ok, unit),
          (_) {},
        );

        verify(firebaseUser.sendEmailVerification).called(1);
      });

      test(
        'When user already registered Then return EmailAlreadyInUse',
        () async {
          when(() => firebaseUser.linkWithCredential(any()))
              .thenThrow(testEmailAlreadyinUserException);

          final result = await authFacade.convertWithEmailAndPassword(
            EmailAddress(testEmailAddress),
            Password(testPassword),
          );

          expect(result.isErr(), true);
          result.match(
            (_) {},
            (err) => expect(err, isA<EmailAlreadyInUse>()),
          );
        },
      );

      test('When server error occurs Then return ServerError', () async {
        when(() => firebaseUser.linkWithCredential(any()))
            .thenThrow(testRandomServerException);

        final result = await authFacade.convertWithEmailAndPassword(
          EmailAddress(testEmailAddress),
          Password(testPassword),
        );

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<ServerError>()),
        );
      });

      test(
        'When unexpected error occurs Then return Unexpected',
        () async {
          when(() => firebaseUser.linkWithCredential(any()))
              .thenThrow(testUnexpected);

          final result = await authFacade.convertWithEmailAndPassword(
            EmailAddress(testEmailAddress),
            Password(testPassword),
          );

          expect(result.isErr(), true);
          result.match(
            (_) {},
            (errr) => expect(errr, isA<Unexpected>()),
          );
        },
      );
    });

    group('getLoggedInUser -', () {
      test('When user not logged in Then return None', () async {
        when(() => firebaseAuth.currentUser).thenReturn(null);

        final result = await authFacade.getLoggedInUser();

        expect(result.isNone(), true);
      });

      test('When user logged in Then return Some User', () async {
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);

        final result = await authFacade.getLoggedInUser();

        expect(result.isSome(), true);
        result.match(
          (some) => expect(some, testUser),
          () {},
        );
      });
    });

    group('isAnonymous -', () {
      test('When user not logged in Then return false', () {
        when(() => firebaseAuth.currentUser).thenReturn(null);

        expect(authFacade.isAnonymous, false);
      });

      test('When user logged anonymously Then return true', () {
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);

        expect(authFacade.isAnonymous, true);
      });

      test('When user authenticated Then return false', () {
        final authUser = MockUser(isAnonymous: false);

        when(() => firebaseAuth.currentUser).thenReturn(authUser);

        expect(authFacade.isAnonymous, false);
      });
    });

    group('isLoggedIn -', () {
      test('When user logged in Then return true', () {
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);

        expect(authFacade.isLoggedIn, true);
      });

      test('When user not logged in Then return false', () {
        when(() => firebaseAuth.currentUser).thenReturn(null);

        expect(authFacade.isLoggedIn, false);
      });
    });

    group('logInWithCredentialAlreadyInUse', () {});

    group('logInAnonymously -', () {
      test('When user logged in Then return Unit', () async {
        when(firebaseAuth.signInAnonymously)
            .thenAnswer((_) async => MockUserCredential());

        final result = await authFacade.logInAnonymously();

        expect(result.isOk(), true);
        result.match(
          (ok) => expect(ok, isA<Unit>()),
          (_) {},
        );
      });

      test('When server error occurs Then return ServerError', () async {
        when(firebaseAuth.signInAnonymously)
            .thenThrow(testRandomServerException);

        final result = await authFacade.logInAnonymously();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<ServerError>()),
        );
      });

      test('When unexpected error occurs Then return Unexpected', () async {
        when(firebaseAuth.signInAnonymously).thenThrow(testUnexpected);

        final result = await authFacade.logInAnonymously();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<Unexpected>()),
        );
      });
    });

    group('logInWithEmailAndPassword -', () {
      setUp(() {
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);
        when(firebaseUser.delete).thenAnswer((_) async {
          return;
        });
      });

      test(
        'When credentials valid and user registered Then return Unit',
        () async {
          when(
            () => firebaseAuth.signInWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
            ),
          ).thenAnswer((_) async => MockUserCredential());

          final result = await authFacade.logInWithEmailAndPassword(
            EmailAddress(testEmailAddress),
            Password(testPassword),
          );

          expect(result.isOk(), true);
          result.match(
            (ok) => expect(ok, unit),
            (_) {},
          );
        },
      );

      test(
        '''When wrong email/password combination Then return InvalidEmailAndPasswordCombination''',
        () async {
          when(firebaseAuth.signInAnonymously)
              .thenAnswer((_) async => MockUserCredential());
          when(
            () => firebaseAuth.signInWithEmailAndPassword(
              email: any(named: 'email'),
              password: any(named: 'password'),
            ),
          ).thenThrow(testInvalidEmailPasswordCombination);

          final result = await authFacade.logInWithEmailAndPassword(
            EmailAddress(testEmailAddress),
            Password(testPassword),
          );

          expect(result.isErr(), true);
          result.match(
            (_) {},
            (err) => expect(
              err,
              isA<InvalidEmailAndPasswordCombination>(),
            ),
          );
        },
      );

      test('When server error occurs Then return ServerError', () async {
        when(firebaseAuth.signInAnonymously)
            .thenAnswer((_) async => MockUserCredential());
        when(
          () => firebaseAuth.signInWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenThrow(testRandomServerException);

        final result = await authFacade.logInWithEmailAndPassword(
          EmailAddress(testEmailAddress),
          Password(testPassword),
        );

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<ServerError>()),
        );
      });

      test('When unexpected error occurs Then return Unexpected', () async {
        when(
          () => firebaseAuth.signInWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenThrow(testUnexpected);

        final result = await authFacade.logInWithEmailAndPassword(
          EmailAddress(testEmailAddress),
          Password(testPassword),
        );

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<Unexpected>()),
        );
      });
    });

    group('logInWithGoogle -', () {
      setUp(() {
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);
        when(
          () => firebaseUser.updateDisplayName(any()),
        ).thenAnswer((_) async {
          return;
        });
        when(
          () => firebaseUser.updatePhotoURL(any()),
        ).thenAnswer((_) async {
          return;
        });
        when(firebaseUser.delete).thenAnswer((_) async {
          return;
        });
        when(firebaseUser.reload).thenAnswer((_) async {
          return;
        });
      });

      test('When user logged in Then return Unit', () async {
        when(googleSignIn.signIn)
            .thenAnswer((_) async => MockGoogleSignInAccount());
        when(() => firebaseUser.linkWithCredential(any()))
            .thenAnswer((_) async => MockUserCredential());
        when(() => googleSignIn.currentUser)
            .thenReturn(MockGoogleSignInAccount());

        final result = await authFacade.logInWithGoogle();

        expect(result.isOk(), true);
        result.match(
          (ok) => expect(ok, unit),
          (_) {},
        );
      });

      test(
        'When credential already in use Then return CredentialAlreadyInUse',
        () async {
          when(googleSignIn.signIn)
              .thenAnswer((_) async => MockGoogleSignInAccount());
          when(() => firebaseUser.linkWithCredential(any()))
              .thenThrow(testCredentialInUse);
          when(() => firebaseAuth.signInWithCredential(any()))
              .thenAnswer((_) async => MockUserCredential());
          when(() => googleSignIn.currentUser)
              .thenReturn(MockGoogleSignInAccount());

          final result = await authFacade.logInWithGoogle();

          expect(result.isErr(), true);
          result.match(
            (_) {},
            (err) => expect(err, isA<CredentialAlreadyInUse>()),
          );
        },
      );

      test('When cancelled by user Then return CancelledByUser', () async {
        when(googleSignIn.signIn).thenAnswer((_) async {
          return;
        });

        final result = await authFacade.logInWithGoogle();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<CancelledByUser>()),
        );
      });

      test('When server error occurs Then return ServerError', () async {
        when(googleSignIn.signIn).thenThrow(testRandomServerException);

        final result = await authFacade.logInWithGoogle();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<ServerError>()),
        );
      });

      test('When unexpected error occurs Then return Unexpected', () async {
        when(googleSignIn.signIn).thenThrow(testUnexpected);

        final result = await authFacade.logInWithGoogle();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<Unexpected>()),
        );
      });
    });

    group('logOut -', () {
      setUp(() {
        when(firebaseAuth.signOut).thenAnswer((_) async {
          return;
        });
      });

      test('When user logged out Then return Unit', () async {
        when(googleSignIn.signOut)
            .thenAnswer((_) async => MockGoogleSignInAccount());
        when(() => firebaseAuth.currentUser).thenReturn(null);
        when(firebaseAuth.signInAnonymously)
            .thenAnswer((_) async => MockUserCredential());

        final result = await authFacade.logOut();

        expect(result.isOk(), true);
        result.match(
          (ok) => expect(ok, isA<Unit>()),
          (_) {},
        );
      });

      test('When user not logged out Then return UnableToSignOut', () async {
        when(googleSignIn.signOut)
            .thenAnswer((_) async => MockGoogleSignInAccount());
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);

        final result = await authFacade.logOut();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<UnableToSignOut>()),
        );
      });

      test('When unexpected error occurs Then return Unexpected', () async {
        when(googleSignIn.signOut).thenThrow(testUnexpected);

        final result = await authFacade.logOut();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<Unexpected>()),
        );
      });
    });

    group('resendVerificationEmail -', () {
      test('When verification email sent Then return Unit', () async {
        when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);
        when(firebaseUser.sendEmailVerification).thenAnswer((_) async {
          return;
        });

        final result = await authFacade.resendVerificationEmail();

        expect(result.isOk(), true);
        result.match(
          (ok) => expect(ok, isA<Unit>()),
          (_) {},
        );
      });

      test('When user null Then return Unexpected', () async {
        when(() => firebaseAuth.currentUser).thenReturn(null);

        final result = await authFacade.resendVerificationEmail();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<Unexpected>()),
        );
      });

      test(
        'When unexpected error occurs Then return Unexpected',
        () async {
          when(() => firebaseAuth.currentUser).thenReturn(firebaseUser);
          when(firebaseUser.sendEmailVerification).thenThrow(testUnexpected);

          final result = await authFacade.resendVerificationEmail();

          expect(result.isErr(), true);
          result.match(
            (_) {},
            (err) => expect(err, isA<Unexpected>()),
          );
        },
      );
    });
  });
}
