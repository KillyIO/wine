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
  MockConfigBox mockConfigsBox;

  ILocalConfigDatabaseFacade localConfigDatabaseFacade;

  group(
    'HiveLocalConfigDatabaseFacade',
    () {
      setUp(() {
        config = Config(
          firstRun: false,
          enableSeriesViewsCount: false,
          enableSeriesLikesCount: false,
          enableSeriesBookmarksCount: false,
          enableChaptersViewsCount: false,
          enableChaptersLikesCount: false,
          enableChaptersBookmarksCount: false,
        );

        mockHiveInterface = MockHiveInterface();
        mockConfigsBox = MockConfigBox();

        localConfigDatabaseFacade =
            HiveLocalConfigDatabaseFacade(mockConfigsBox);

        when(mockHiveInterface.openBox(any))
            .thenAnswer((_) async => mockConfigsBox);
      });

      tearDown(() async {
        await mockConfigsBox.close();
      });

      // SECTION: deleteConfig
      test(
        '''
        Given a successful deletion
        When deleteConfig() is called
        Then configDeletedSuccess() is returned
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
        Given a failed deletion
        When deleteConfig() is called
        Then deleteConfigFailure() is returned
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

      // SECTION: fetchConfig
      test(
        '''
        Given no config found and then initialized successfully
        When fetchConfig() is called
        Then configInitializedSuccess() is returned
        ''',
        () async {
          final answers = [null, config];
          when(mockConfigsBox.get(any)).thenAnswer((_) => answers.removeAt(0));

          final result = await localConfigDatabaseFacade.fetchConfig();

          expect(result.isRight(), true);

          result.fold(
            (_) {},
            (success) => expect(success, isA<ConfigInitializedSuccess>()),
          );
        },
      );

      test(
        '''
        Given no config found and then initialization fails
        When fetchConfig() is called
        Then initializeConfigFailure() is returned
        ''',
        () async {
          when(mockConfigsBox.get(any)).thenReturn(null);
          when(mockConfigsBox.get(any)).thenReturn(null);

          final result = await localConfigDatabaseFacade.fetchConfig();

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<InitializeConfigFailure>()),
            (_) {},
          );
        },
      );

      test(
        '''
        Given a config is found
        When fetchConfig() is called
        Then configFetchedSuccess() is returned
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

      // SECTION: initializeConfig
      test(
        '''
        Given a config is provided and initialized successfully
        When initializeConfig() is called
        Then configInitializedSuccess() is returned
        ''',
        () async {
          when(mockConfigsBox.get(any)).thenReturn(config);

          final result =
              await localConfigDatabaseFacade.initializeConfig(config: config);

          expect(result.isRight(), true);

          result.fold(
            (_) {},
            (success) => expect(success, isA<ConfigInitializedSuccess>()),
          );
        },
      );

      test(
        '''
        Given a config's not provided and initialized successfully
        When initializeConfig() is called
        Then configInitializedSuccess() is returned
        ''',
        () async {
          when(mockConfigsBox.get(any)).thenReturn(config);

          final result = await localConfigDatabaseFacade.initializeConfig();

          expect(result.isRight(), true);

          result.fold(
            (_) {},
            (success) => expect(success, isA<ConfigInitializedSuccess>()),
          );
        },
      );

      test(
        '''
        Given initization fails
        When initializeConfig() is called
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

      // SECTION: updateConfig
      test(
        '''
        Given config found in box and updated successfully
        When updateConfig() is called
        Then configUpdatedSuccess() is returned
        ''',
        () async {
          when(mockConfigsBox.get(any)).thenReturn(config);

          final result = await localConfigDatabaseFacade.updateConfig(config);

          expect(result.isRight(), true);

          result.fold(
            (_) {},
            (success) => expect(success, isA<ConfigUpdatedSuccess>()),
          );
        },
      );

      test(
        '''
        Given config found in box and update fails
        When updateConfig() is called
        Then updateConfigFailure() is returned
        ''',
        () async {
          final newConfig = config.copyWith(firstRun: true);

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

      test(
        '''
        Given no config found in box
        When updateConfig() is called
        Then updateConfigFailure() is returned
        ''',
        () async {
          when(mockConfigsBox.get(any)).thenReturn(null);

          final result = await localConfigDatabaseFacade.updateConfig(config);

          expect(result.isLeft(), true);

          result.fold(
            (failure) => expect(failure, isA<UpdateConfigFailure>()),
            (_) {},
          );
        },
      );
    },
  );
}
