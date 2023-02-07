// ignore_for_file: invalid_use_of_protected_member

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/infrastructure/sessions/sessions_repository.dart';
import 'package:wine/infrastructure/user/isar_user.dart';

import '../../mocks/firebase_auth_mocks.dart';
import '../../mocks/isar_mocks.dart';
import '../utils/constants.dart';

void main() {
  late ISessionsRepository sessionsRepository;

  late auth.FirebaseAuth firebaseAuth;

  late Isar isar;
  late IsarCollection<IsarUser> collection;
  late QueryBuilder<IsarUser, IsarUser, QWhere> where;
  late QueryBuilder<IsarUser, IsarUser, QAfterWhereClause> uidEqualTo;
  late Query<IsarUser> build;

  setUp(() {
    firebaseAuth = MockFirebaseAuth();
    isar = MockIsar();
    collection = MockIsarCollection<IsarUser>();
    where = MockQueryBuilder<IsarUser, IsarUser, QWhere>();
    uidEqualTo = MockQueryBuilder<IsarUser, IsarUser, QAfterWhereClause>();
    build = MockQuery<IsarUser>();

    sessionsRepository = SessionsRepository(firebaseAuth, isar);

    registerFallbackValue(MockIsarUser());
    registerFallbackValue(MockIsarCollection<IsarUser>());
    registerFallbackValue(MockWhereClause());

    when(() => firebaseAuth.currentUser).thenReturn(MockUser());
  });

  group('deleteSession -', () {
    test('When session deleted Then return Unit', () async {
      when(() => isar.writeTxn(any()))
          .thenAnswer((_) async => const Result<Unit, SessionsFailure>.ok(unit));

      final result = await sessionsRepository.deleteSession();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test('When session not deleted Then return SessionNotDeleted', () async {
      when(() => isar.writeTxn(any())).thenAnswer(
        (_) async => const Result<Unit, SessionsFailure>.err(
          SessionsFailure.sessionNotDeleted(),
        ),
      );

      final result = await sessionsRepository.deleteSession();

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SessionNotDeleted>()),
      );
    });
  });

  group('fetchSession -', () {
    setUp(() {
      when(() => isar.users).thenReturn(collection);
      when(collection.where).thenReturn(where);
      // when(
      //   () => where.addWhereClauseInternal<QAfterWhereClause>(any()),
      // ).thenReturn(uidEqualTo);
      when(uidEqualTo.build).thenReturn(build);
    });

    test('When session fetched Then return User', () async {
      when(build.findFirst).thenAnswer((_) async => testIsarUser);

      final result = await sessionsRepository.fetchSession();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, testIsarUser.toDomain()),
        (_) {},
      );
    });

    test('When session not fetched Then return SessionNotFound', () async {
      when(build.findFirst).thenAnswer((_) async => null);

      final result = await sessionsRepository.fetchSession();

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SessionNotFound>()),
      );
    });
  });

  group('insertSession -', () {
    setUp(() {
      when(() => isar.users).thenReturn(collection);
      when(collection.where).thenReturn(where);
      // when(
      //   () => where.addWhereClauseInternal<QAfterWhereClause>(any()),
      // ).thenReturn(uidEqualTo);
      when(uidEqualTo.build).thenReturn(build);
    });

    test('When session updated Then return Unit', () async {
      when(() => isar.writeTxn(any())).thenAnswer((_) async => null);
      when(build.findFirst).thenAnswer(
        (_) async => testIsarUser.copyWith(updatedAt: DateTime.now()),
      );

      final result =
          await sessionsRepository.insertSession(testIsarUser.toDomain());

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

      when(() => isar.writeTxn(any())).thenAnswer((_) async => null);
      when(build.findFirst).thenAnswer((_) async => updatedTestIsarUser);

      final result =
          await sessionsRepository.insertSession(testIsarUser.toDomain());

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SessionNotInserted>()),
      );
    });
  });
}
