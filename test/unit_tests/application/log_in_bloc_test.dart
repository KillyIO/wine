import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/default_covers/i_default_covers_repository.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user_failure.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../../mocks/default_covers_mock.dart';
import '../../mocks/domain_mocks.dart';
import '../../mocks/sessions_mocks.dart';
import '../../mocks/user_mocks.dart';
import '../utils/constants.dart';

void main() {
  late IAuthFacade authFacade;
  late IDefaultCoversRepository defaultCoverRepository;
  late ISessionsRepository sessionsRepository;
  late IUserRepository userRepository;

  late LogInBloc logInBloc;

  setUp(() {
    authFacade = MockAuthFacade();
    defaultCoverRepository = MockDefaultCoversRepository();
    sessionsRepository = MockSessionsRepository();
    userRepository = MockUserRepository();

    logInBloc = LogInBloc(
      authFacade,
      defaultCoverRepository,
      sessionsRepository,
      userRepository,
    );

    registerFallbackValue(MockEmailAddress());
    registerFallbackValue(MockPassword());
    registerFallbackValue(MockUniqueID());
    registerFallbackValue(MockUser());
    registerFallbackValue(MockUsername());
  });

  tearDown(() {
    logInBloc.close();
  });

  group('LogInBloc -', () {
    blocTest<LogInBloc, LogInState>(
      'emits [] when instanciated.',
      build: () => logInBloc,
      expect: () => <LogInState>[],
    );

    group('Domain -', () {
      blocTest<LogInBloc, LogInState>(
        '''emits [EmailAddress("lphong.tieu.75@pickuplanet.com")] when emailChanged is added.''',
        build: () => logInBloc,
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
        build: () => logInBloc,
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
        build: () => logInBloc,
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
            () => authFacade.logInWithEmailAndPassword(any(), any()),
          );
        },
      );

      blocTest<LogInBloc, LogInState>(
        '''emits [AuthFailure.serverError] when logInWithEmailAndPasswordPressed is added.''',
        build: () => logInBloc,
        act: (bloc) {
          when(() => authFacade.logInWithEmailAndPassword(any(), any()))
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
          verify(() => authFacade.logInWithEmailAndPassword(any(), any()))
              .called(1);
        },
      );

      blocTest<LogInBloc, LogInState>(
        'emits [AuthFailure.serverError] when logInWithGooglePressed is added.',
        build: () => logInBloc,
        act: (bloc) {
          when(authFacade.logInWithGoogle)
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
          verify(authFacade.logInWithGoogle).called(1);
        },
      );

      blocTest<LogInBloc, LogInState>(
        '''emits [UserFailure.serverError] when loggedInWithEmailAndPassword is added.''',
        build: () => logInBloc,
        act: (bloc) {
          when(() => authFacade.isLoggedIn).thenReturn(true);
          when(authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option.some(testUser));
          when(() => userRepository.loadUser(any()))
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
            () => authFacade.isLoggedIn,
            authFacade.getLoggedInUser,
            () => userRepository.loadUser(any())
          ]);
        },
      );

      blocTest<LogInBloc, LogInState>(
        'emits [UserFailure.serverError] when loggedInWithGoogle is added.',
        build: () => logInBloc,
        act: (bloc) {
          when(() => authFacade.isLoggedIn).thenReturn(true);
          when(authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option.some(testUser));
          when(() => userRepository.loadUser(any()))
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
            () => authFacade.isLoggedIn,
            authFacade.getLoggedInUser,
            () => userRepository.loadUser(any())
          ]);
        },
      );

      blocTest<LogInBloc, LogInState>(
        '''emits [SesssionssFailure.sessionNotInserted] when userDetailsSaved is added.''',
        build: () => logInBloc,
        act: (bloc) {
          when(() => sessionsRepository.insertSession(any())).thenAnswer(
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
          verify(() => sessionsRepository.insertSession(any())).called(1);
        },
      );
    });

    group('Completed -', () {
      blocTest<LogInBloc, LogInState>(
        '''emits [failureOption: const None()] when logInWithEmailAndPasswordPressed is added.''',
        build: () => logInBloc,
        act: (bloc) {
          when(() => authFacade.logInWithEmailAndPassword(any(), any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => authFacade.isLoggedIn).thenReturn(true);
          when(authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option.some(testUser));
          when(() => userRepository.loadUser(any()))
              .thenAnswer((_) async => Ok(testUser));
          when(() => userRepository.saveDetailsFromUser(any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => sessionsRepository.insertSession(any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => authFacade.isAnonymous).thenReturn(false);
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
          verify(() => authFacade.logInWithEmailAndPassword(any(), any()))
              .called(1);
          verifyInOrder([
            () => authFacade.isLoggedIn,
            authFacade.getLoggedInUser,
            () => userRepository.saveDetailsFromUser(any())
          ]);
          verify(() => sessionsRepository.insertSession(any())).called(1);
        },
      );

      /// Check that the user is successfully loaded if it already exists.
      blocTest<LogInBloc, LogInState>(
        '''emits [failureOption: const None()] when logInWithGooglePressed is added [1].''',
        build: () => logInBloc,
        act: (bloc) {
          when(() => authFacade.logInWithGoogle())
              .thenAnswer((_) async => Ok(unit));
          when(() => authFacade.isLoggedIn).thenReturn(true);
          when(authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option.some(testUser));
          when(() => userRepository.loadUser(any()))
              .thenAnswer((_) async => Ok(testUser));
          when(() => userRepository.saveDetailsFromUser(any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => sessionsRepository.insertSession(any()))
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
          verify(() => authFacade.logInWithGoogle()).called(1);
          verifyInOrder([
            () => authFacade.isLoggedIn,
            authFacade.getLoggedInUser,
            () => userRepository.loadUser(any()),
            () => userRepository.saveDetailsFromUser(any())
          ]);
          verify(() => sessionsRepository.insertSession(any())).called(1);
        },
      );

      /// Check that if the user is not found (in the Users collection), it
      /// checks that if the username is available then proceed normally.
      blocTest<LogInBloc, LogInState>(
        '''emits [failureOption: const None()] when logInWithGooglePressed is added [2].''',
        build: () => logInBloc,
        act: (bloc) {
          when(() => authFacade.logInWithGoogle())
              .thenAnswer((_) async => Ok(unit));
          when(() => authFacade.isLoggedIn).thenReturn(true);
          when(authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option.some(testUser));
          when(() => userRepository.loadUser(any()))
              .thenAnswer((_) async => Err(const UserFailure.userNotFound()));
          when(() => userRepository.checkUsernameAvailability(any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => userRepository.saveUsername(any(), any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => userRepository.saveDetailsFromUser(any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => sessionsRepository.insertSession(any()))
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
          verify(() => authFacade.logInWithGoogle()).called(1);
          verifyInOrder([
            () => authFacade.isLoggedIn,
            authFacade.getLoggedInUser,
            () => userRepository.loadUser(any()),
            () => userRepository.checkUsernameAvailability(any()),
            () => userRepository.saveUsername(any(), any()),
            () => userRepository.saveDetailsFromUser(any())
          ]);
          verify(() => sessionsRepository.insertSession(any())).called(1);
        },
      );

      /// Check that if the user is not found (in the Users collection), it
      /// checks that if the username is not available then a username with a
      /// random seed is generated.
      blocTest<LogInBloc, LogInState>(
        '''emits [failureOption: const None()] when logInWithGooglePressed is added [3].''',
        build: () => logInBloc,
        act: (bloc) {
          when(() => authFacade.logInWithGoogle())
              .thenAnswer((_) async => Ok(unit));
          when(() => authFacade.isLoggedIn).thenReturn(true);
          when(authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option.some(testUser));
          when(() => userRepository.loadUser(any()))
              .thenAnswer((_) async => Err(const UserFailure.userNotFound()));
          when(() => userRepository.checkUsernameAvailability(any()))
              .thenAnswer(
            (_) async => Err(const UserFailure.usernameAlreadyInUse()),
          );
          when(() => userRepository.saveUsername(any(), any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => userRepository.saveDetailsFromUser(any()))
              .thenAnswer((_) async => Ok(unit));
          when(() => sessionsRepository.insertSession(any()))
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
          verify(() => authFacade.logInWithGoogle()).called(1);
          verifyInOrder([
            () => authFacade.isLoggedIn,
            authFacade.getLoggedInUser,
            () => userRepository.loadUser(any()),
            () => userRepository.checkUsernameAvailability(any()),
            () => userRepository.saveUsername(any(), any()),
            () => userRepository.saveDetailsFromUser(any())
          ]);
          verify(() => sessionsRepository.insertSession(any())).called(1);
        },
      );
    });
  });
}
