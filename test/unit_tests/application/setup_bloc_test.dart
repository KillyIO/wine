import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/application/setup/setup_bloc.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/domain/user/i_user_repository.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../../mocks/default_covers_mock.dart';
import '../../mocks/domain_mocks.dart';
import '../../mocks/sessions_mocks.dart';
import '../../mocks/settings_mocks.dart';
import '../../mocks/user_mocks.dart';
import '../utils/constants.dart';

void main() {
  late IAuthFacade authFacade;
  late IDefaultCoversRepository defaultCoversRepository;
  late ISessionsRepository sessionsRepository;
  late ISettingsRepository settingsRepository;
  late IUserRepository userRepository;

  late SetupBloc setupBloc;

  setUp(() {
    authFacade = MockAuthFacade();
    defaultCoversRepository = MockDefaultCoversRepository();
    sessionsRepository = MockSessionsRepository();
    settingsRepository = MockSettingsRepository();
    userRepository = MockUserRepository();

    setupBloc = SetupBloc(
      authFacade,
      defaultCoversRepository,
      sessionsRepository,
      settingsRepository,
      userRepository,
    );

    registerFallbackValue(MockUniqueID());
    registerFallbackValue(MockUser());
  });

  tearDown(() {
    setupBloc.close();
  });

  group('SetupBloc -', () {
    blocTest<SetupBloc, SetupState>(
      'emits [] when instanciated.',
      build: () => setupBloc,
      expect: () => <SetupState>[],
    );

    group('Errors -', () {
      blocTest<SetupBloc, SetupState>(
        'emits [AuthFailure.serverError] when appLaunched is added.',
        build: () => setupBloc,
        act: (bloc) {
          when(() => authFacade.isLoggedIn).thenReturn(false);
          when(() => authFacade.logInAnonymously())
              .thenAnswer((_) async => const Err(AuthFailure.serverError()));
          return bloc.add(const SetupEvent.appLaunched());
        },
        expect: () => <SetupState>[
          const SetupState.initial(),
          const SetupState.failure(
            CoreFailure.auth(AuthFailure.serverError()),
          ),
        ],
        verify: (_) {
          verifyInOrder([
            () => authFacade.isLoggedIn,
            authFacade.logInAnonymously,
          ]);
        },
      );

      blocTest<SetupBloc, SetupState>(
        '''emits [DefaultCoversFailure.defaultCoverURLsNotLoaded] when authenticated is added.''',
        build: () => setupBloc,
        act: (bloc) {
          when(() => authFacade.isAnonymous).thenReturn(false);
          when(() => defaultCoversRepository.loadDefaultCovers()).thenAnswer(
            (_) async =>
                const Err(DefaultCoversFailure.defaultCoversNotLoaded()),
          );
          return bloc.add(const SetupEvent.authenticated());
        },
        expect: () => <SetupState>[
          const SetupState.failure(
            CoreFailure.defaultCovers(
              DefaultCoversFailure.defaultCoversNotLoaded(),
            ),
          ),
        ],
        verify: (_) {
          verifyInOrder([
            () => authFacade.isAnonymous,
            defaultCoversRepository.loadDefaultCovers,
          ]);
        },
      );

      blocTest<SetupBloc, SetupState>(
        '''emits [DefaultCoversFailure.defaultCoverURLsNotCached] when defaultCoverURLsLoaded is added.''',
        build: () => setupBloc,
        act: (bloc) {
          when(
            () =>
                defaultCoversRepository.cacheDefaultCovers([testDefaultCover]),
          ).thenAnswer(
            (_) async =>
                const Err(DefaultCoversFailure.defaultCoversNotCached()),
          );
          return bloc.add(SetupEvent.defaultCoversLoaded([testDefaultCover]));
        },
        expect: () => <SetupState>[
          const SetupState.failure(
            CoreFailure.defaultCovers(
              DefaultCoversFailure.defaultCoversNotCached(),
            ),
          ),
        ],
        verify: (_) {
          verify(
            () =>
                defaultCoversRepository.cacheDefaultCovers([testDefaultCover]),
          ).called(1);
        },
      );

      blocTest<SetupBloc, SetupState>(
        '''emits [SettingsFailure.settingsNotInitialized] when settingsNotFound is added.''',
        build: () => setupBloc,
        act: (bloc) {
          when(() => settingsRepository.initializeSettings()).thenAnswer(
            (_) async => const Err(SettingsFailure.settingsNotInitialized()),
          );
          return bloc.add(const SetupEvent.settingsNotFound());
        },
        expect: () => <SetupState>[
          const SetupState.failure(
            CoreFailure.settings(SettingsFailure.settingsNotInitialized()),
          ),
        ],
        verify: (_) {
          verify(settingsRepository.initializeSettings).called(1);
        },
      );

      blocTest<SetupBloc, SetupState>(
        'emits [SessionsFailure.sessionNotInserted] when userLoaded is added.',
        build: () => setupBloc,
        act: (bloc) {
          when(() => sessionsRepository.insertSession(any())).thenAnswer(
            (_) async => const Err(SessionsFailure.sessionNotInserted()),
          );
          return bloc.add(SetupEvent.userLoaded(testUser));
        },
        expect: () => <SetupState>[
          const SetupState.failure(
            CoreFailure.sessions(SessionsFailure.sessionNotInserted()),
          ),
        ],
        verify: (_) {
          verify(() => sessionsRepository.insertSession(any())).called(1);
        },
      );
    });

    group('Completed -', () {
      blocTest<SetupBloc, SetupState>(
        'emits [SetupState.content] when appLaunched is added (anonymous).',
        build: () => setupBloc,
        act: (bloc) {
          when(() => authFacade.isLoggedIn).thenReturn(true);
          when(() => authFacade.isAnonymous).thenReturn(true);
          when(settingsRepository.fetchSettings)
              .thenAnswer((_) async => const Ok(testSettings));
          when(() => authFacade.isAnonymous).thenReturn(true);

          return bloc.add(const SetupEvent.appLaunched());
        },
        expect: () => <SetupState>[
          const SetupState.initial(),
          const SetupState.content(),
        ],
        verify: (_) {
          verifyInOrder([
            () => authFacade.isLoggedIn,
            () => authFacade.isAnonymous,
            settingsRepository.fetchSettings,
            () => authFacade.isAnonymous,
          ]);
        },
      );

      blocTest<SetupBloc, SetupState>(
        'emits [SetupState.content] when appLaunched is added (authenticated).',
        build: () => setupBloc,
        act: (bloc) {
          when(() => authFacade.isLoggedIn).thenReturn(false);
          when(authFacade.logInAnonymously)
              .thenAnswer((_) async => const Ok(unit));
          when(() => authFacade.isAnonymous).thenReturn(false);
          when(defaultCoversRepository.loadDefaultCovers)
              .thenAnswer((_) async => Ok([testDefaultCover]));
          when(
            () => defaultCoversRepository.cacheDefaultCovers(any()),
          ).thenAnswer((_) async => const Ok(unit));
          when(settingsRepository.fetchSettings).thenAnswer(
            (_) async => const Err(SettingsFailure.settingsNotFound()),
          );
          when(settingsRepository.initializeSettings)
              .thenAnswer((_) async => const Ok(unit));
          when(() => authFacade.isAnonymous).thenReturn(false);
          when(sessionsRepository.fetchSession)
              .thenAnswer((_) async => Ok(testUser));
          when(() => userRepository.loadUser(any()))
              .thenAnswer((_) async => Ok(testUser));
          when(() => sessionsRepository.insertSession(any()))
              .thenAnswer((_) async => const Ok(unit));

          return bloc.add(const SetupEvent.appLaunched());
        },
        expect: () => <SetupState>[
          const SetupState.initial(),
          const SetupState.content(),
        ],
        verify: (_) {
          verifyInOrder([
            () => authFacade.isLoggedIn,
            authFacade.logInAnonymously,
            () => authFacade.isAnonymous,
            defaultCoversRepository.loadDefaultCovers,
            () => defaultCoversRepository.cacheDefaultCovers(any()),
            settingsRepository.fetchSettings,
            settingsRepository.initializeSettings,
            () => authFacade.isAnonymous,
            sessionsRepository.fetchSession,
            () => userRepository.loadUser(any()),
            () => sessionsRepository.insertSession(any())
          ]);
        },
      );
    });
  });
}
