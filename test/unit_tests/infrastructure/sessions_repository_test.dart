import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/infrastructure/sessions/sessions_repository.dart';
import 'package:wine/infrastructure/user/user_dto.dart';

import '../../mocks/firebase_auth_mocks.dart';
import '../../mocks/hive_mocks.dart';
import '../utils/constants.dart';

void main() {
  ISessionsRepository _sessionsRepository;

  auth.FirebaseAuth _firebaseAuth;

  HiveInterface _hive;
  Box<Map<String, dynamic>> _box = MockBox<Map<String, dynamic>>();

  setUp(() {
    _firebaseAuth = MockFirebaseAuth();
    _hive = MockHiveInterface();

    _sessionsRepository = SessionsRepository(_firebaseAuth, _hive);

    when(() => _hive.openBox(any())).thenAnswer((_) async => _box);

    when(() => _firebaseAuth.currentUser).thenReturn(MockUser());
  });

  group('createSession -', () {
    setUp(() {
      when(() => _firebaseAuth.currentUser).thenReturn(MockUser());
    });

    test('When session created Then return Unit', () async {
      when(() => _box.get(any())).thenReturn(testUserAsMap);

      final result = await _sessionsRepository.createSession();

      result.fold(
        (_) {},
        (success) => expect(success, unit),
      );
    });

    test('When session not created Then return SessionNotCreated', () async {
      when(() => _box.get(any())).thenReturn(null);

      final result = await _sessionsRepository.createSession();

      result.fold(
        (failure) => expect(failure, isA<SessionNotCreated>()),
        (_) {},
      );
    });
  });

  group('deleteSession -', () {
    test('When session deleted Then return Unit', () async {
      when(() => _box.get(any())).thenReturn(null);

      final result = await _sessionsRepository.deleteSession();

      result.fold(
        (_) {},
        (success) => expect(success, unit),
      );
    });

    test('When session not deleted Then return SessionNotDeleted', () async {
      when(() => _box.get(any())).thenReturn(testUserAsMap);

      final result = await _sessionsRepository.deleteSession();

      result.fold(
        (failure) => expect(failure, isA<SessionNotDeleted>()),
        (_) {},
      );
    });
  });

  group('fetchSession -', () {
    test('When session fetched Then return User', () async {
      when(() => _box.get(any())).thenReturn(testUserAsMap);

      final result = await _sessionsRepository.fetchSession();

      result.fold(
        (_) {},
        (success) => expect(success, testUserAsMap.toDomain()),
      );
    });

    test('When session not fetched Then return SessionNotFound', () async {
      when(() => _box.get(any())).thenReturn(null);

      final result = await _sessionsRepository.deleteSession();

      result.fold(
        (failure) => expect(failure, isA<SessionNotFound>()),
        (_) {},
      );
    });
  });

  group('updateSession -', () {
    test('When session updated Then return Unit', () async {
      when(() => _box.get(any())).thenReturn(testUserAsMap);

      final result =
          await _sessionsRepository.updateSession(testUserAsMap.toDomain());

      result.fold(
        (_) {},
        (success) => expect(success, unit),
      );
    });

    test('When session not updated Then return SessionNotUpdated', () async {
      final updatedTestUserAsMap = testUserAsMap
        ..['emailAddress'] = 'yhaouas.hebbazth5@gmailvn.net';

      when(() => _box.get(any())).thenReturn(updatedTestUserAsMap);

      final result =
          await _sessionsRepository.updateSession(testUserAsMap.toDomain());

      result.fold(
        (failure) => expect(failure, isA<SessionNotUpdated>()),
        (_) {},
      );
    });
  });
}
