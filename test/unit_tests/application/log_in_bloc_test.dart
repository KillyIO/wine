import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rustic/option.dart';
import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/application/log_in/log_in_bloc.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/core/core_failure.dart';
import 'package:wine/domain/sessions/i_sessions_repository.dart';
import 'package:wine/domain/sessions/sessions_failure.dart';
import 'package:wine/domain/user/i_user_repository.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/domain/user/user_failure.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../../mocks/domain_mocks.dart';
import '../../mocks/sessions_mocks.dart';
import '../../mocks/user_mocks.dart';
import '../utils/constants.dart';

void main() {
  late IAuthFacade _authFacade;
  late ISessionsRepository _sessionsRepository;
  late IUserRepository _userRepository;

  late LogInBloc _logInBloc;

  setUp(() {
    _authFacade = MockAuthFacade();
    _sessionsRepository = MockSessionsRepository();
    _userRepository = MockUserRepository();

    _logInBloc = LogInBloc(
      _authFacade,
      _sessionsRepository,
      _userRepository,
    );

    registerFallbackValue<EmailAddress>(MockEmailAddress());
    registerFallbackValue<Password>(MockPassword());
    registerFallbackValue<User>(MockUser());
  });

  tearDown(() {
    _logInBloc.close();
  });

  group('LogInBloc -', () {
    blocTest(
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
            isProcessing: false,
            password: Password(''),
            showErrorMessages: false,
          ),
        ],
      );

      blocTest<LogInBloc, LogInState>(
        '''emits [Password("wT-t"_fCznEH+tPMt7Y\$JB")] when passwordChanged is added.''',
        build: () => _logInBloc,
        act: (bloc) => bloc.add(const LogInEvent.passwordChanged(testPassword)),
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const None(),
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
              .thenAnswer((_) async => const Err(AuthFailure.serverError()));
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
            isProcessing: true,
            password: Password(testPassword),
            showErrorMessages: false,
          ),
          LogInState(
            emailAddress: EmailAddress(testEmailAddress),
            failureOption:
                const Some(Err(CoreFailure.auth(AuthFailure.serverError()))),
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
              .thenAnswer((_) async => const Err(AuthFailure.serverError()));
          return bloc.add(const LogInEvent.logInWithGooglePressed());
        },
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const None(),
            isProcessing: true,
            password: Password(''),
            showErrorMessages: false,
          ),
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption:
                const Some(Err(CoreFailure.auth(AuthFailure.serverError()))),
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
        'emits [UserFailure.serverError] when loggedIn is added.',
        build: () => _logInBloc,
        act: (bloc) {
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(_authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option(testUser));
          when(() => _userRepository.saveDetailsFromUser(any()))
              .thenAnswer((_) async => const Err(UserFailure.serverError()));
          return bloc.add(const LogInEvent.loggedIn());
        },
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption:
                const Some(Err(CoreFailure.user(UserFailure.serverError()))),
            isProcessing: false,
            password: Password(''),
            showErrorMessages: true,
          )
        ],
        verify: (_) {
          verifyInOrder([
            () => _authFacade.isLoggedIn,
            _authFacade.getLoggedInUser,
            () => _userRepository.saveDetailsFromUser(any())
          ]);
        },
      );

      blocTest<LogInBloc, LogInState>(
        '''emits [SesssionssFailure.sessionNotUpdated] when userDetailsSaved is added.''',
        build: () => _logInBloc,
        act: (bloc) {
          when(() => _sessionsRepository.updateSession(any())).thenAnswer(
            (_) async => const Err(SessionsFailure.sessionNotUpdated()),
          );
          return bloc.add(LogInEvent.userDetailsSaved(testUser));
        },
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const Some(
              Err(CoreFailure.sessions(SessionsFailure.sessionNotUpdated())),
            ),
            isProcessing: false,
            password: Password(''),
            showErrorMessages: true,
          )
        ],
        verify: (_) {
          verify(() => _sessionsRepository.updateSession(any())).called(1);
        },
      );
    });

    group('Completed -', () {
      blocTest<LogInBloc, LogInState>(
        '''emits [failureOption: const None()] when logInWithEmailAndPasswordPressed is added.''',
        build: () => _logInBloc,
        act: (bloc) {
          when(() => _authFacade.logInWithEmailAndPassword(any(), any()))
              .thenAnswer((_) async => const Ok(Unit()));
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(_authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option(testUser));
          when(() => _userRepository.saveDetailsFromUser(any()))
              .thenAnswer((_) async => const Ok(Unit()));
          when(() => _sessionsRepository.updateSession(any()))
              .thenAnswer((_) async => const Ok(Unit()));
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
            isProcessing: true,
            password: Password(testPassword),
            showErrorMessages: false,
          ),
          LogInState(
            emailAddress: EmailAddress(testEmailAddress),
            failureOption: const None(),
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
          verify(() => _sessionsRepository.updateSession(any())).called(1);
        },
      );

      blocTest<LogInBloc, LogInState>(
        '''emits [failureOption: const None()] when logInWithGooglePressed is added.''',
        build: () => _logInBloc,
        act: (bloc) {
          when(() => _authFacade.logInWithGoogle())
              .thenAnswer((_) async => const Ok(Unit()));
          when(() => _authFacade.isLoggedIn).thenReturn(true);
          when(_authFacade.getLoggedInUser)
              .thenAnswer((_) async => Option(testUser));
          when(() => _userRepository.saveDetailsFromUser(any()))
              .thenAnswer((_) async => const Ok(Unit()));
          when(() => _sessionsRepository.updateSession(any()))
              .thenAnswer((_) async => const Ok(Unit()));
          when(() => _authFacade.isAnonymous).thenReturn(false);
          return bloc.add(const LogInEvent.logInWithGooglePressed());
        },
        expect: () => <LogInState>[
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const None(),
            isProcessing: true,
            password: Password(''),
            showErrorMessages: false,
          ),
          LogInState(
            emailAddress: EmailAddress(''),
            failureOption: const None(),
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
            () => _userRepository.saveDetailsFromUser(any())
          ]);
          verify(() => _sessionsRepository.updateSession(any())).called(1);
        },
      );
    });
  });
}
