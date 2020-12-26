import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth_mocks/firebase_auth_mocks.dart';
import 'package:google_sign_in_mocks/google_sign_in_mocks.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wine/domain/authentication/authentication_success.dart';
import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/infrastructure/authentication/firebase_authentication_facade.dart';

class MockAuthenticationFacade extends Mock
    implements FirebaseAuthenticationFacade {
  /// @nodoc
  MockAuthenticationFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._firestore,
  );

  final MockFirebaseAuth _firebaseAuth;
  final MockGoogleSignIn _googleSignIn;
  final MockFirestoreInstance _firestore;
}

void main() {
  const validEmail = 'oncefilo1@gmail.com';
  const validPassword = 'Wd8G/[-2A+';

  const invalidEmail = 'oncefilo1@gmailcom';
  const invalidPassword = '123456';

  final user = User(
    bio: null,
    createdAt: 1592255973418,
    email: validEmail,
    name: 'oncefilo',
    profilePictureURL: null,
    uid: 'IhyAvFOnGegIFDBJYmL30nAbWu92',
    updatedAt: 1608137445032,
    username: 'oncefilo',
  );

  MockAuthenticationFacade authenticationFacade;

  setUp(() {
    final firebaseAuth = MockFirebaseAuth();
    final googleSignIn = MockGoogleSignIn();
    final firestore = MockFirestoreInstance();

    authenticationFacade =
        MockAuthenticationFacade(firebaseAuth, googleSignIn, firestore);
  });

  group(
    'FirebaseAuthenticationFacade',
    () {
      test(
        '''
        Given a user (anonymous or not)
        When getCurrentUserUID() is called
        Then an UID is returned
        ''',
        () async {
          when(
            authenticationFacade.getCurrentUserUID(),
          ).thenAnswer(
            (_) => Future.value(user.uid),
          );

          expect(await authenticationFacade.getCurrentUserUID(), user.uid);
        },
      );

      test(
        '''
        Given no user
        When getCurrentUserUID() is called
        Then null is returned
        ''',
        () async {
          when(
            authenticationFacade.getCurrentUserUID(),
          ).thenAnswer(
            (_) => Future.value(null),
          );

          expect(await authenticationFacade.getCurrentUserUID(), null);
        },
      );

      test(
        '''
        Given a valid email and a valid password
        When convertWithEmailAndPassword() is called
        Then userAuthenticatedSuccess() is returned with a User()
        ''',
        () async {
          when(
            authenticationFacade.convertWithEmailAndPassword(
              emailAddress: EmailAddress(validEmail),
              password: Password(validPassword),
            ),
          ).thenAnswer(
            (_) => Future.value(
              right(AuthenticationSuccess.userAuthenticatedSuccess(user)),
            ),
          );

          final result = await authenticationFacade.convertWithEmailAndPassword(
            emailAddress: EmailAddress(validEmail),
            password: Password(validPassword),
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
    },
  );
}
