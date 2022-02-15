// ignore_for_file: invalid_use_of_protected_member

import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/infrastructure/settings/isar_settings.dart';
import 'package:wine/infrastructure/settings/settings_repository.dart';

import '../../mocks/firebase_auth_mocks.dart';
import '../../mocks/isar_mocks.dart';
import '../utils/constants.dart';

void main() {
  late ISettingsRepository _settingsRepository;

  late auth.FirebaseAuth _firebaseAuth;

  late Isar _isar;
  late IsarCollection<IsarSettings> _collection;
  late QueryBuilder<IsarSettings, IsarSettings, QWhere> _where;
  late QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> _uidEqualTo;
  late Query<IsarSettings> _build;

  setUp(() {
    _firebaseAuth = MockFirebaseAuth();
    _isar = MockIsar();
    _collection = MockIsarCollection<IsarSettings>();
    _where = MockQueryBuilder<IsarSettings, IsarSettings, QWhere>();
    _uidEqualTo =
        MockQueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause>();
    _build = MockQuery<IsarSettings>();

    _settingsRepository = SettingsRepository(_firebaseAuth, _isar);

    registerFallbackValue(MockIsarSettings());
    registerFallbackValue(MockIsarCollection<IsarSettings>());
    registerFallbackValue(MockWhereClause());

    when(() => _firebaseAuth.currentUser).thenReturn(MockUser());
  });

  group('deleteSettings -', () {
    test('When settings deleted Then return Unit', () async {
      when(() => _isar.writeTxn(any()))
          .thenAnswer((_) async => Result<Unit, SettingsFailure>.ok(unit));

      final result = await _settingsRepository.deleteSettings();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test('When settings not deleted Then return SettingsNotDeleted', () async {
      when(() => _isar.writeTxn(any())).thenAnswer(
        (_) async => Result<Unit, SettingsFailure>.err(
          const SettingsFailure.settingsNotDeleted(),
        ),
      );

      final result = await _settingsRepository.deleteSettings();

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SettingsNotDeleted>()),
      );
    });
  });

  group('fetchSettings -', () {
    setUp(() {
      when(() => _isar.settings).thenReturn(_collection);
      when(_collection.where).thenReturn(_where);
      when(
        () => _where.addWhereClauseInternal<QAfterWhereClause>(any()),
      ).thenReturn(_uidEqualTo);
      when(_uidEqualTo.build).thenReturn(_build);
    });

    test('When settings fetched Then return Settings', () async {
      when(_build.findFirst).thenAnswer((_) async => testIsarSettings);

      final result = await _settingsRepository.fetchSettings();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, testIsarSettings.toDomain()),
        (_) {},
      );
    });

    test('When settings not fetched Then return SettingsNotFound', () async {
      when(_build.findFirst).thenAnswer((_) async => null);

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
      when(() => _isar.writeTxn(any()))
          .thenAnswer((_) async => Result<Unit, SettingsFailure>.ok(unit));

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
        when(() => _isar.writeTxn(any())).thenAnswer(
          (_) async => Result<Unit, SettingsFailure>.err(
            const SettingsFailure.settingsNotInitialized(),
          ),
        );

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
    setUp(() {
      when(() => _isar.settings).thenReturn(_collection);
      when(_collection.where).thenReturn(_where);
      when(
        () => _where.addWhereClauseInternal<QAfterWhereClause>(any()),
      ).thenReturn(_uidEqualTo);
      when(_uidEqualTo.build).thenReturn(_build);
    });

    test('When settings updated Then return Unit', () async {
      when(() => _isar.writeTxn(any())).thenAnswer((_) async => null);
      when(_build.findFirst).thenAnswer((_) async => testIsarSettings);

      final result =
          await _settingsRepository.updateSettings(testIsarSettings.toDomain());

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test('When settings not found Then return SettingsNotFound', () async {
      when(_build.findFirst).thenAnswer((_) async => null);

      final result =
          await _settingsRepository.updateSettings(testIsarSettings.toDomain());

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SettingsNotFound>()),
      );
    });

    test('When settings not updated Then return SettingsNotUpdated', () async {
      final updatedTestIsarSettings =
          testIsarSettings.copyWith(enableBranchesBookmarksCount: true);

      when(() => _isar.writeTxn(any())).thenAnswer((_) async => null);
      when(_build.findFirst).thenAnswer((_) async => updatedTestIsarSettings);

      final result =
          await _settingsRepository.updateSettings(testIsarSettings.toDomain());

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SettingsNotUpdated>()),
      );
    });
  });
}
