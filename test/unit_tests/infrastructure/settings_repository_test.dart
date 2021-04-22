import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/domain/settings/i_ssettings_repository.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/infrastructure/settings/hive_settings.dart';
import 'package:wine/infrastructure/settings/settings_repository.dart';

import '../../mocks/firebase_auth_mocks.dart';
import '../../mocks/hive_mocks.dart';
import '../utils/constants.dart';

void main() {
  ISettingsRepository _settingsRepository;

  auth.FirebaseAuth _firebaseAuth;

  HiveInterface _hive;
  Box<HiveSettings> _box = MockBox<HiveSettings>();

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

      expect(result.isRight(), true);
      result.fold(
        (_) {},
        (success) => expect(success, unit),
      );
    });

    test('When settings not deleted Then return SettingsNotDeleted', () async {
      when(() => _box.get(any())).thenReturn(testHiveSettings);

      final result = await _settingsRepository.deleteSettings();

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<SettingsNotDeleted>()),
        (_) {},
      );
    });
  });

  group('fetchSettings -', () {
    test('When settings fetched Then return Settings', () async {
      when(() => _box.get(any())).thenReturn(testHiveSettings);

      final result = await _settingsRepository.fetchSettings();

      expect(result.isRight(), true);
      result.fold(
        (_) {},
        (success) => expect(success, testHiveSettings.toDomain()),
      );
    });

    test('When settings not fetched Then return SettingsNotFound', () async {
      when(() => _box.get(any())).thenReturn(null);

      final result = await _settingsRepository.fetchSettings();

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<SettingsNotFound>()),
        (_) {},
      );
    });
  });

  group('initializeSettings -', () {
    test('When settings initialized Then return Unit', () async {
      when(() => _box.get(any())).thenReturn(testHiveSettings);

      final result = await _settingsRepository.initializeSettings();

      expect(result.isRight(), true);
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

        expect(result.isLeft(), true);
        result.fold(
          (failure) => expect(failure, isA<SettingsNotInitialized>()),
          (_) {},
        );
      },
    );
  });

  group('updateSettings -', () {
    test('When settings updated Then return Unit', () async {
      when(() => _box.get(any())).thenReturn(testHiveSettings);

      final result =
          await _settingsRepository.updateSettings(testHiveSettings.toDomain());

      expect(result.isRight(), true);
      result.fold(
        (_) {},
        (success) => expect(success, unit),
      );
    });

    test('When settings not updated Then return SettingsNotUpdated', () async {
      final updatedTestHiveSettings =
          testHiveSettings.copyWith(enableChaptersBookmarksCount: true);

      when(() => _box.get(any())).thenReturn(updatedTestHiveSettings);

      final result =
          await _settingsRepository.updateSettings(testHiveSettings.toDomain());

      expect(result.isLeft(), true);
      result.fold(
        (failure) => expect(failure, isA<SettingsNotUpdated>()),
        (_) {},
      );
    });
  });
}
