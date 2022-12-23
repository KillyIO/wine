import 'package:cloud_firestore/cloud_firestore.dart' hide Query;
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/infrastructure/default_covers/default_covers_repository.dart';
import 'package:wine/infrastructure/default_covers/isar_default_cover.dart';
import 'package:wine/utils/constants/paths/default_covers.dart';

import '../../mocks/isar_mocks.dart';
import '../utils/constants.dart';

void main() {
  late IDefaultCoversRepository defaultCoversRepository;

  late FirebaseFirestore firestore;

  late Isar isar;
  late IsarCollection<IsarDefaultCover> collection;
  late QueryBuilder<IsarDefaultCover, IsarDefaultCover, QWhere> where;
  late QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause>
      uidEqualTo;
  late Query<IsarDefaultCover> build;

  setUp(() {
    firestore = FakeFirebaseFirestore();
    isar = MockIsar();
    collection = MockIsarCollection<IsarDefaultCover>();
    where = MockQueryBuilder<IsarDefaultCover, IsarDefaultCover, QWhere>();
    uidEqualTo = MockQueryBuilder<IsarDefaultCover, IsarDefaultCover,
        QAfterWhereClause>();
    build = MockQuery<IsarDefaultCover>();

    registerFallbackValue(MockIsarDefaultCover());
    registerFallbackValue(MockIsarCollection<IsarDefaultCover>());
    registerFallbackValue(MockWhereClause());

    defaultCoversRepository = DefaultCoversRepository(firestore, isar);
  });

  group('cacheDefaultCovers -', () {
    test('When covers cached Then return Unit', () async {
      when(() => isar.writeTxn(any()))
          .thenAnswer((_) async => Result<Unit, DefaultCoversFailure>.ok(unit));

      final result =
          await defaultCoversRepository.cacheDefaultCovers([testDefaultCover]);

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test(
      'When at least one cover not cached The return DefaultCoversNotCached',
      () async {
        when(() => isar.writeTxn(any())).thenAnswer(
          (_) async => Result<Unit, DefaultCoversFailure>.err(
            const DefaultCoversFailure.defaultCoversNotCached(),
          ),
        );

        final result = await defaultCoversRepository
            .cacheDefaultCovers([testDefaultCover]);

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(
            err,
            const DefaultCoversFailure.defaultCoversNotCached(),
          ),
        );
      },
    );
  });

  group('fetchDefaultCoverByKey -', () {
    setUp(() {
      when(() => isar.defaultCovers).thenReturn(collection);
      when(collection.where).thenReturn(where);
      // when(
      //   // ignore: invalid_use_of_protected_member
      //   () => where.addWhereClauseInternal<QAfterWhereClause>(any()),
      // ).thenReturn(uidEqualTo);
      when(uidEqualTo.build).thenReturn(build);
    });

    test('When cover fetched Then return DefaultCover', () async {
      when(build.findFirst).thenAnswer((_) async => testIsarDefaultCover);

      final result =
          await defaultCoversRepository.fetchDefaultCoverByKey('key');

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, testDefaultCover),
        (_) {},
      );
    });

    test(
      'When cover not found Then return DefaultCoverNotFetched',
      () async {
        when(build.findFirst).thenAnswer((_) async => null);

        final result =
            await defaultCoversRepository.fetchDefaultCoverByKey('key');

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(
            err,
            const DefaultCoversFailure.defaultCoverNotFetched(),
          ),
        );
      },
    );
  });

  group('loadDefaultCovers -', () {
    test('When cover URLs loaded Then return DefaultCover list', () async {
      await firestore
          .collection(defaultCoversPath)
          .add(<String, dynamic>{'key': 'key', 'coverURL': testCoverURL});

      final result = await defaultCoversRepository.loadDefaultCovers();
      final expectedList = [testDefaultCover];

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, expectedList),
        (_) {},
      );
    });

    // TODO(SSebigo): uncomment these tests
    // TODO(SSebigo): once fake_cloud_firestore allows throwing exceptions
    // test('When docs empty Then return DefaultCoverURLsNotLoaded', () async {
    // when(() => _firestore.collection(any()))
    // .thenReturn(_collectionReference);
    //   when(_collectionReference.get).thenAnswer((_) async => _querySnapshot);
    //   when(() => _querySnapshot.docs)
    // .thenReturn(<MockQueryDocumentSnapshot>[]);

    //   final result = await _defaultCoversRepository.loadDefaultCoverURLs();

    //   expect(result.isErr(), true);
    //   result.match(
    //     (_) {},
    //     (failure) => expect(
    //       failure,
    //       const DefaultCoversFailure.defaultCoverURLsNotLoaded(),
    //     ),
    //   );
    // });

    // test('When server error occurs Then return ServerError', () async {
    //   when(() => _firestore.collection(any()))
    // .thenReturn(_collectionReference);
    //   when(_collectionReference.get).thenThrow(testRandomServerException);

    //   final result = await _defaultCoversRepository.loadDefaultCoverURLs();

    //   expect(result.isErr(), true);
    //   result.match(
    //     (_) {},
    //     (failure) => expect(
    //       failure,
    //       const DefaultCoversFailure.serverError(),
    //     ),
    //   );
    // });

    // test('When unexpected error occurs Then return Unexpected', () async {
    //   when(() => _firestore.collection(any())).thenThrow(testUnexpected);

    //   final result = await _defaultCoversRepository.loadDefaultCoverURLs();

    //   expect(result.isErr(), true);
    //   result.match(
    //     (_) {},
    //     (failure) => expect(
    //       failure,
    //       const DefaultCoversFailure.unexpected(),
    //     ),
    //   );
    // });
  });
}
