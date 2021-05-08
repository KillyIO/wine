import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/infrastructure/default_covers/default_covers_repository.dart';

import '../../mocks/cloud_firestore_mocks.dart';
import '../../mocks/hive_mocks.dart';
import '../utils/constants.dart';

void main() {
  late IDefaultCoversRepository _defaultCoversRepository;

  late FirebaseFirestore _firestore;

  late HiveInterface _hive;
  late Box<String> _box = MockBox<String>();

  setUp(() {
    _firestore = MockFirebaseFirestore();
    _hive = MockHiveInterface();

    _defaultCoversRepository = DefaultCoversRepository(_firestore, _hive);

    when(() => _hive.openBox(any())).thenAnswer((_) async => _box);
  });

  group('cacheDefaultCoverURLs -', () {
    setUp(() {
      when(() => _box.put(any(), any())).thenAnswer((_) async => null);
    });

    test('When covers cached Then return Unit', () async {
      when(() => _box.get(any())).thenReturn('coverURL');

      final result = await _defaultCoversRepository
          .cacheDefaultCoverURLs(testDefaultCovers);

      expect(result.isOk, true);
      result.match(
        (ok) => expect(ok, const Unit()),
        (_) {},
      );

      verify(() => _box.put(any(), any())).called(2);

      verify(() => _box.get(any())).called(2);
    });

    test(
      'When at least one cover not cached The return DefaultCoverURLsNotCached',
      () async {
        when(() => _box.get(any())).thenReturn(null);

        final result = await _defaultCoversRepository
            .cacheDefaultCoverURLs(testDefaultCovers);

        expect(result.isErr, true);
        result.match(
          (_) {},
          (err) => expect(
            err,
            const DefaultCoversFailure.defaultCoverURLsNotCached(),
          ),
        );
      },
    );
  });

  group('fetchDefaultCoverURLByKey -', () {
    test('When cover fetched Then return cover URL', () async {
      when(() => _box.get(any())).thenReturn('coverURL');

      final result =
          await _defaultCoversRepository.fetchDefaultCoverURLByKey('string');

      expect(result.isOk, true);
      result.match(
        (ok) => expect(ok, 'coverURL'),
        (_) {},
      );
    });

    test(
      'When cover not found Then return DefaultCoverURLsNotFetched',
      () async {
        when(() => _box.get(any())).thenReturn(null);

        final result =
            await _defaultCoversRepository.fetchDefaultCoverURLByKey('string');

        expect(result.isErr, true);
        result.match(
          (_) {},
          (err) => expect(
            err,
            const DefaultCoversFailure.defaultCoverURLsNotFetched(),
          ),
        );
      },
    );
  });

  group('loadDefaultCoverURLs -', () {
    late CollectionReference<Map<String, dynamic>> _collectionReference;
    late QuerySnapshot<Map<String, dynamic>> _querySnapshot;
    late QueryDocumentSnapshot<Map<String, dynamic>> _queryDocumentSnapshot;

    setUp(() {
      _collectionReference = MockCollectionReference();
      _querySnapshot = MockQuerySnapshot();
      _queryDocumentSnapshot = MockQueryDocumentSnapshot();
    });

    test('When cover URLs loaded Then return Map', () async {
      when(() => _firestore.collection(any())).thenReturn(_collectionReference);
      when(_collectionReference.get).thenAnswer((_) async => _querySnapshot);
      when(() => _querySnapshot.docs).thenReturn(
        List<QueryDocumentSnapshot<Map<String, dynamic>>>.generate(
          1,
          (int idx) => _queryDocumentSnapshot,
        ),
      );
      when(_queryDocumentSnapshot.data).thenReturn(testDefaultCovers);

      final result = await _defaultCoversRepository.loadDefaultCoverURLs();
      final expectedMap = {'key': 'coverURL'};

      expect(result.isOk, true);
      result.match(
        (ok) => expect(ok, expectedMap),
        (_) {},
      );
    });

    test('When docs empty Then return DefaultCoverURLsNotLoaded', () async {
      when(() => _firestore.collection(any())).thenReturn(_collectionReference);
      when(_collectionReference.get).thenAnswer((_) async => _querySnapshot);
      when(() => _querySnapshot.docs)
          .thenReturn(<MockQueryDocumentSnapshot<Map<String, dynamic>>>[]);

      final result = await _defaultCoversRepository.loadDefaultCoverURLs();

      expect(result.isErr, true);
      result.match(
        (_) {},
        (failure) => expect(
          failure,
          const DefaultCoversFailure.defaultCoverURLsNotLoaded(),
        ),
      );
    });

    test('When server error occurs Then return ServerError', () async {
      when(() => _firestore.collection(any())).thenReturn(_collectionReference);
      when(_collectionReference.get).thenThrow(testRandomServerException);

      final result = await _defaultCoversRepository.loadDefaultCoverURLs();

      expect(result.isErr, true);
      result.match(
        (_) {},
        (failure) => expect(
          failure,
          const DefaultCoversFailure.serverError(),
        ),
      );
    });

    test('When unexpected error occurs Then return Unexpected', () async {
      when(() => _firestore.collection(any())).thenThrow(testUnexpected);

      final result = await _defaultCoversRepository.loadDefaultCoverURLs();

      expect(result.isErr, true);
      result.match(
        (_) {},
        (failure) => expect(
          failure,
          const DefaultCoversFailure.unexpected(),
        ),
      );
    });
  });
}
