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
  late ISettingsRepository settingsRepository;

  late auth.FirebaseAuth firebaseAuth;

  late Isar isar;
  late IsarCollection<IsarSettings> collection;
  late QueryBuilder<IsarSettings, IsarSettings, QWhere> where;
  late QueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause> uidEqualTo;
  late Query<IsarSettings> build;

  setUp(() {
    firebaseAuth = MockFirebaseAuth();
    isar = MockIsar();
    collection = MockIsarCollection<IsarSettings>();
    where = MockQueryBuilder<IsarSettings, IsarSettings, QWhere>();
    uidEqualTo =
        MockQueryBuilder<IsarSettings, IsarSettings, QAfterWhereClause>();
    build = MockQuery<IsarSettings>();

    settingsRepository = SettingsRepository(isar);

    registerFallbackValue(MockIsarSettings());
    registerFallbackValue(MockIsarCollection<IsarSettings>());
    registerFallbackValue(MockWhereClause());

    when(() => firebaseAuth.currentUser).thenReturn(MockUser());
  });

  group('deleteSettings -', () {
    test('When settings deleted Then return Unit', () async {
      when(() => isar.writeTxn(any()))
          .thenAnswer((_) async => Result<Unit, SettingsFailure>.ok(unit));

      final result = await settingsRepository.deleteSettings();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test('When settings not deleted Then return SettingsNotDeleted', () async {
      when(() => isar.writeTxn(any())).thenAnswer(
        (_) async => Result<Unit, SettingsFailure>.err(
          const SettingsFailure.settingsNotDeleted(),
        ),
      );

      final result = await settingsRepository.deleteSettings();

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SettingsNotDeleted>()),
      );
    });
  });

  group('fetchSettings -', () {
    setUp(() {
      when(() => isar.settings).thenReturn(collection);
      when(collection.where).thenReturn(where);
      // when(
      //   () => where.addWhereClauseInternal<QAfterWhereClause>(any()),
      // ).thenReturn(uidEqualTo);
      when(uidEqualTo.build).thenReturn(build);
    });

    test('When settings fetched Then return Settings', () async {
      when(build.findFirst).thenAnswer((_) async => testIsarSettings);

      final result = await settingsRepository.fetchSettings();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, testIsarSettings.toDomain()),
        (_) {},
      );
    });

    test('When settings not fetched Then return SettingsNotFound', () async {
      when(build.findFirst).thenAnswer((_) async => null);

      final result = await settingsRepository.fetchSettings();

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SettingsNotFound>()),
      );
    });
  });

  group('initializeSettings -', () {
    test('When settings initialized Then return Unit', () async {
      when(() => isar.writeTxn(any()))
          .thenAnswer((_) async => Result<Unit, SettingsFailure>.ok(unit));

      final result = await settingsRepository.initializeSettings();

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test(
      'When settings not initialized Then return SettingsNotCreated',
      () async {
        when(() => isar.writeTxn(any())).thenAnswer(
          (_) async => Result<Unit, SettingsFailure>.err(
            const SettingsFailure.settingsNotInitialized(),
          ),
        );

        final result = await settingsRepository.initializeSettings();

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
      when(() => isar.settings).thenReturn(collection);
      when(collection.where).thenReturn(where);
      // when(
      //   () => where.addWhereClauseInternal<QAfterWhereClause>(any()),
      // ).thenReturn(uidEqualTo);
      when(uidEqualTo.build).thenReturn(build);
    });

    test('When settings updated Then return Unit', () async {
      when(() => isar.writeTxn(any())).thenAnswer((_) async => null);
      when(build.findFirst).thenAnswer((_) async => testIsarSettings);

      final result =
          await settingsRepository.updateSettings(testIsarSettings.toDomain());

      expect(result.isOk(), true);
      result.match(
        (ok) => expect(ok, unit),
        (_) {},
      );
    });

    test('When settings not found Then return SettingsNotFound', () async {
      when(build.findFirst).thenAnswer((_) async => null);

      final result =
          await settingsRepository.updateSettings(testIsarSettings.toDomain());

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SettingsNotFound>()),
      );
    });

    test('When settings not updated Then return SettingsNotUpdated', () async {
      final updatedTestIsarSettings =
          testIsarSettings.copyWith(enableBranchesBookmarksCount: true);

      when(() => isar.writeTxn(any())).thenAnswer((_) async => null);
      when(build.findFirst).thenAnswer((_) async => updatedTestIsarSettings);

      final result =
          await settingsRepository.updateSettings(testIsarSettings.toDomain());

      expect(result.isErr(), true);
      result.match(
        (_) {},
        (err) => expect(err, isA<SettingsNotUpdated>()),
      );
    });
  });
}
