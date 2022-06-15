import 'package:cloud_firestore/cloud_firestore.dart' hide Query;
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/features/default_covers/default_covers_failure.domain.dart';
import 'package:wine/features/default_covers/default_covers_repository.infrastructure.dart';
import 'package:wine/features/default_covers/i_default_covers_repository.domain.dart';
import 'package:wine/features/default_covers/isar_default_cover.infrastructure.dart';
import 'package:wine/utils/paths/default_covers.dart';

import '../../mocks/isar_mocks.dart';
import '../utils/constants.dart';

void main() {
  late IDefaultCoversRepository _defaultCoversRepository;

  late FirebaseFirestore _firestore;

  late Isar _isar;
  late IsarCollection<IsarDefaultCover> _collection;
  late QueryBuilder<IsarDefaultCover, IsarDefaultCover, QWhere> _where;
  late QueryBuilder<IsarDefaultCover, IsarDefaultCover, QAfterWhereClause>
      _uidEqualTo;
  late Query<IsarDefaultCover> _build;

  setUp(() {
    _firestore = FakeFirebaseFirestore();
    _isar = MockIsar();
    _collection = MockIsarCollection<IsarDefaultCover>();
    _where = MockQueryBuilder<IsarDefaultCover, IsarDefaultCover, QWhere>();
    _uidEqualTo = MockQueryBuilder<IsarDefaultCover, IsarDefaultCover,
        QAfterWhereClause>();
    _build = MockQuery<IsarDefaultCover>();

    registerFallbackValue(MockIsarDefaultCover());
    registerFallbackValue(MockIsarCollection<IsarDefaultCover>());
    registerFallbackValue(MockWhereClause());

    _defaultCoversRepository = DefaultCoversRepository(_firestore, _isar);
  });

  group('cacheDefaultCovers -', () {
    test('When covers cached Then return Unit', () async {
      when(() => _isar.writeTxn(any()))
          .thenAnswer((_) async => Result<Unit, DefaultCoversFailure>.ok(unit));

      final result =
          await _defaultCoversRepository.cacheDefaultCovers([testDefaultCover]);

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test(
      'When at least one cover not cached The return DefaultCoversNotCached',
      () async {
        when(() => _isar.writeTxn(any())).thenAnswer(
          (_) async => Result<Unit, DefaultCoversFailure>.err(
            const DefaultCoversFailure.defaultCoversNotCached(),
          ),
        );

        final result = await _defaultCoversRepository
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
      when(() => _isar.defaultCovers).thenReturn(_collection);
      when(_collection.where).thenReturn(_where);
      when(
        // ignore: invalid_use_of_protected_member
        () => _where.addWhereClauseInternal<QAfterWhereClause>(any()),
      ).thenReturn(_uidEqualTo);
      when(_uidEqualTo.build).thenReturn(_build);
    });

    test('When cover fetched Then return DefaultCover', () async {
      when(_build.findFirst).thenAnswer((_) async => testIsarDefaultCover);

      final result =
          await _defaultCoversRepository.fetchDefaultCoverByKey('key');

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, testDefaultCover),
        (_) {},
      );
    });

    test(
      'When cover not found Then return DefaultCoverNotFetched',
      () async {
        when(_build.findFirst).thenAnswer((_) async => null);

        final result =
            await _defaultCoversRepository.fetchDefaultCoverByKey('key');

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
      await _firestore
          .collection(defaultCoversPath)
          .add(<String, dynamic>{'key': 'key', 'coverURL': testCoverURL});

      final result = await _defaultCoversRepository.loadDefaultCovers();
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
