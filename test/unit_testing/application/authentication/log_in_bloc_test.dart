import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:string_validator/string_validator.dart';
import 'package:wine/application/authentication/log_in/log_in_bloc.dart';
import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/i_authentication_facade.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/core/value_validators.dart';
import 'package:wine/domain/models/user.dart';
import 'package:wine/domain/session/i_session_facade.dart';
import 'package:wine/domain/user/i_user_facade.dart';
import 'package:wine/infrastructure/authentication/firebase_authentication_facade.dart';
import 'package:wine/infrastructure/session/hive_session_facade.dart';
import 'package:wine/infrastructure/user/firebase_user_database_facade.dart';

import '../../../mocks/facade_mocks.dart';
import '../../../mocks/firebase_auth_mocks.dart';
import '../../../mocks/firebase_firestore_mocks.dart';
import '../../../mocks/function_mocks.dart';
import '../../../mocks/google_sign_in_mocks.dart';
import '../../../mocks/hive_mocks.dart';
import '../../../mocks/value_object_mocks.dart';
import '../../../utils/constants.dart';

void main() {
  User user;
  LogInBloc logInBloc;

  MockHiveInterface mockHiveInterface;
  MockSessionsBox mockSessionsBox;
  MockFirestore mockFirestore;

  IAuthenticationFacade mockAuthenticationFacade;
  ISessionFacade mockSessionFacade;
  IUserFacade mockUserFacade;

  final Either<ValueFailure<String>, String> Function(String)
      mockValidateEmailAddress = MockValidateEmailAddress();

  setUp(() {
    user = User(
      isBanned: false,
      isDeleted: false,
      banDeadline: null,
      createdAt: testTimeStamp,
      updatedAt: testTimeStamp,
      banReason: null,
      bio: null,
      deletionReason: null,
      email: testEmailValid,
      name: testName,
      profilePictureURL: null,
      uid: testUserUID,
      username: testUsernameValid,
    );

    mockHiveInterface = MockHiveInterface();
    mockSessionsBox = MockSessionsBox();

    mockFirestore = MockFirestore();

    mockAuthenticationFacade = MockAuthenticationFacade();
    mockSessionFacade = MockSessionFacade();
    mockUserFacade = MockUserFacade();

    logInBloc = LogInBloc(
      mockAuthenticationFacade,
      mockSessionFacade,
      mockUserFacade,
    );

    when(mockHiveInterface.openBox(any))
        .thenAnswer((_) async => mockSessionsBox);
  });

  tearDown(() {
    logInBloc.close();
  });

  group('LogInBloc', () {
    test(
      'When instanciated Then state default',
      () {
        expect(
          logInBloc.state,
          LogInState(
            authenticationOption: none(),
            emailAddress: EmailAddress(''),
            isProcessing: false,
            password: Password(''),
            sessionOption: none(),
            showErrorMessages: false,
            userOption: none(),
          ),
        );
      },
    );

    group('emailChanged', () {
      blocTest(
        'When emailAddress invalid Then emailAddress == ValueFailure',
        build: () {
          when(mockValidateEmailAddress(any)).thenReturn(left(
            const ValueFailure.invalidEmailAddress(
              failedValue: testEmailInvalid,
            ),
          ));
          return logInBloc;
        },
        act: (bloc) => bloc.add(
          const LogInEvent.emailChanged(testEmailInvalid),
        ),
        expect: [
          LogInState(
            authenticationOption: none(),
            emailAddress: EmailAddress(testEmailInvalid),
            isProcessing: false,
            password: Password(''),
            sessionOption: none(),
            showErrorMessages: false,
            userOption: none(),
          ),
        ],
      );

      blocTest(
        'When emailAddress valid Then emailAddress == testEmailValid',
        build: () => logInBloc,
        act: (bloc) => bloc.add(
          const LogInEvent.emailChanged(testEmailValid),
        ),
        expect: [
          LogInState(
            authenticationOption: none(),
            emailAddress: EmailAddress(testEmailValid),
            isProcessing: false,
            password: Password(''),
            sessionOption: none(),
            showErrorMessages: false,
            userOption: none(),
          ),
        ],
      );
    });

    group('passwordChanged', () {
      blocTest(
        'When password invalid Then password == ValueFailure',
        build: () => logInBloc,
        act: (bloc) => bloc.add(
          const LogInEvent.passwordChanged(testPasswordInvalid),
        ),
        expect: [
          LogInState(
            authenticationOption: none(),
            emailAddress: EmailAddress(''),
            isProcessing: false,
            password: Password(testPasswordInvalid),
            sessionOption: none(),
            showErrorMessages: false,
            userOption: none(),
          ),
        ],
      );

      blocTest(
        'When password valid Then password == testPasswordValid',
        build: () => logInBloc,
        act: (bloc) => bloc.add(
          const LogInEvent.passwordChanged(testPasswordValid),
        ),
        expect: [
          LogInState(
            authenticationOption: none(),
            emailAddress: EmailAddress(''),
            isProcessing: false,
            password: Password(testPasswordValid),
            sessionOption: none(),
            showErrorMessages: false,
            userOption: none(),
          ),
        ],
      );
    });

    group('signedIn', () {
      blocTest(
        'When user details saved Then yield userOption right(User)',
        build: () {
          when(mockUserFacade.saveDetailsFromUser(any))
              .thenAnswer((_) async => right(user));
          return logInBloc;
        },
        act: (bloc) => bloc.add(LogInEvent.signedIn(user)),
        expect: [
          LogInState(
            authenticationOption: none(),
            emailAddress: EmailAddress(testEmailValid),
            isProcessing: false,
            password: Password(testPasswordValid),
            sessionOption: none(),
            showErrorMessages: false,
            userOption: none(),
          ),
          LogInState(
            authenticationOption: none(),
            emailAddress: EmailAddress(testEmailValid),
            isProcessing: false,
            password: Password(testPasswordValid),
            sessionOption: none(),
            showErrorMessages: false,
            userOption: optionOf(right(user)),
          ),
        ],
      );
    });

    group('signInWithEmailAndPasswordPressed', () {});

    group('signInWithGooglePressed', () {});

    group('userDetailsSaved', () {});
  });
}
