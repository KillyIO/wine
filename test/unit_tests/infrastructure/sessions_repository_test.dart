// ignore_for_file: invalid_use_of_protected_member

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/infrastructure/sessions/sessions_repository.dart';
import 'package:wine/features/user/isar_user.infrastructure.dart';

import '../../mocks/firebase_auth_mocks.dart';
import '../../mocks/isar_mocks.dart';
import '../utils/constants.dart';

void main() {
  late ISessionsRepository _sessionsRepository;

  late auth.FirebaseAuth _firebaseAuth;

  late Isar _isar;
  late IsarCollection<IsarUser> _collection;
  late QueryBuilder<IsarUser, IsarUser, QWhere> _where;
  late QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> _uidEqualTo;
  late Query<IsarUser> _build;

  setUp(() {
    _firebaseAuth = MockFirebaseAuth();
    _isar = MockIsar();
    _collection = MockIsarCollection<IsarUser>();
    _where = MockQueryBuilder<IsarUser, IsarUser, QWhere>();
    _uidEqualTo = MockQueryBuilder<IsarUser, IsarUser, QAfterWhereClause>();
    _build = MockQuery<IsarUser>();

    _sessionsRepository = SessionsRepository(_firebaseAuth, _isar);

    registerFallbackValue(MockIsarUser());
    registerFallbackValue(MockIsarCollection<IsarUser>());
    registerFallbackValue(MockWhereClause());

    when(() => _firebaseAuth.currentUser).thenReturn(MockUser());
  });

  group('deleteSession -', () {
    test('When session deleted Then return Unit', () async {
      when(() => _isar.writeTxn(any()))
          .thenAnswer((_) async => Result<Unit, SessionsFailure>.ok(unit));

      final result = await _sessionsRepository.deleteSession();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test('When session not deleted Then return SessionNotDeleted', () async {
      when(() => _isar.writeTxn(any())).thenAnswer(
        (_) async => Result<Unit, SessionsFailure>.err(
          const SessionsFailure.sessionNotDeleted(),
        ),
      );

      final result = await _sessionsRepository.deleteSession();

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SessionNotDeleted>()),
      );
    });
  });

  group('fetchSession -', () {
    setUp(() {
      when(() => _isar.users).thenReturn(_collection);
      when(_collection.where).thenReturn(_where);
      when(
        () => _where.addWhereClauseInternal<QAfterWhereClause>(any()),
      ).thenReturn(_uidEqualTo);
      when(_uidEqualTo.build).thenReturn(_build);
    });

    test('When session fetched Then return User', () async {
      when(_build.findFirst).thenAnswer((_) async => testIsarUser);

      final result = await _sessionsRepository.fetchSession();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, testIsarUser.toDomain()),
        (_) {},
      );
    });

    test('When session not fetched Then return SessionNotFound', () async {
      when(_build.findFirst).thenAnswer((_) async => null);

      final result = await _sessionsRepository.fetchSession();

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SessionNotFound>()),
      );
    });
  });

  group('insertSession -', () {
    setUp(() {
      when(() => _isar.users).thenReturn(_collection);
      when(_collection.where).thenReturn(_where);
      when(
        () => _where.addWhereClauseInternal<QAfterWhereClause>(any()),
      ).thenReturn(_uidEqualTo);
      when(_uidEqualTo.build).thenReturn(_build);
    });

    test('When session updated Then return Unit', () async {
      when(() => _isar.writeTxn(any())).thenAnswer((_) async => null);
      when(_build.findFirst).thenAnswer(
        (_) async => testIsarUser.copyWith(updatedAt: DateTime.now()),
      );

      final result =
          await _sessionsRepository.insertSession(testIsarUser.toDomain());

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test('When session not updated Then return SessionNotUpdated', () async {
      final updatedTestIsarUser = testIsarUser.copyWith(
        emailAddress: 'yhaouas.hebbazth5@gmailvn.net',
      );

      when(() => _isar.writeTxn(any())).thenAnswer((_) async => null);
      when(_build.findFirst).thenAnswer((_) async => updatedTestIsarUser);

      final result =
          await _sessionsRepository.insertSession(testIsarUser.toDomain());

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SessionNotInserted>()),
      );
    });
  });
}
