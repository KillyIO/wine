import 'package:flutter_test/flutter_test.dart';

import 'package:models/models.dart';

void main() {
  Map<String, dynamic> data = <String, dynamic>{};

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
          test('When auth.User null Then User null', () {
            final user = User.fromFirebaseUser(null);

            expect(user, null);
          });
        },
      );

      group(
        'isEmpty -',
        () {
          test('When all User members null Then User is empty', () {
            final user = User();

            expect(user, isA<User>());
            expect(user.isEmpty, true);
          });

          test('When one User member non-null Then User is not empty', () {
            final user = User(uid: data['uid']);

            expect(user.isEmpty, false);
          });

          test('When all required User member non-null Then User is not empty',
              () {
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

            expect(user.isEmpty, false);
          });
        },
      );
    },
  );
}
