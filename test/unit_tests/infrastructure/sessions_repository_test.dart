import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/infrastructure/sessions/sessions_repository.dart';
import 'package:wine/infrastructure/user/isar_user.dart';

import '../utils/constants.dart';
import 'sessions_repository_test.mocks.dart';

@GenerateMocks(
  [auth.FirebaseAuth, auth.User, IsarCollection, QueryBuilder],
  customMocks: [
    MockSpec<Isar>(
      unsupportedMembers: {Symbol('txnSync'), Symbol('writeTxnSync')},
    ),
    MockSpec<Query<IsarUser>>(
      unsupportedMembers: {Symbol('exportJsonRawSync')},
    ),
  ],
)
void main() {
  late ISessionsRepository sessionsRepository;

  late auth.FirebaseAuth firebaseAuth;

  late Isar isar;
  late IsarCollection<IsarUser> collection;
  late QueryBuilder<IsarUser, IsarUser, QAfterWhereClause>
      queryBuilderWhereClause;
  late QueryBuilder<IsarUser, IsarUser, QWhere> queryBuilderWhere;
  late Query<IsarUser> query;

  setUp(() {
    firebaseAuth = MockFirebaseAuth();
    isar = MockIsar();
    sessionsRepository = SessionsRepository(firebaseAuth, isar);
    collection = MockIsarCollection<IsarUser>();
    queryBuilderWhereClause =
        MockQueryBuilder<IsarUser, IsarUser, QAfterWhereClause>();
    queryBuilderWhere = MockQueryBuilder<IsarUser, IsarUser, QWhere>();
    query = MockQuery();
  });

  group('deleteSession -', () {
    test('When session deleted Then return Unit', () async {
      final firebaseUser = MockUser();

      when(firebaseAuth.currentUser).thenReturn(firebaseUser);
      when(collection.where()).thenReturn(queryBuilderWhere);
      when(queryBuilderWhere.uidEqualTo(testUserUid))
          .thenReturn(queryBuilderWhereClause);
      when(queryBuilderWhereClause.build()).thenReturn(query);
      when(query.deleteFirst()).thenAnswer((_) async => true);

      final result = await sessionsRepository.deleteSession();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test('When session not deleted Then return SessionNotDeleted', () async {
      // when(() => isar.writeTxn(any())).thenAnswer(
      //   (_) async => const Result<Unit, SessionsFailure>.err(
      //     SessionsFailure.sessionNotDeleted(),
      //   ),
      // );

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
      // when(() => isar.users).thenReturn(collection);
      // when(collection.where).thenReturn(where);
      // when(
      //   () => where.addWhereClauseInternal<QAfterWhereClause>(any()),
      // ).thenReturn(uidEqualTo);
      // when(uidEqualTo.build).thenReturn(build);
    });

    test('When session fetched Then return User', () async {
      // when(query.findFirst).thenAnswer((_) async => testIsarUser);

      // final result = await sessionsRepository.fetchSession();

      // expect(result.isOk(), true);
      // result.match(
      //   (ok) => expect(ok, testIsarUser.toDomain()),
      //   (_) {},
      // );
    });

    test('When session not fetched Then return SessionNotFound', () async {
      // when(query.findFirst).thenAnswer((_) async => null);

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
      // when(() => isar.users).thenReturn(collection);
      // when(collection.where).thenReturn(queryBuilderWhere);
      // when(
      //   () => where.addWhereClauseInternal<QAfterWhereClause>(any()),
      // ).thenReturn(uidEqualTo);
      // when(queryBuilderWhereClause.build).thenReturn(query);
    });

    test('When session updated Then return Unit', () async {
      // when(() => isar.writeTxn(any())).thenAnswer((_) async => null);
      // when(query.findFirst).thenAnswer(
      //   (_) async => testIsarUser.copyWith(updatedAt: DateTime.now()),
      // );

      // final result =
      //     await sessionsRepository.insertSession(testIsarUser.toDomain());

      // expect(result.isOk(), true);
      // result.match(
      //   (ok) => expect(ok, unit),
      //   (_) {},
      // );
    });

    test('When session not updated Then return SessionNotUpdated', () async {
      // final updatedTestIsarUser = testIsarUser.copyWith(
      //   emailAddress: 'yhaouas.hebbazth5@gmailvn.net',
      // );

      // when(() => isar.writeTxn(any())).thenAnswer((_) async => null);
      // when(query.findFirst).thenAnswer((_) async => updatedTestIsarUser);

      // final result =
      //     await sessionsRepository.insertSession(testIsarUser.toDomain());

      // expect(result.isErr(), true);
      // result.match(
      //   (_) {},
      //   (err) => expect(err, isA<SessionNotInserted>()),
      // );
    });
  });
}
