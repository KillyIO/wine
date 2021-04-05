import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/infrastructure/default_covers/default_covers_repository.dart';

import '../../mocks/cloud_firestore_mocks.dart';
import '../../mocks/hive_mocks.dart';
import '../utils/constants.dart';

void main() {
  DefaultCoversRepository _defaultCoversRepository;

  FirebaseFirestore _firestore;

  HiveInterface _hive;
  Box<String> _boxString = MockBox<String>();

  setUp(() {
    _firestore = MockFirebaseFirestore();
    _hive = MockHiveInterface();

    _defaultCoversRepository = DefaultCoversRepository(_firestore, _hive);
  });

  group('cacheDefaultCoverURLs -', () {
    setUp(() {
      when(() => _hive.openBox(any())).thenAnswer((_) async => _boxString);
    });

    test('When covers cached Then returrn Unit', () async {
      when(() => _boxString.get(any())).thenReturn('cover');

      final result = await _defaultCoversRepository
          .cacheDefaultCoverURLs(testDefaultCovers);

      result.fold(
        (_) {},
        (success) => expect(success, unit),
      );

      verify(() => _boxString.put('dc1', testDefaultCovers['dc1'])).called(1);
      verify(() => _boxString.put('dc2', testDefaultCovers['dc2'])).called(1);

      verify(() => _boxString.get('dc1')).called(1);
      verify(() => _boxString.get('dc2')).called(1);
    });

    test(
      'When at least one cover not cached The return DefaultCoverURLsNotCached',
      () async {
        when(() => _boxString.get(any())).thenReturn(null);

        final result = await _defaultCoversRepository
            .cacheDefaultCoverURLs(testDefaultCovers);

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

  group('fetchDefaultCoverURLByKey -', () {});

  group('loadDefaultCoverURLs -', () {});
}
