import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:wine/domain/database/facades/local/i_local_config_database_facade.dart';
import 'package:wine/domain/database/failures/config_database_failure.dart';
import 'package:wine/domain/database/successes/config_database_success.dart';
import 'package:wine/domain/models/config.dart';
import 'package:wine/infrastructure/database/hive_config_database_facade.dart';

import '../../../mocks/hive_mocks.dart';

void main() {
  Config config;

  MockHiveInterface mockHiveInterface;
  MockConfigsBox mockConfigsBox;

  ILocalConfigDatabaseFacade localConfigDatabaseFacade;

  group(
    'ILocalConfigDatabaseFacade -',
    () {
      setUp(() {
        config = Config(
          enableSeriesViewsCount: false,
          enableSeriesLikesCount: false,
          enableSeriesBookmarksCount: false,
          enableChaptersViewsCount: false,
          enableChaptersLikesCount: false,
          enableChaptersBookmarksCount: false,
        );

        mockHiveInterface = MockHiveInterface();
        mockConfigsBox = MockConfigsBox();

        localConfigDatabaseFacade = HiveConfigDatabaseFacade(mockConfigsBox);

        when(mockHiveInterface.openBox(any))
            .thenAnswer((_) async => mockConfigsBox);
      });

      tearDown(() async {
        await mockConfigsBox.close();
      });

      group(
        'deleteConfig -',
        () {
          test(
            'When config deleted Then return Unit',
            () async {
              when(mockConfigsBox.get(any)).thenReturn(null);

              final result = await localConfigDatabaseFacade.deleteConfig();

              expect(result.isRight(), true);

              result.fold(
                (_) {},
                (success) => expect(success, isA<ConfigDeletedSuccess>()),
              );
            },
          );

          test(
            'When coinfig not deleted Then return ConfigNotDeleted',
            () async {
              when(mockConfigsBox.get(any)).thenReturn(config);

              final result = await localConfigDatabaseFacade.deleteConfig();

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<ConfigNotDeleted>()),
                (_) {},
              );
            },
          );
        },
      );

      group(
        'fetchConfig -',
        () {
          test(
            'When config fetched Then return config',
            () async {
              when(mockConfigsBox.get(any)).thenReturn(config);

              final result = await localConfigDatabaseFacade.fetchConfig();

              expect(result.isRight(), true);

              result.fold(
                (_) {},
                (success) => expect(success, config),
              );
            },
          );

          test(
            '''
            Scenario: We trying to fetch the config inside the local database [FAILURE CASE]
            Given the Box is empty
            When fetchConfig() is called
            Then ConfigInitializedSuccess() or InitializeConfigFailure() are returned
            ''',
            () async {
              final answers = [null, config];
              when(mockConfigsBox.get(any))
                  .thenAnswer((_) => answers.removeAt(0));

              final result = await localConfigDatabaseFacade.fetchConfig();

              result.fold(
                (failure) => expect(failure, isA<InitializeConfigFailure>()),
                (success) => expect(success, isA<ConfigInitializedSuccess>()),
              );
            },
          );
        },
      );

      // SECTION: initializeConfig
      group(
        'initializeConfig -',
        () {
          test(
            '''
            Scenario: We trying to initialize the config inside the local database [Config PROVIDED] [SUCCESS CASE]
            Given the Box is empty
            When initializeConfig() is called
            Then configInitializedSuccess() returned with Config()
            ''',
            () async {
              when(mockConfigsBox.get(any)).thenReturn(config);

              final result = await localConfigDatabaseFacade.initializeConfig(
                config: config,
              );

              expect(result.isRight(), true);

              result.fold(
                (_) {},
                (success) {
                  expect(success, isA<ConfigInitializedSuccess>());

                  if (success is ConfigInitializedSuccess) {
                    expect(success.config, config);
                  }
                },
              );
            },
          );

          test(
            '''
            Scenario: We trying to initialize the config inside the local database [Config() NOT PROVIDED] [SUCCESS CASE]
            Given the Box is empty
            When initializeConfig() is called
            Then configInitializedSuccess() returned
            ''',
            () async {
              when(mockConfigsBox.get(any))
                  .thenReturn(config.copyWith(firstRun: false));

              final result = await localConfigDatabaseFacade.initializeConfig();

              expect(result.isRight(), true);

              result.fold(
                (_) {},
                (success) {
                  expect(success, isA<ConfigInitializedSuccess>());

                  if (success is ConfigInitializedSuccess) {
                    expect(success.config, config.copyWith(firstRun: false));
                  }
                },
              );
            },
          );

          test(
            '''
            Scenario: We trying to initialize the config inside the local database [Config() (NOT) PROVIDED] [FAILURE CASE]
            Given the Box is empty
            When initializeConfig() is called
            Then initializeConfigFailure() returned
            ''',
            () async {
              when(mockConfigsBox.get(any)).thenReturn(null);

              final result = await localConfigDatabaseFacade.initializeConfig();

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<InitializeConfigFailure>()),
                (_) {},
              );
            },
          );
        },
      );

      // SECTION: updateConfig
      group(
        'updateConfig -',
        () {
          test(
            '''
            Scenario: We trying to update the config inside the local database [SUCCESS CASE]
            Given the Box is not empty
            When updateConfig() is called
            Then configUpdatedSuccess() returned
            ''',
            () async {
              when(mockConfigsBox.get(any)).thenReturn(config);

              final result =
                  await localConfigDatabaseFacade.updateConfig(config);

              expect(result.isRight(), true);

              result.fold(
                (_) {},
                (success) {
                  expect(success, isA<ConfigUpdatedSuccess>());

                  if (success is ConfigUpdatedSuccess) {
                    expect(success.config, config);
                  }
                },
              );
            },
          );

          test(
            '''
            Scenario: We trying to update the config inside the local database [FAILURE CASE]
            Given the Box is not empty
            When updateConfig() is called
            Then updateConfigFailure() returned
            ''',
            () async {
              final newConfig = config.copyWith(firstRun: false);

              when(mockConfigsBox.get(any)).thenReturn(config);

              final result =
                  await localConfigDatabaseFacade.updateConfig(newConfig);

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<UpdateConfigFailure>()),
                (_) {},
              );
            },
          );
        },
      );
    },
  );
}
