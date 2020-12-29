import 'package:mockito/mockito.dart';
import 'package:test/test.dart';
import 'package:wine/domain/database/facades/local/i_local_config_database_facade.dart';
import 'package:wine/domain/database/failures/config_database_failure.dart';
import 'package:wine/domain/database/successes/config_database_success.dart';
import 'package:wine/domain/models/hive/config.dart';
import 'package:wine/infrastructure/database/hive_local_config_database_facade.dart';

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
          firstRun: true,
          enableSeriesViewsCount: false,
          enableSeriesLikesCount: false,
          enableSeriesBookmarksCount: false,
          enableChaptersViewsCount: false,
          enableChaptersLikesCount: false,
          enableChaptersBookmarksCount: false,
        );

        mockHiveInterface = MockHiveInterface();
        mockConfigsBox = MockConfigsBox();

        localConfigDatabaseFacade =
            HiveLocalConfigDatabaseFacade(mockConfigsBox);

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
            '''
            Given Config() stored in the box
            When no Config() found in the box
            Then configDeletedSuccess() returned
            ''',
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
            '''
            Given Config() stored in the box
            When Config() still in the box
            Then deleteConfigFailure() returned
            ''',
            () async {
              when(mockConfigsBox.get(any)).thenReturn(config);

              final result = await localConfigDatabaseFacade.deleteConfig();

              expect(result.isLeft(), true);

              result.fold(
                (failure) => expect(failure, isA<DeleteConfigFailure>()),
                (_) {},
              );
            },
          );
        },
      );

      // SECTION: fetchConfig
      group(
        'fetchConfig -',
        () {
          test(
            '''
            Given Config() stored in the box
            When Config() is found in the box
            Then configFetchedSuccess() returned with Config()
            ''',
            () async {
              when(mockConfigsBox.get(any)).thenReturn(config);

              final result = await localConfigDatabaseFacade.fetchConfig();

              expect(result.isRight(), true);

              result.fold(
                (_) {},
                (success) {
                  expect(success, isA<ConfigFetchedSuccess>());

                  if (success is ConfigFetchedSuccess) {
                    expect(success.config, config);
                  }
                },
              );
            },
          );

          test(
            '''
            Given no Config() stored in the box
            When no Config() found in the box
            Then ConfigInitializedSuccess() or InitializeConfigFailure() returned
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
            Given no Config() stored in the box
            And Config() is provided
            When Config() is found in the box
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
            Given no Config() stored in the box
            And Config() not provided
            When Config() found in the box
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
            Given no Config() stored in the box
            When no Config() found in the box
            Then initializeConfigFailure() is returned
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
            Given Config() stored in the box
            When Config() stored the same has new Config()
            Then configUpdatedSuccess() is returned
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
            Given Config() stored in the box
            When Config() stored not the same has the new Config()
            Then updateConfigFailure() is returned
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
