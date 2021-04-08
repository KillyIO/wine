import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/infrastructure/default_covers/default_covers_repository.dart';

import '../../mocks/cloud_firestore_mocks.dart';
import '../../mocks/hive_mocks.dart';
import '../utils/constants.dart';

void main() {
  IDefaultCoversRepository _defaultCoversRepository;

  FirebaseFirestore _firestore;

  HiveInterface _hive;
  Box<String> _box = MockBox<String>();

  setUp(() {
    _firestore = MockFirebaseFirestore();
    _hive = MockHiveInterface();

    _defaultCoversRepository = DefaultCoversRepository(_firestore, _hive);

    when(() => _hive.openBox(any())).thenAnswer((_) async => _box);
  });

  group('cacheDefaultCoverURLs -', () {
    test('When covers cached Then return Unit', () async {
      when(() => _box.get(any())).thenReturn('coverURL');

      final result = await _defaultCoversRepository
          .cacheDefaultCoverURLs(testDefaultCovers);

      expect(result.isRight(), true);
      result.fold(
        (_) {},
        (success) => expect(success, unit),
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

        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(
            failure,
            const DefaultCoversFailure.defaultCoverURLsNotCached(),
          ),
          (_) {},
        );
      },
    );
  });

  group('fetchDefaultCoverURLByKey -', () {
    test('When cover fetched Then return cover URL', () async {
      when(() => _box.get(any())).thenReturn('coverURL');

      final result =
          await _defaultCoversRepository.fetchDefaultCoverURLByKey('string');

      expect(result.isRight(), true);
      result.fold(
        (_) {},
        (success) => expect(success, 'coverURL'),
      );
    });

    test(
      'When cover not found Then return DefaultCoverURLsNotFetched',
      () async {
        when(() => _box.get(any())).thenReturn(null);

        final result =
            await _defaultCoversRepository.fetchDefaultCoverURLByKey('string');

        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(
            failure,
            const DefaultCoversFailure.defaultCoverURLsNotFetched(),
          ),
          (_) {},
        );
      },
    );
  });

  group('loadDefaultCoverURLs -', () {
    MockCollectionReference _collectionReference;
    MockQuerySnapshot _querySnapshot;
    MockQueryDocumentSnapshot _queryDocumentSnapshot;

    setUp(() {
      _collectionReference = MockCollectionReference();
      _querySnapshot = MockQuerySnapshot();
      _queryDocumentSnapshot = MockQueryDocumentSnapshot();
    });

    test('When cover URLs loaded Then return Map', () async {
      when(() => _firestore.collection(any())).thenReturn(_collectionReference);
      when(_collectionReference.get).thenAnswer((_) async => _querySnapshot);
      when(() => _querySnapshot.docs).thenReturn(
        List<MockQueryDocumentSnapshot>.generate(
          1,
          (int idx) => _queryDocumentSnapshot,
        ),
      );
      when(_queryDocumentSnapshot.data).thenReturn(testDefaultCovers);

      final result = await _defaultCoversRepository.loadDefaultCoverURLs();
      final expectedMap = {'key': 'coverURL'};

      expect(result.isRight(), true);
      result.fold(
        (_) {},
        (success) => expect(success, expectedMap),
      );
    });

    test('When docs empty Then return DefaultCoverURLsNotLoaded', () async {
      when(() => _firestore.collection(any())).thenReturn(_collectionReference);
      when(_collectionReference.get).thenAnswer((_) async => _querySnapshot);
      when(() => _querySnapshot.docs).thenReturn(<MockQueryDocumentSnapshot>[]);

      final result = await _defaultCoversRepository.loadDefaultCoverURLs();

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(
          failure,
          const DefaultCoversFailure.defaultCoverURLsNotLoaded(),
        ),
        (_) {},
      );
    });

    test('When server error occurs Then return ServerError', () async {
      when(() => _firestore.collection(any())).thenReturn(_collectionReference);
      when(_collectionReference.get).thenThrow(testRandomServerException);

      final result = await _defaultCoversRepository.loadDefaultCoverURLs();

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(
          failure,
          const DefaultCoversFailure.serverError(),
        ),
        (_) {},
      );
    });

    test('When unexpected error occurs Then return Unexpected', () async {
      when(() => _firestore.collection(any())).thenReturn(null);

      final result = await _defaultCoversRepository.loadDefaultCoverURLs();

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(
          failure,
          const DefaultCoversFailure.unexpected(),
        ),
        (_) {},
      );
    });
  });
}
