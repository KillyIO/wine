import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/infrastructure/settings/hive_settings.dart';
import 'package:wine/infrastructure/settings/settings_repository.dart';

import '../../mocks/firebase_auth_mocks.dart';
import '../../mocks/hive_mocks.dart';
import '../utils/constants.dart';

void main() {
  late ISettingsRepository _settingsRepository;

  late auth.FirebaseAuth _firebaseAuth;

  late HiveInterface _hive;
  final Box<HiveSettings> _box = MockBox<HiveSettings>();

  setUp(() {
    _firebaseAuth = MockFirebaseAuth();
    _hive = MockHiveInterface();

    _settingsRepository = SettingsRepository(_firebaseAuth, _hive);

    registerFallbackValue<HiveSettings>(MockHiveSettings());

    when(() => _hive.openBox<dynamic>(any())).thenAnswer((_) async => _box);

    when(() => _firebaseAuth.currentUser).thenReturn(MockUser());

    when(() => _box.put(any<dynamic>(), any())).thenAnswer((_) async {
      return;
    });
  });

  group('deleteSettings -', () {
    setUp(() {
      when(() => _box.delete(any<dynamic>())).thenAnswer((_) async {
        return;
      });
    });

    test('When settings deleted Then return Unit', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(null);

      final result = await _settingsRepository.deleteSettings();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test('When settings not deleted Then return SettingsNotDeleted', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(testHiveSettings);

      final result = await _settingsRepository.deleteSettings();

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SettingsNotDeleted>()),
      );
    });
  });

  group('fetchSettings -', () {
    test('When settings fetched Then return Settings', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(testHiveSettings);

      final result = await _settingsRepository.fetchSettings();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, testHiveSettings.toDomain()),
        (_) {},
      );
    });

    test('When settings not fetched Then return SettingsNotFound', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(null);

      final result = await _settingsRepository.fetchSettings();

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SettingsNotFound>()),
      );
    });
  });

  group('initializeSettings -', () {
    test('When settings initialized Then return Unit', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(testHiveSettings);

      final result = await _settingsRepository.initializeSettings();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test(
      'When settings not initialized Then return SettingsNotCreated',
      () async {
        when(() => _box.get(any<dynamic>())).thenReturn(null);

        final result = await _settingsRepository.initializeSettings();

        expect(result.isErr(), true);
        result.match(
          (_) {},
          (err) => expect(err, isA<SettingsNotInitialized>()),
        );
      },
    );
  });

  group('updateSettings -', () {
    test('When settings updated Then return Unit', () async {
      when(() => _box.get(any<dynamic>())).thenReturn(testHiveSettings);

      final result =
          await _settingsRepository.updateSettings(testHiveSettings.toDomain());

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test('When settings not updated Then return SettingsNotUpdated', () async {
      final updatedTestHiveSettings =
          testHiveSettings.copyWith(enableChaptersBookmarksCount: true);

      when(() => _box.get(any<dynamic>())).thenReturn(updatedTestHiveSettings);

      final result =
          await _settingsRepository.updateSettings(testHiveSettings.toDomain());

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SettingsNotUpdated>()),
      );
    });
  });
}
