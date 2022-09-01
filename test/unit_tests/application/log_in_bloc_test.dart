import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/features/auth/auth_failure.domain.dart';
import 'package:wine/features/auth/email_address.domain.dart';
import 'package:wine/features/auth/i_auth_facade.domain.dart';
import 'package:wine/features/auth/password.domain.dart';
import 'package:wine/features/default_covers/i_default_covers_repository.domain.dart';
import 'package:wine/features/log_in/log_in_bloc.application.dart';
import 'package:wine/features/sessions/i_sessions_repository.domain.dart';
import 'package:wine/features/sessions/sessions_failure.domain.dart';
import 'package:wine/features/user/i_user_repository.domain.dart';
import 'package:wine/features/user/user_failure.domain.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../../mocks/default_covers_mock.dart';
import '../../mocks/domain_mocks.dart';
import '../../mocks/sessions_mocks.dart';
import '../../mocks/user_mocks.dart';
import '../utils/constants.dart';

void main() {
  late IAuthFacade _authFacade;
  late IDefaultCoversRepository _defaultCoverRepository;
  late ISessionsRepository _sessionsRepository;
  late IUserRepository _userRepository;

  late LogInBloc _logInBloc;

  setUp(() {
    _authFacade = MockAuthFacade();
    _defaultCoverRepository = MockDefaultCoversRepository();
    _sessionsRepository = MockSessionsRepository();
    _userRepository = MockUserRepository();

    _logInBloc = LogInBloc(
      _authFacade,
      _defaultCoverRepository,
      _sessionsRepository,
      _userRepository,
    );

    registerFallbackValue(MockEmailAddress());
    registerFallbackValue(MockPassword());
    registerFallbackValue(MockUniqueID());
    registerFallbackValue(MockUser());
    registerFallbackValue(MockUsername());
  });

  tearDown(() {
    _logInBloc.close();
  });

  group('LogInBloc -', () {
    blocTest<LogInBloc, LogInState>(
      'emits [] when instanciated.',
      build: () => _logInBloc,
      expect: () => <LogInState>[],
    );

    group('Domain -', () {
      blocTest<LogInBloc, LogInState>(
        '''emits [EmailAddress("lphong.tieu.75@pickuplanet.com")] when emailChanged is added.''',
        build: () => _logInBloc,
        act: (bloc) =>
            bloc.add(const LogInEvent.emailAddressChanged(testEmailAddress)),
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(testEmailAddress),
            failureOption: const None(),
            isAuthenticated: false,
            isProcessing: false,
            password: Password(''),
            showErrorMessages: false,
          ),
        ],
      );

      blocTest<LogInBloc, LogInState>(
        r'''emits [Password("wT-t"_fCznEH+tPMt7Y$JB")] when passwordChanged is added.''',
        build: () => _logInBloc,
        act: (bloc) => bloc.add(const LogInEvent.passwordChanged(testPassword)),
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const None(),
            isAuthenticated: false,
            isProcessing: false,
            password: Password(testPassword),
            showErrorMessages: false,
          ),
        ],
      );
    });

    group('Errors -', () {
      blocTest<LogInBloc, LogInState>(
        '''emits [] when logInWithEmailAndPasswordPressed is added.''',
        build: () => _logInBloc,
        act: (bloc) {
          return bloc
            ..add(const LogInEvent.emailAddressChanged(testInvalidEmailAddress))
            ..add(const LogInEvent.passwordChanged(testInvalidPassword))
            ..add(const LogInEvent.logInWithEmailAndPasswordPressed());
        },
        skip: 2,
        expect: () => <LogInState>[],
        verify: (_) {
          verifyNever(
            () => _authFacade.logInWithEmailAndPassword(any(), any()),
          );
        },
      );

      blocTest<LogInBloc, LogInState>(
        '''emits [AuthFailure.serverError] when logInWithEmailAndPasswordPressed is added.''',
        build: () => _logInBloc,
        act: (bloc) {
          when(() => _authFacade.logInWithEmailAndPassword(any(), any()))
              .thenAnswer((_) async => Err(const AuthFailure.serverError()));
          return bloc
            ..add(const LogInEvent.emailAddressChanged(testEmailAddress))
            ..add(const LogInEvent.passwordChanged(testPassword))
            ..add(const LogInEvent.logInWithEmailAndPasswordPressed());
        },
        skip: 2,
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(testEmailAddress),
            failureOption: const None(),
            isAuthenticated: false,
            isProcessing: true,
            password: Password(testPassword),
            showErrorMessages: false,
          ),
          LogInState(
            emailAddress: EmailAddress(testEmailAddress),
            failureOption:
                Some(Err(const CoreFailure.auth(AuthFailure.serverError()))),
            isAuthenticated: false,
            isProcessing: false,
            password: Password(testPassword),
            showErrorMessages: true,
          )
        ],
        verify: (_) {
          verify(() => _authFacade.logInWithEmailAndPassword(any(), any()))
              .called(1);
        },
      );

      blocTest<LogInBloc, LogInState>(
        'emits [AuthFailure.serverError] when logInWithGooglePressed is added.',
        build: () => _logInBloc,
        act: (bloc) {
          when(_authFacade.logInWithGoogle)
              .thenAnswer((_) async => Err(const AuthFailure.serverError()));
          return bloc.add(const LogInEvent.logInWithGooglePressed());
        },
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const None(),
            isAuthenticated: false,
            isProcessing: true,
            password: Password(''),
            showErrorMessages: false,
          ),
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption:
                Some(Err(const CoreFailure.auth(AuthFailure.serverError()))),
            isAuthenticated: false,
            isProcessing: false,
            password: Password(''),
            showErrorMessages: true,
          )
        ],
        verify: (_) {
          verify(_authFacade.logInWithGoogle).called(1);
        },
      );

      blocTest<LogInBloc, LogInState>(
        '''emits [UserFailure.serverError] when loggedInWithEmailAndPassword is added.''',
        build: () => _logInBloc,
        act: (bloc) {
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(_authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option.some(testUser));
          when(() => _userRepository.loadUser(any()))
              .thenAnswer((_) async => Err(const UserFailure.serverError()));
          return bloc
            ..add(const LogInEvent.emailAddressChanged(testEmailAddress))
            ..add(const LogInEvent.passwordChanged(testPassword))
            ..add(const LogInEvent.loggedInWithEmailAndPassword());
        },
        skip: 2,
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(testEmailAddress),
            failureOption:
                Some(Err(const CoreFailure.user(UserFailure.serverError()))),
            isAuthenticated: false,
            isProcessing: false,
            password: Password(testPassword),
            showErrorMessages: true,
          )
        ],
        verify: (_) {
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            _authFacade.getLoggedInUser,
            () => _userRepository.loadUser(any())
          ]);
        },
      );

      blocTest<LogInBloc, LogInState>(
        'emits [UserFailure.serverError] when loggedInWithGoogle is added.',
        build: () => _logInBloc,
        act: (bloc) {
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(_authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option.some(testUser));
          when(() => _userRepository.loadUser(any()))
              .thenAnswer((_) async => Err(const UserFailure.serverError()));
          return bloc.add(const LogInEvent.loggedInWithGoogle());
        },
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption:
                Some(Err(const CoreFailure.user(UserFailure.serverError()))),
            isAuthenticated: false,
            isProcessing: false,
            password: Password(''),
            showErrorMessages: true,
          )
        ],
        verify: (_) {
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            _authFacade.getLoggedInUser,
            () => _userRepository.loadUser(any())
          ]);
        },
      );

      blocTest<LogInBloc, LogInState>(
        '''emits [SesssionssFailure.sessionNotInserted] when userDetailsSaved is added.''',
        build: () => _logInBloc,
        act: (bloc) {
          when(() => _sessionsRepository.insertSession(any())).thenAnswer(
            (_) async => Err(const SessionsFailure.sessionNotInserted()),
          );
          return bloc.add(LogInEvent.userDetailsSaved(testUser));
        },
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: Some(
              Err(
                const CoreFailure.sessions(
                  SessionsFailure.sessionNotInserted(),
                ),
              ),
            ),
            isAuthenticated: false,
            isProcessing: false,
            password: Password(''),
            showErrorMessages: true,
          )
        ],
        verify: (_) {
          verify(() => _sessionsRepository.insertSession(any())).called(1);
        },
      );
    });

    group('Completed -', () {
      blocTest<LogInBloc, LogInState>(
        '''emits [failureOption: const None()] when logInWithEmailAndPasswordPressed is added.''',
        build: () => _logInBloc,
        act: (bloc) {
          when(() => _authFacade.logInWithEmailAndPassword(any(), any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(_authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option.some(testUser));
          when(() => _userRepository.loadUser(any()))
              .thenAnswer((_) async => Ok(testUser));
          when(() => _userRepository.saveDetailsFromUser(any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => _sessionsRepository.insertSession(any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => _authFacade.isAnonymous).thenReturn(false);
          return bloc
            ..add(const LogInEvent.emailAddressChanged(testEmailAddress))
            ..add(const LogInEvent.passwordChanged(testPassword))
            ..add(const LogInEvent.logInWithEmailAndPasswordPressed());
        },
        skip: 2,
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(testEmailAddress),
            failureOption: const None(),
            isAuthenticated: false,
            isProcessing: true,
            password: Password(testPassword),
            showErrorMessages: false,
          ),
          LogInState(
            emailAddress: EmailAddress(testEmailAddress),
            failureOption: const None(),
            isAuthenticated: true,
            isProcessing: false,
            password: Password(testPassword),
            showErrorMessages: false,
          )
        ],
        verify: (_) {
          verify(() => _authFacade.logInWithEmailAndPassword(any(), any()))
              .called(1);
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            _authFacade.getLoggedInUser,
            () => _userRepository.saveDetailsFromUser(any())
          ]);
          verify(() => _sessionsRepository.insertSession(any())).called(1);
        },
      );

      /// Check that the user is successfully loaded if it already exists.
      blocTest<LogInBloc, LogInState>(
        '''emits [failureOption: const None()] when logInWithGooglePressed is added [1].''',
        build: () => _logInBloc,
        act: (bloc) {
          when(() => _authFacade.logInWithGoogle())
              .thenAnswer((_) async => Ok(unit));
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(_authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option.some(testUser));
          when(() => _userRepository.loadUser(any()))
              .thenAnswer((_) async => Ok(testUser));
          when(() => _userRepository.saveDetailsFromUser(any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => _sessionsRepository.insertSession(any()))
              .thenAnswer((_) async => Ok(unit));
          return bloc.add(const LogInEvent.logInWithGooglePressed());
        },
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const None(),
            isAuthenticated: false,
            isProcessing: true,
            password: Password(''),
            showErrorMessages: false,
          ),
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const None(),
            isAuthenticated: true,
            isProcessing: false,
            password: Password(''),
            showErrorMessages: false,
          )
        ],
        verify: (_) {
          verify(() => _authFacade.logInWithGoogle()).called(1);
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            _authFacade.getLoggedInUser,
            () => _userRepository.loadUser(any()),
            () => _userRepository.saveDetailsFromUser(any())
          ]);
          verify(() => _sessionsRepository.insertSession(any())).called(1);
        },
      );

      /// Check that if the user is not found (in the Users collection), it
      /// checks that if the username is available then proceed normally.
      blocTest<LogInBloc, LogInState>(
        '''emits [failureOption: const None()] when logInWithGooglePressed is added [2].''',
        build: () => _logInBloc,
        act: (bloc) {
          when(() => _authFacade.logInWithGoogle())
              .thenAnswer((_) async => Ok(unit));
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(_authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option.some(testUser));
          when(() => _userRepository.loadUser(any()))
              .thenAnswer((_) async => Err(const UserFailure.userNotFound()));
          when(() => _userRepository.checkUsernameAvailability(any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => _userRepository.saveUsername(any(), any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => _userRepository.saveDetailsFromUser(any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => _sessionsRepository.insertSession(any()))
              .thenAnswer((_) async => Ok(unit));
          return bloc.add(const LogInEvent.logInWithGooglePressed());
        },
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const None(),
            isAuthenticated: false,
            isProcessing: true,
            password: Password(''),
            showErrorMessages: false,
          ),
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const None(),
            isAuthenticated: true,
            isProcessing: false,
            password: Password(''),
            showErrorMessages: false,
          )
        ],
        verify: (_) {
          verify(() => _authFacade.logInWithGoogle()).called(1);
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            _authFacade.getLoggedInUser,
            () => _userRepository.loadUser(any()),
            () => _userRepository.checkUsernameAvailability(any()),
            () => _userRepository.saveUsername(any(), any()),
            () => _userRepository.saveDetailsFromUser(any())
          ]);
          verify(() => _sessionsRepository.insertSession(any())).called(1);
        },
      );

      /// Check that if the user is not found (in the Users collection), it
      /// checks that if the username is not available then a username with a
      /// random seed is generated.
      blocTest<LogInBloc, LogInState>(
        '''emits [failureOption: const None()] when logInWithGooglePressed is added [3].''',
        build: () => _logInBloc,
        act: (bloc) {
          when(() => _authFacade.logInWithGoogle())
              .thenAnswer((_) async => Ok(unit));
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(_authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option.some(testUser));
          when(() => _userRepository.loadUser(any()))
              .thenAnswer((_) async => Err(const UserFailure.userNotFound()));
          when(() => _userRepository.checkUsernameAvailability(any()))
              .thenAnswer(
            (_) async => Err(const UserFailure.usernameAlreadyInUse()),
          );
          when(() => _userRepository.saveUsername(any(), any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => _userRepository.saveDetailsFromUser(any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => _sessionsRepository.insertSession(any()))
              .thenAnswer((_) async => Ok(unit));
          return bloc.add(const LogInEvent.logInWithGooglePressed());
        },
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const None(),
            isAuthenticated: false,
            isProcessing: true,
            password: Password(''),
            showErrorMessages: false,
          ),
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const None(),
            isAuthenticated: true,
            isProcessing: false,
            password: Password(''),
            showErrorMessages: false,
          )
        ],
        verify: (_) {
          verify(() => _authFacade.logInWithGoogle()).called(1);
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            _authFacade.getLoggedInUser,
            () => _userRepository.loadUser(any()),
            () => _userRepository.checkUsernameAvailability(any()),
            () => _userRepository.saveUsername(any(), any()),
            () => _userRepository.saveDetailsFromUser(any())
          ]);
          verify(() => _sessionsRepository.insertSession(any())).called(1);
        },
      );
    });
  });
}
