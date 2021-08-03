import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/infrastructure/sessions/sessions_repository.dart';
import 'package:wine/infrastructure/user/hive_user.dart';

import '../../mocks/firebase_auth_mocks.dart';
import '../../mocks/hive_mocks.dart';
import '../utils/constants.dart';

void main() {
  late ISessionsRepository _sessionsRepository;

  late auth.FirebaseAuth _firebaseAuth;

  late HiveInterface _hive;
  final Box<HiveUser> _box = MockBox<HiveUser>();

  setUp(() {
    _firebaseAuth = MockFirebaseAuth();
    _hive = MockHiveInterface();

    _sessionsRepository = SessionsRepository(_firebaseAuth, _hive);

    registerFallbackValue<HiveUser>(MockHiveUser());

    when(() => _hive.openBox<dynamic>(any())).thenAnswer((_) async => _box);

    when(() => _firebaseAuth.currentUser).thenReturn(MockUser());
  });

  group('createSession -', () {
    test('When session created Then return Unit', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(testHiveUser);
      when(() => _box.put(any<dynamic>(), any())).thenAnswer((_) async {
        return;
      });

      final result = await _sessionsRepository.createSession();

      expect(result.isOk, true);
      result.match(
        (ok) => expect(ok, const Unit()),
        (_) {},
      );
    });

    test('When session not created Then return SessionNotCreated', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(null);

      final result = await _sessionsRepository.createSession();

      expect(result.isErr, true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SessionNotCreated>()),
      );
    });
  });

  group('deleteSession -', () {
    setUp(() {
      when(() => _box.delete(any<dynamic>())).thenAnswer((_) async {
        return;
      });
    });

    test('When session deleted Then return Unit', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(null);

      final result = await _sessionsRepository.deleteSession();

      expect(result.isOk, true);
      result.match(
        (ok) => expect(ok, const Unit()),
        (_) {},
      );
    });

    test('When session not deleted Then return SessionNotDeleted', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(testHiveUser);

      final result = await _sessionsRepository.deleteSession();

      expect(result.isErr, true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SessionNotDeleted>()),
      );
    });
  });

  group('fetchSession -', () {
    test('When session fetched Then return User', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(testHiveUser);

      final result = await _sessionsRepository.fetchSession();

      expect(result.isOk, true);
      result.match(
        (ok) => expect(ok, testHiveUser.toDomain()),
        (_) {},
      );
    });

    test('When session not fetched Then return SessionNotFound', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(null);

      final result = await _sessionsRepository.fetchSession();

      expect(result.isErr, true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SessionNotFound>()),
      );
    });
  });

  group('updateSession -', () {
    test('When session updated Then return Unit', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(testHiveUser);

      final result =
          await _sessionsRepository.updateSession(testHiveUser.toDomain());

      expect(result.isOk, true);
      result.match(
        (ok) => expect(ok, const Unit()),
        (_) {},
      );
    });

    test('When session not updated Then return SessionNotUpdated', () async {
      final updatedTestHiveUser = testHiveUser.copyWith(
        emailAddress: 'yhaouas.hebbazth5@gmailvn.net',
      );

      when(() => _box.get(any<dynamic>())).thenReturn(updatedTestHiveUser);

      final result =
          await _sessionsRepository.updateSession(testHiveUser.toDomain());

      expect(result.isErr, true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SessionNotUpdated>()),
      );
    });
  });
}
