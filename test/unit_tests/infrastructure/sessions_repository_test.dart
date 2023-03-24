import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/infrastructure/sessions/sessions_repository.dart';
import 'package:wine/infrastructure/user/isar_user.dart';

import '../utils/constants.dart';
import 'sessions_repository_test.mocks.dart';

@GenerateMocks([auth.User])
@GenerateNiceMocks([
  MockSpec<auth.FirebaseAuth>(),
])
void main() {
  late ISessionsRepository sessionsRepository;
  late auth.FirebaseAuth firebaseAuth;
  late Isar isar;

  setUpAll(() async {
    await Isar.initializeIsarCore(download: true);
  });

  setUp(() async {
    firebaseAuth = MockFirebaseAuth();

    sessionsRepository = SessionsRepository(firebaseAuth, isar);
  });

  group('deleteSession -', () {
    setUpAll(() async {
      isar = await Isar.open([IsarUserSchema]);

      await isar.writeTxn(() async {
        await isar.users.clear();
      });
    });

    tearDownAll(() async {
      await isar.close();
    });

    test('returns Ok when session is deleted', () async {
      // arrange
      final firebaseUser = MockUser();

      when(firebaseUser.uid).thenReturn(testUserUid);
      when(firebaseAuth.currentUser).thenReturn(firebaseUser);

      await isar.writeTxn(() async {
        await isar.users.put(testIsarUser);
      });

      // act
      final result = await sessionsRepository.deleteSession();

      // assert
      expect(result, equals(const Ok<Unit, SessionsFailure>(unit)));
    });

    test('returns Err when session is not deleted', () async {
      // arrange
      final firebaseUser = MockUser();

      when(firebaseUser.uid).thenReturn(testUserUid);
      when(firebaseAuth.currentUser).thenReturn(firebaseUser);

      // act
      final result = await sessionsRepository.deleteSession();

      // assert
      expect(
        result,
        equals(
          const Err<Unit, SessionsFailure>(
            SessionsFailure.sessionNotDeleted(),
          ),
        ),
      );
    });

    test('returns Err when firebaseUser is null', () async {
      // arrange
      when(firebaseAuth.currentUser).thenReturn(null);

      // act
      final result = await sessionsRepository.deleteSession();

      // assert
      expect(
        result,
        equals(
          const Err<Unit, SessionsFailure>(
            SessionsFailure.sessionNotDeleted(),
          ),
        ),
      );
    });
  });

  group('fetchSession -', () {
    setUpAll(() async {
      isar = await Isar.open([IsarUserSchema]);

      await isar.writeTxn(() async {
        await isar.users.clear();
      });
    });

    tearDownAll(() async {
      await isar.close();
    });

    test('returns Ok when session is found', () async {
      // arrange
      await isar.writeTxn(() async {
        await isar.users.put(testIsarUser);
      });

      final firebaseUser = MockUser();

      when(firebaseUser.uid).thenReturn(testUserUid);
      when(firebaseAuth.currentUser).thenReturn(firebaseUser);

      // act
      final result = await sessionsRepository.fetchSession();

      // assert
      expect(result, equals(Ok<User, SessionsFailure>(testUser)));
    });

    test('returns Err when session is not found', () async {
      // arrange
      await isar.writeTxn(() async {
        await isar.users.clear();
      });

      final firebaseUser = MockUser();

      when(firebaseUser.uid).thenReturn(testUserUid);
      when(firebaseAuth.currentUser).thenReturn(firebaseUser);

      // act
      final result = await sessionsRepository.fetchSession();

      // assert
      expect(
        result,
        equals(
          const Err<User, SessionsFailure>(
            SessionsFailure.sessionNotFound(),
          ),
        ),
      );
    });

    test('Err when firebaseUser is null', () async {
      // arrange
      await isar.writeTxn(() async {
        await isar.users.clear();
      });

      when(firebaseAuth.currentUser).thenReturn(null);

      // act
      final result = await sessionsRepository.fetchSession();

      // assert
      expect(
        result,
        equals(
          const Err<User, SessionsFailure>(
            SessionsFailure.sessionNotFound(),
          ),
        ),
      );
    });
  });

  group('insertSession -', () {
    setUpAll(() async {
      isar = await Isar.open([IsarUserSchema]);

      await isar.writeTxn(() async {
        await isar.users.clear();
      });
    });

    tearDownAll(() async {
      await isar.close();
    });

    test('inserts a new session when user is anonymous', () async {
      // arrange
      final firebaseUser = MockUser();

      when(firebaseUser.uid).thenReturn(testUserUid);
      when(firebaseUser.isAnonymous).thenReturn(true);
      when(firebaseAuth.currentUser).thenReturn(firebaseUser);

      // act
      final result = await sessionsRepository.insertSession(testUser);

      // assert
      expect(result, equals(const Ok<Unit, SessionsFailure>(unit)));
    });

    test('updates an existing session when user is authenticated', () async {
      // arrange
      final firebaseUser = MockUser();

      when(firebaseUser.uid).thenReturn(testUserUid);
      when(firebaseUser.isAnonymous).thenReturn(false);
      when(firebaseAuth.currentUser).thenReturn(firebaseUser);

      // act
      final result = await sessionsRepository.insertSession(testUser);

      // assert
      expect(result, equals(const Ok<Unit, SessionsFailure>(unit)));
    });

    test('returns an error when firebaseUser is null', () async {
      // arrange
      when(firebaseAuth.currentUser).thenReturn(null);

      // act
      final result = await sessionsRepository.insertSession(testUser);

      // assert
      expect(
        result,
        equals(
          const Err<Unit, SessionsFailure>(
            SessionsFailure.sessionNotInserted(),
          ),
        ),
      );
    });
  });
}
