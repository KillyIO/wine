import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/application/setup/setup_bloc.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/default_covers/default_covers_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/settings/i_settings_repository.dart';
import 'package:wine/domain/settings/settings_failure.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user_failure.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../../mocks/default_covers_mock.dart';
import '../../mocks/sessions_mocks.dart';
import '../../mocks/settings_mocks.dart';
import '../../mocks/user_mocks.dart';
import '../utils/constants.dart';

void main() {
  late IAuthFacade _authFacade;
  late IDefaultCoversRepository _defaultCoversRepository;
  late ISessionsRepository _sessionsRepository;
  late ISettingsRepository _settingsRepository;
  late IUserRepository _userRepository;

  late SetupBloc _setupBloc;

  setUp(() {
    _authFacade = MockAuthFacade();
    _defaultCoversRepository = MockDefaultCoversRepository();
    _sessionsRepository = MockSessionsRepository();
    _settingsRepository = MockSettingsRepository();
    _userRepository = MockUserRepository();

    _setupBloc = SetupBloc(
      _authFacade,
      _defaultCoversRepository,
      _sessionsRepository,
      _settingsRepository,
      _userRepository,
    );
  });

  tearDown(() {
    _setupBloc.close();
  });

  group('SetupBloc -', () {
    blocTest<SetupBloc, SetupState>(
      'emits [] when instanciated.',
      build: () => _setupBloc,
      expect: () => <SetupState>[],
    );

    group('Errors -', () {
      blocTest<SetupBloc, SetupState>(
        'emits [AuthFailure.serverError] when appLaunched is added.',
        build: () => _setupBloc,
        act: (bloc) {
          when(() => _authFacade.isLoggedIn).thenReturn(false);
          when(() => _authFacade.logInAnonymously())
              .thenAnswer((_) async => Err(const AuthFailure.serverError()));
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
            () => _authFacade.isLoggedIn,
            _authFacade.logInAnonymously,
          ]);
        },
      );

      blocTest<SetupBloc, SetupState>(
        '''emits [DefaultCoversFailure.defaultCoverURLsNotLoaded] when authenticated is added.''',
        build: () => _setupBloc,
        act: (bloc) {
          when(() => _authFacade.isAnonymous).thenReturn(false);
          when(() => _defaultCoversRepository.loadDefaultCoverURLs())
              .thenAnswer(
            (_) async =>
                Err(const DefaultCoversFailure.defaultCoverURLsNotLoaded()),
          );
          return bloc.add(const SetupEvent.authenticated());
        },
        expect: () => <SetupState>[
          const SetupState.failure(
            CoreFailure.defaultCovers(
              DefaultCoversFailure.defaultCoverURLsNotLoaded(),
            ),
          ),
        ],
        verify: (_) {
          verifyInOrder([
            () => _authFacade.isAnonymous,
            _defaultCoversRepository.loadDefaultCoverURLs,
          ]);
        },
      );

      blocTest<SetupBloc, SetupState>(
        '''emits [DefaultCoversFailure.defaultCoverURLsNotCached] when defaultCoverURLsLoaded is added.''',
        build: () => _setupBloc,
        act: (bloc) {
          when(
            () => _defaultCoversRepository
                .cacheDefaultCoverURLs(testDefaultCovers),
          ).thenAnswer(
            (_) async =>
                Err(const DefaultCoversFailure.defaultCoverURLsNotCached()),
          );
          return bloc
              .add(const SetupEvent.defaultCoverURLsLoaded(testDefaultCovers));
        },
        expect: () => <SetupState>[
          const SetupState.failure(
            CoreFailure.defaultCovers(
              DefaultCoversFailure.defaultCoverURLsNotCached(),
            ),
          ),
        ],
        verify: (_) {
          verify(
            () => _defaultCoversRepository
                .cacheDefaultCoverURLs(testDefaultCovers),
          ).called(1);
        },
      );

      blocTest<SetupBloc, SetupState>(
        '''emits [SettingsFailure.settingsNotInitialized] when settingsNotFound is added.''',
        build: () => _setupBloc,
        act: (bloc) {
          when(() => _settingsRepository.initializeSettings()).thenAnswer(
            (_) async => Err(const SettingsFailure.settingsNotInitialized()),
          );
          return bloc.add(const SetupEvent.settingsNotFound());
        },
        expect: () => <SetupState>[
          const SetupState.failure(
            CoreFailure.settings(SettingsFailure.settingsNotInitialized()),
          ),
        ],
        verify: (_) {
          verify(_settingsRepository.initializeSettings).called(1);
        },
      );

      blocTest<SetupBloc, SetupState>(
        '''emits [SessionsFailure.sessionNotCreated] when sessionNotFound is added.''',
        build: () => _setupBloc,
        act: (bloc) {
          when(() => _sessionsRepository.createSession()).thenAnswer(
            (_) async => Err(const SessionsFailure.sessionNotCreated()),
          );
          return bloc.add(const SetupEvent.sessionNotFound());
        },
        expect: () => <SetupState>[
          const SetupState.failure(
            CoreFailure.sessions(SessionsFailure.sessionNotCreated()),
          ),
        ],
        verify: (_) {
          verify(_sessionsRepository.createSession).called(1);
        },
      );

      blocTest<SetupBloc, SetupState>(
        'emits [UserFailure.userNotFound] when sessionFetched is added.',
        build: () => _setupBloc,
        act: (bloc) {
          when(() => _authFacade.isAnonymous).thenReturn(false);
          when(
            () => _userRepository
                .loadUser(UniqueID.fromUniqueString(testUserUid)),
          ).thenAnswer((_) async => Err(const UserFailure.userNotFound()));
          return bloc.add(SetupEvent.sessionFetched(testUser));
        },
        expect: () => <SetupState>[
          const SetupState.failure(
            CoreFailure.user(UserFailure.userNotFound()),
          ),
        ],
        verify: (_) {
          verifyInOrder([
            () => _authFacade.isAnonymous,
            () => _userRepository
                .loadUser(UniqueID.fromUniqueString(testUserUid)),
          ]);
        },
      );

      blocTest<SetupBloc, SetupState>(
        'emits [SessionsFailure.sessionNotUpdated] when userLoaded is added.',
        build: () => _setupBloc,
        act: (bloc) {
          when(() => _sessionsRepository.updateSession(testUser)).thenAnswer(
            (_) async => Err(const SessionsFailure.sessionNotUpdated()),
          );
          return bloc.add(SetupEvent.userLoaded(testUser));
        },
        expect: () => <SetupState>[
          const SetupState.failure(
            CoreFailure.sessions(SessionsFailure.sessionNotUpdated()),
          ),
        ],
        verify: (_) {
          verify(() => _sessionsRepository.updateSession(testUser)).called(1);
        },
      );
    });

    group('Completed -', () {
      blocTest<SetupBloc, SetupState>(
        'emits [SetupState.navigateToOnboarding] when appLaunched is added.',
        build: () => _setupBloc,
        act: (bloc) {
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(() => _authFacade.isAnonymous).thenReturn(true);
          when(_settingsRepository.fetchSettings)
              .thenAnswer((_) async => Ok(testSettings));
          when(_sessionsRepository.fetchSession).thenAnswer(
            (_) async => Err(const SessionsFailure.sessionNotFound()),
          );
          when(_sessionsRepository.createSession)
              .thenAnswer((_) async => Ok(unit));

          return bloc.add(const SetupEvent.appLaunched());
        },
        expect: () => <SetupState>[
          const SetupState.initial(),
          const SetupState.onboarding(),
        ],
        verify: (_) {
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            () => _authFacade.isAnonymous,
            _settingsRepository.fetchSettings,
            _sessionsRepository.fetchSession,
            _sessionsRepository.createSession,
          ]);
        },
      );

      blocTest<SetupBloc, SetupState>(
        'emits [SetupState.initHomeBloc] when appLaunched is added.',
        build: () => _setupBloc,
        act: (bloc) {
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(() => _authFacade.isAnonymous).thenReturn(true);
          when(_settingsRepository.fetchSettings)
              .thenAnswer((_) async => Ok(testSettings));
          when(_sessionsRepository.fetchSession)
              .thenAnswer((_) async => Ok(testUser));

          return bloc.add(const SetupEvent.appLaunched());
        },
        expect: () => <SetupState>[
          const SetupState.initial(),
          const SetupState.content(),
        ],
        verify: (_) {
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            () => _authFacade.isAnonymous,
            _settingsRepository.fetchSettings,
            _sessionsRepository.fetchSession,
            () => _authFacade.isAnonymous,
          ]);
        },
      );

      blocTest<SetupBloc, SetupState>(
        'emits [SetupState.initHomeBloc] when appLaunched is added.',
        build: () => _setupBloc,
        act: (bloc) {
          when(() => _authFacade.isLoggedIn).thenReturn(false);
          when(_authFacade.logInAnonymously).thenAnswer((_) async => Ok(unit));
          when(() => _authFacade.isAnonymous).thenReturn(false);
          when(_defaultCoversRepository.loadDefaultCoverURLs)
              .thenAnswer((_) async => Ok(testDefaultCovers));
          when(
            () => _defaultCoversRepository
                .cacheDefaultCoverURLs(testDefaultCovers),
          ).thenAnswer((_) async => Ok(unit));
          when(_settingsRepository.fetchSettings).thenAnswer(
            (_) async => Err(const SettingsFailure.settingsNotFound()),
          );
          when(_settingsRepository.initializeSettings)
              .thenAnswer((_) async => Ok(unit));
          when(_sessionsRepository.fetchSession)
              .thenAnswer((_) async => Ok(testUser));
          when(() => _userRepository.loadUser(testUser.uid))
              .thenAnswer((_) async => Ok(testUser));
          when(() => _sessionsRepository.updateSession(testUser))
              .thenAnswer((_) async => Ok(unit));

          return bloc.add(const SetupEvent.appLaunched());
        },
        expect: () => <SetupState>[
          const SetupState.initial(),
          const SetupState.content(),
        ],
        verify: (_) {
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            _authFacade.logInAnonymously,
            () => _authFacade.isAnonymous,
            _defaultCoversRepository.loadDefaultCoverURLs,
            () => _defaultCoversRepository
                .cacheDefaultCoverURLs(testDefaultCovers),
            _settingsRepository.fetchSettings,
            _settingsRepository.initializeSettings,
            _sessionsRepository.fetchSession,
            () => _userRepository.loadUser(testUser.uid),
            () => _sessionsRepository.updateSession(testUser)
          ]);
        },
      );
    });
  });
}
