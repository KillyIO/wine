import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wine/domain/models/user.dart';

import '../../../mocks/firebase_auth_mocks.dart';
import '../../../mocks/firebase_firestore_mocks.dart';

void main() {
  final data = <String, dynamic>{};

  setUp(() {
    data['isBanned'] = false;
    data['isDeleted'] = false;
    data['banDeadline'] = null;
    data['createdAt'] = 1563133854;
    data['updatedAt'] = 1568534351;
    data['banReason'] = null;
    data['bio'] = null;
    data['deletionReason'] = null;
    data['email'] = 'email@email.com';
    data['name'] = 'name';
    data['profilePictureURL'] = null;
    data['uid'] = 'uid';
    data['username'] = 'username';
  });

  group(
    'User -',
    () {
      group(
        'fromFirebaseUser -',
        () {
          test('When auth.User null Then return null', () {
            final user = User.fromFirebaseUser(null);

            expect(user, null);
          });

          test('When auth.User not null Then return User', () {
            final mockFirebaseUser = MockFirebaseUser(isAnonymous: false);

            final user = User.fromFirebaseUser(mockFirebaseUser);

            expect(user, isA<User>());
            expect(user.email, mockFirebaseUser.email);
            expect(user.name, mockFirebaseUser.displayName);
            expect(user.profilePictureURL, mockFirebaseUser.photoURL);
            expect(user.uid, mockFirebaseUser.uid);
          });
        },
      );

      group(
        'fromFirestore -',
        () {
          test('When DocumentSnapshot null Then return null', () {
            final user = User.fromFirestore(null);

            expect(user, null);
          });

          test('When DocumentSnapshot.data null Then return null', () {
            final mockDocumentSnapshot = MockDocumentSnapshot();

            when(mockDocumentSnapshot.data()).thenReturn(null);

            final user = User.fromFirestore(mockDocumentSnapshot);

            expect(user, null);
          });

          test(
            '''When DocumentSnapshot And DocumentSnapshot.data not null Then return User''',
            () {
              final mockDocumentSnapshot = MockDocumentSnapshot();

              when(mockDocumentSnapshot.data()).thenReturn(data);

              final user = User.fromFirestore(mockDocumentSnapshot);

              expect(user.isBanned, data['isBanned']);
              expect(user.isDeleted, data['isDeleted']);
              expect(user.banDeadline, data['banDeadline']);
              expect(user.createdAt, data['createdAt']);
              expect(user.updatedAt, data['updatedAt']);
              expect(user.banReason, data['banReason']);
              expect(user.bio, data['bio']);
              expect(user.deletionReason, data['deletionReason']);
              expect(user.email, data['email']);
              expect(user.name, data['name']);
              expect(user.profilePictureURL, data['profilePictureURL']);
              expect(user.uid, data['uid']);
              expect(user.username, data['username']);
            },
          );
        },
      );

      group(
        'isComplete -',
        () {
          test(
            'When all required members null Then User is incomplete',
            () {
              final user = User();

              expect(user.isComplete, false);
            },
          );

          test('When one required member non-null Then User is incomplete', () {
            final user = User(uid: data['uid']);

            expect(user.isComplete, false);
          });

          test('When all required members non-null Then User is complete', () {
            final user = User(
              isBanned: data['isBanned'],
              isDeleted: data['isDeleted'],
              createdAt: data['createdAt'],
              updatedAt: data['updatedAt'],
              email: data['email'],
              name: data['name'],
              uid: data['uid'],
              username: data['username'],
            );

            expect(user.isComplete, true);
          });
        },
      );
    },
  );
}
