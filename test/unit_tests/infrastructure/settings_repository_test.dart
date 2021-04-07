import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/domain/settings/i_ssettings_repository.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/infrastructure/settings/settings_repository.dart';
import 'package:wine/infrastructure/settings/settings_dto.dart';

import '../../mocks/firebase_auth_mocks.dart';
import '../../mocks/hive_mocks.dart';
import '../utils/constants.dart';

void main() {
  ISettingsRepository _settingsRepository;

  auth.FirebaseAuth _firebaseAuth;

  HiveInterface _hive;
  Box<Map<String, dynamic>> _box = MockBox<Map<String, dynamic>>();

  setUp(() {
    _firebaseAuth = MockFirebaseAuth();
    _hive = MockHiveInterface();

    _settingsRepository = SettingsRepository(_firebaseAuth, _hive);

    when(() => _hive.openBox(any())).thenAnswer((_) async => _box);

    when(() => _firebaseAuth.currentUser).thenReturn(MockUser());
  });

  group('deleteSettings -', () {
    test('When settings deleted Then return Unit', () async {
      when(() => _box.get(any())).thenReturn(null);

      final result = await _settingsRepository.deleteSettings();

      result.fold(
        (_) {},
        (success) => expect(success, unit),
      );
    });

    test('When settings not deleted Then return SettingsNotDeleted', () async {
      when(() => _box.get(any())).thenReturn(testSettingsAsMap);

      final result = await _settingsRepository.deleteSettings();

      result.fold(
        (failure) => expect(failure, isA<SettingsNotDeleted>()),
        (_) {},
      );
    });
  });

  group('fetchSettings -', () {
    test('When settings fetched Then return Settings', () async {
      when(() => _box.get(any())).thenReturn(testSettingsAsMap);

      final result = await _settingsRepository.fetchSettings();

      result.fold(
        (_) {},
        (success) => expect(success, testSettingsAsMap.toDomain()),
      );
    });

    test('When settings not fetched Then return SettingsNotFound', () async {
      when(() => _box.get(any())).thenReturn(null);

      final result = await _settingsRepository.deleteSettings();

      result.fold(
        (failure) => expect(failure, isA<SettingsNotFound>()),
        (_) {},
      );
    });
  });

  group('initializeSettings -', () {
    test('When settings initialized Then return Unit', () async {
      when(() => _box.get(any())).thenReturn(testUserAsMap);

      final result = await _settingsRepository.initializeSettings();

      result.fold(
        (_) {},
        (success) => expect(success, unit),
      );
    });

    test(
      'When settings not initialized Then return SettingsNotCreated',
      () async {
        when(() => _box.get(any())).thenReturn(null);

        final result = await _settingsRepository.initializeSettings();

        result.fold(
          (failure) => expect(failure, isA<SettingsNotInitialized>()),
          (_) {},
        );
      },
    );
  });

  group('updateSettings -', () {
    test('When settings updated Then return Unit', () async {
      when(() => _box.get(any())).thenReturn(testSettingsAsMap);

      final result = await _settingsRepository
          .updateSettings(testSettingsAsMap.toDomain());

      result.fold(
        (_) {},
        (success) => expect(success, unit),
      );
    });

    test('When settings not updated Then return SettingsNotUpdated', () async {
      final updatedTestSettingsAsMap = testSettingsAsMap
        ..['enableChaptersBookmarksCount'] = true;

      when(() => _box.get(any())).thenReturn(updatedTestSettingsAsMap);

      final result = await _settingsRepository
          .updateSettings(testSettingsAsMap.toDomain());

      result.fold(
        (failure) => expect(failure, isA<SettingsNotUpdated>()),
        (_) {},
      );
    });
  });
}
