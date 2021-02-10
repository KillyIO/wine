import 'package:flutter_test/flutter_test.dart';

import 'package:models/models.dart';

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
    'Session -',
    () {
      group(
        'isComplete -',
        () {
          test(
            'When all required members null Then Session is incomplete',
            () {
              final session = Session();

              expect(session.isComplete, false);
            },
          );

          test(
            'When one required member non-null Then Session is incomplete',
            () {
              final session = Session(uid: data['uid']);

              expect(session.isComplete, false);
            },
          );

          test(
            'When all required members non-null Then Session is complete',
            () {
              final session = Session(
                isBanned: data['isBanned'],
                isDeleted: data['isDeleted'],
                createdAt: data['createdAt'],
                updatedAt: data['updatedAt'],
                email: data['email'],
                name: data['name'],
                uid: data['uid'],
                username: data['username'],
              );

              expect(session.isComplete, true);
            },
          );
        },
      );
    },
  );
}
