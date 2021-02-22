import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:wine/application/authentication/log_in/log_in_bloc.dart';
import 'package:wine/domain/authentication/email_address.dart';
import 'package:wine/domain/authentication/password.dart';
import 'package:wine/domain/core/failures.dart';
import 'package:wine/domain/session/i_session_facade.dart';
import 'package:wine/domain/user/i_user_facade.dart';
import 'package:wine/infrastructure/authentication/firebase_authentication_facade.dart';
import 'package:wine/infrastructure/session/hive_session_facade.dart';
import 'package:wine/infrastructure/user/firebase_user_database_facade.dart';

import '../../../mocks/firebase_auth_mocks.dart';
import '../../../mocks/firebase_firestore_mocks.dart';
import '../../../mocks/google_sign_in_mocks.dart';
import '../../../mocks/hive_mocks.dart';
import '../../../utils/constants.dart';

void main() {
  LogInBloc logInBloc;

  MockHiveInterface mockHiveInterface;
  MockSessionsBox mockSessionsBox;
  MockFirestore mockFirestore;

  ISessionFacade sessionFacade;
  IUserFacade userFacade;

  setUp(() {
    final authenticationFacade = FirebaseAuthenticationFacade(
      MockFirebaseAuth(),
      MockGoogleSignIn(),
      MockFirestore(),
    );

    mockHiveInterface = MockHiveInterface();
    mockSessionsBox = MockSessionsBox();

    sessionFacade = HiveSessionFacade(mockSessionsBox);

    mockFirestore = MockFirestore();
    userFacade = FirebaseUserFacade(mockFirestore);

    logInBloc = LogInBloc(authenticationFacade, sessionFacade, userFacade);

    when(mockHiveInterface.openBox(any))
        .thenAnswer((_) async => mockSessionsBox);
  });

  tearDown(() {
    logInBloc.close();
  });

  group('LogInBloc', () {
    test(
      'When created Then state is default value',
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
        'When email address invalid Then AssertError thrown',
        build: () => logInBloc,
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
    });
  });
}
