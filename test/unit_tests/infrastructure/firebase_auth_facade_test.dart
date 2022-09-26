import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/infrastructure/auth/firebase_auth_facade.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';

import '../../mocks/firebase_auth_mocks.dart';
import '../../mocks/google_sign_in_mocks.dart';
import '../utils/constants.dart';

void main() {
  late auth.FirebaseAuth _firebaseAuth;
  late GoogleSignIn _googleSignIn;

  late auth.User _firebaseUser;

  late IAuthFacade _authFacade;

  setUp(() {
    _firebaseAuth = MockFirebaseAuth();
    _googleSignIn = MockGoogleSignIn();

    _firebaseUser = MockUser();

    _authFacade = FirebaseAuthFacade(_firebaseAuth, _googleSignIn);

    registerFallbackValue(MockAuthCredential());
  });

  group('FirebaseAuthFacade -', () {
    group('authStateChanges -', () {
      test(
        'When user null Then return None',
        () async {
          when(_firebaseAuth.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([null]));

          _authFacade.authStateChanges.listen((option) {
            expect(option.isNone(), true);
            expect(option.toNullable(), null);
          });
        },
      );

      test(
        'When user anonymous Then return None',
        () async {
          when(_firebaseAuth.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([_firebaseUser]));

          _authFacade.authStateChanges.listen((option) {
            expect(option.isNone(), true);
            expect(option.toNullable(), null);
          });
        },
      );

      test(
        'When user authenticated Then return Some',
        () async {
          _firebaseUser = MockUser(isAnonymous: false);

          when(_firebaseAuth.authStateChanges)
              .thenAnswer((_) => Stream.fromIterable([_firebaseUser]));

          _authFacade.authStateChanges.listen((option) {
            expect(option.isSome(), true);
          });
        },
      );
    });

    group('convertWithEmailAndPassword -', () {
      setUp(() {
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);
        when(_firebaseUser.sendEmailVerification).thenAnswer((_) async {
          return;
        });
      });

      test('When credentials valid Then return Unit', () async {
        when(() => _firebaseUser.linkWithCredential(any()))
            .thenAnswer((_) async => MockUserCredential());

        final result = await _authFacade.convertWithEmailAndPassword(
          EmailAddress(testEmailAddress),
          Password(testPassword),
        );

        expect(result.isOk(), true);
        result.match(
          (ok) => expect(ok, unit),
          (_) {},
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

          expect(result.isErr(), true);
          result.match(
            (_) {},
            (err) => expect(err, isA<EmailAlreadyInUse>()),
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

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<ServerError>()),
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
        when(() => _firebaseAuth.currentUser).thenReturn(null);

        final result = await _authFacade.getLoggedInUser();

        expect(result.isNone(), true);
      });

      test('When user logged in Then return Some User', () async {
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);

        final result = await _authFacade.getLoggedInUser();

        expect(result.isSome(), true);
        result.match(
          (some) => expect(some, testUser),
          () {},
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

    group('logInWithCredentialAlreadyInUse', () {});

    group('logInAnonymously -', () {
      test('When user logged in Then return Unit', () async {
        when(_firebaseAuth.signInAnonymously)
            .thenAnswer((_) async => MockUserCredential());

        final result = await _authFacade.logInAnonymously();

        expect(result.isOk(), true);
        result.match(
          (ok) => expect(ok, isA<Unit>()),
          (_) {},
        );
      });

      test('When server error occurs Then return ServerError', () async {
        when(_firebaseAuth.signInAnonymously)
            .thenThrow(testRandomServerException);

        final result = await _authFacade.logInAnonymously();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<ServerError>()),
        );
      });

      test('When unexpected error occurs Then return Unexpected', () async {
        when(_firebaseAuth.signInAnonymously).thenThrow(testUnexpected);

        final result = await _authFacade.logInAnonymously();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<Unexpected>()),
        );
      });
    });

    group('logInWithEmailAndPassword -', () {
      setUp(() {
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);
        when(_firebaseUser.delete).thenAnswer((_) async {
          return;
        });
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
          when(_firebaseAuth.signInAnonymously)
              .thenAnswer((_) async => MockUserCredential());
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
        when(_firebaseAuth.signInAnonymously)
            .thenAnswer((_) async => MockUserCredential());
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

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<ServerError>()),
        );
      });

      test('When unexpected error occurs Then return Unexpected', () async {
        when(
          () => _firebaseAuth.signInWithEmailAndPassword(
            email: any(named: 'email'),
            password: any(named: 'password'),
          ),
        ).thenThrow(testUnexpected);

        final result = await _authFacade.logInWithEmailAndPassword(
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
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);
        when(
          () => _firebaseUser.updateDisplayName(any()),
        ).thenAnswer((_) async {
          return;
        });
        when(
          () => _firebaseUser.updatePhotoURL(any()),
        ).thenAnswer((_) async {
          return;
        });
        when(_firebaseUser.delete).thenAnswer((_) async {
          return;
        });
        when(_firebaseUser.reload).thenAnswer((_) async {
          return;
        });
      });

      test('When user logged in Then return Unit', () async {
        when(_googleSignIn.signIn)
            .thenAnswer((_) async => MockGoogleSignInAccount());
        when(() => _firebaseUser.linkWithCredential(any()))
            .thenAnswer((_) async => MockUserCredential());
        when(() => _googleSignIn.currentUser)
            .thenReturn(MockGoogleSignInAccount());

        final result = await _authFacade.logInWithGoogle();

        expect(result.isOk(), true);
        result.match(
          (ok) => expect(ok, unit),
          (_) {},
        );
      });

      test(
        'When credential already in use Then return CredentialAlreadyInUse',
        () async {
          when(_googleSignIn.signIn)
              .thenAnswer((_) async => MockGoogleSignInAccount());
          when(() => _firebaseUser.linkWithCredential(any()))
              .thenThrow(testCredentialInUse);
          when(() => _firebaseAuth.signInWithCredential(any()))
              .thenAnswer((_) async => MockUserCredential());
          when(() => _googleSignIn.currentUser)
              .thenReturn(MockGoogleSignInAccount());

          final result = await _authFacade.logInWithGoogle();

          expect(result.isErr(), true);
          result.match(
            (_) {},
            (err) => expect(err, isA<CredentialAlreadyInUse>()),
          );
        },
      );

      test('When cancelled by user Then return CancelledByUser', () async {
        when(_googleSignIn.signIn).thenAnswer((_) async {
          return;
        });

        final result = await _authFacade.logInWithGoogle();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<CancelledByUser>()),
        );
      });

      test('When server error occurs Then return ServerError', () async {
        when(_googleSignIn.signIn).thenThrow(testRandomServerException);

        final result = await _authFacade.logInWithGoogle();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<ServerError>()),
        );
      });

      test('When unexpected error occurs Then return Unexpected', () async {
        when(_googleSignIn.signIn).thenThrow(testUnexpected);

        final result = await _authFacade.logInWithGoogle();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<Unexpected>()),
        );
      });
    });

    group('logOut -', () {
      setUp(() {
        when(_firebaseAuth.signOut).thenAnswer((_) async {
          return;
        });
      });

      test('When user logged out Then return Unit', () async {
        when(_googleSignIn.signOut)
            .thenAnswer((_) async => MockGoogleSignInAccount());
        when(() => _firebaseAuth.currentUser).thenReturn(null);
        when(_firebaseAuth.signInAnonymously)
            .thenAnswer((_) async => MockUserCredential());

        final result = await _authFacade.logOut();

        expect(result.isOk(), true);
        result.match(
          (ok) => expect(ok, isA<Unit>()),
          (_) {},
        );
      });

      test('When user not logged out Then return UnableToSignOut', () async {
        when(_googleSignIn.signOut)
            .thenAnswer((_) async => MockGoogleSignInAccount());
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);

        final result = await _authFacade.logOut();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<UnableToSignOut>()),
        );
      });

      test('When unexpected error occurs Then return Unexpected', () async {
        when(_googleSignIn.signOut).thenThrow(testUnexpected);

        final result = await _authFacade.logOut();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<Unexpected>()),
        );
      });
    });

    group('resendVerificationEmail -', () {
      test('When verification email sent Then return Unit', () async {
        when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);
        when(_firebaseUser.sendEmailVerification).thenAnswer((_) async {
          return;
        });

        final result = await _authFacade.resendVerificationEmail();

        expect(result.isOk(), true);
        result.match(
          (ok) => expect(ok, isA<Unit>()),
          (_) {},
        );
      });

      test('When user null Then return Unexpected', () async {
        when(() => _firebaseAuth.currentUser).thenReturn(null);

        final result = await _authFacade.resendVerificationEmail();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<Unexpected>()),
        );
      });

      test(
        'When unexpected error occurs Then return Unexpected',
        () async {
          when(() => _firebaseAuth.currentUser).thenReturn(_firebaseUser);
          when(_firebaseUser.sendEmailVerification).thenThrow(testUnexpected);

          final result = await _authFacade.resendVerificationEmail();

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
