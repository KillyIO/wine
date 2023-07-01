import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/infrastructure/settings/isar_settings.dart';
import 'package:wine/infrastructure/settings/settings_repository.dart';

import '../utils/constants.dart';

void main() {
  late ISettingsRepository settingsRepository;
  late Isar isar;

  setUpAll(() async {
    await Isar.initializeIsarCore(download: true);
  });

  tearDownAll(() {
    if (isar.isOpen) {
      isar.close(deleteFromDisk: true);
    }
  });

  setUp(() async {
    settingsRepository = SettingsRepository(isar);
  });

  group('deleteSettings -', () {
    setUpAll(() async {
      isar = await Isar.open([IsarSettingsSchema], directory: '');

      await isar.writeTxn(() async {
        await isar.settings.clear();
      });
    });

    tearDownAll(() async {
      await isar.close();
    });

    test('When settings deleted Then return Unit', () async {
      await isar.writeTxn(() async {
        await isar.settings.put(testIsarSettings);
      });

      final result = await settingsRepository.deleteSettings();

      expect(result, equals(const Ok<Unit, SettingsFailure>(unit)));
    });

    test('When settings not deleted Then return SettingsNotDeleted', () async {
      await isar.writeTxn(() async {
        await isar.settings.clear();
      });

      final result = await settingsRepository.deleteSettings();

      expect(
        result,
        equals(
          const Err<Unit, SettingsFailure>(
            SettingsFailure.settingsNotDeleted(),
          ),
        ),
      );
    });
  });

  group('fetchSettings -', () {
    setUpAll(() async {
      isar = await Isar.open([IsarSettingsSchema], directory: '');

      await isar.writeTxn(() async {
        await isar.settings.clear();
      });
    });

    tearDownAll(() async {
      await isar.close();
    });

    test('When settings fetched Then return Settings', () async {
      await isar.writeTxn(() async {
        await isar.settings.put(testIsarSettings);
      });

      final result = await settingsRepository.fetchSettings();

      expect(result, equals(const Ok<Settings, SettingsFailure>(testSettings)));
    });

    test('When settings not fetched Then return SettingsNotFound', () async {
      await isar.writeTxn(() async {
        await isar.settings.clear();
      });

      final result = await settingsRepository.fetchSettings();

      expect(
        result,
        equals(
          const Err<Settings, SettingsFailure>(
            SettingsFailure.settingsNotFound(),
          ),
        ),
      );
    });
  });

  group('initializeSettings -', () {
    setUpAll(() async {
      isar = await Isar.open([IsarSettingsSchema], directory: '');

      await isar.writeTxn(() async {
        await isar.settings.clear();
      });
    });

    tearDownAll(() async {
      await isar.close();
    });

    test('When settings initialized Then return Unit', () async {
      final result = await settingsRepository.initializeSettings();

      expect(result, equals(const Ok<Unit, SettingsFailure>(unit)));
    });
  });

  group('updateSettings -', () {
    setUpAll(() async {
      isar = await Isar.open([IsarSettingsSchema], directory: '');

      await isar.writeTxn(() async {
        await isar.settings.clear();
      });
    });

    tearDownAll(() async {
      await isar.close();
    });

    test('When settings updated Then return Unit', () async {
      await isar.writeTxn(() async {
        await isar.settings.put(testIsarSettings);
      });

      final result =
          await settingsRepository.updateSettings(testIsarSettings.toDomain());

      expect(result, equals(const Ok<Unit, SettingsFailure>(unit)));
    });

    test('When settings not found Then return SettingsNotFound', () async {
      await isar.writeTxn(() async {
        await isar.settings.clear();
      });

      final result =
          await settingsRepository.updateSettings(testIsarSettings.toDomain());

      expect(
        result,
        equals(
          const Err<Unit, SettingsFailure>(
            SettingsFailure.settingsNotFound(),
          ),
        ),
      );
    });
  });
}
