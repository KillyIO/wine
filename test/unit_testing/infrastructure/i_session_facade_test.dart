import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/domain/session/i_session_facade.dart';
import 'package:wine/domain/session/session_failure.dart';
import 'package:wine/infrastructure/session/hive_session_facade.dart';

import '../../mocks/hive_mocks.dart';
import '../../utils/constants.dart';

void main() {
  User user;

  MockHiveInterface mockHiveInterface;
  MockSessionsBox mockSessionsBox;

  ISessionFacade sessionFacade;

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
      email: testEmailValid,
      name: testName,
      profilePictureURL: null,
      uid: testUserUID,
      username: testUsernameValid,
    );

    mockHiveInterface = MockHiveInterface();
    mockSessionsBox = MockSessionsBox();

    sessionFacade = HiveSessionFacade(mockSessionsBox);

    when(mockHiveInterface.openBox(any))
        .thenAnswer((_) async => mockSessionsBox);
  });

  tearDown(() async {
    await mockSessionsBox.close();
  });

  group(
    'ISessionFacade -',
    () {
      group(
        'createSession -',
        () {
          test(
            'When session created Then return unit',
            () async {
              when(mockSessionsBox.get(any)).thenReturn(user);

              final result = await sessionFacade.createSession(user);

              expect(result.isRight(), true);
              result.fold(
                (_) {},
                (success) => expect(success, isA<Unit>()),
              );
            },
          );

          test(
            'When session not created Then return SessionNotCreated',
            () async {
              when(mockSessionsBox.get(any)).thenReturn(null);

              final result = await sessionFacade.createSession(user);

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<SessionNotCreated>()),
                (_) {},
              );
            },
          );
        },
      );

      group(
        'deleteSession -',
        () {
          test(
            'When session deleted Then return Unit',
            () async {
              when(mockSessionsBox.get(any)).thenReturn(null);

              final result = await sessionFacade.deleteSession();

              expect(result.isRight(), true);
              result.fold(
                (_) {},
                (success) => expect(success, isA<Unit>()),
              );
            },
          );

          test(
            'When session not deleted Then return SessionNotDeleted',
            () async {
              when(mockSessionsBox.get(any)).thenReturn(user);

              final result = await sessionFacade.deleteSession();

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<SessionNotDeleted>()),
                (_) {},
              );
            },
          );
        },
      );

      group(
        'fetchSession -',
        () {
          test(
            'When session fetched Then return user',
            () async {
              when(mockSessionsBox.get(any)).thenReturn(user);

              final result = await sessionFacade.fetchSession();

              expect(result.isRight(), true);

              result.fold(
                (_) {},
                (success) => expect(success, user),
              );
            },
          );

          test(
            'When user not fetched Then return SessionNotFetched',
            () async {
              final answers = [null, user];
              when(mockSessionsBox.get(any))
                  .thenAnswer((_) => answers.removeAt(0));

              final result = await sessionFacade.fetchSession();

              result.fold(
                (failure) => expect(failure, isA<SessionNotFetched>()),
                (_) {},
              );
            },
          );
        },
      );

      group(
        'updateSession -',
        () {
          test(
            'When session updated Then return unit',
            () async {
              final newUser = user.copyWith(name: 'New Name');

              when(mockSessionsBox.get(any)).thenReturn(newUser);

              final result = await sessionFacade.updateSession(newUser);

              expect(result.isRight(), true);
              result.fold(
                (_) {},
                (success) => expect(success, isA<Unit>()),
              );
            },
          );

          test(
            'When session not updated Then return SessionNotUpdated',
            () async {
              final newUser = user.copyWith(name: 'New Name');

              when(mockSessionsBox.get(any)).thenReturn(user);

              final result = await sessionFacade.updateSession(newUser);

              expect(result.isLeft(), true);
              result.fold(
                (failure) => expect(failure, isA<SessionNotUpdated>()),
                (_) {},
              );
            },
          );
        },
      );
    },
  );
}
