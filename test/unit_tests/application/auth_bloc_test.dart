import 'package:bloc_test/bloc_test.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rustic/option.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../../mocks/firebase_auth_mocks.dart';
import '../utils/constants.dart';

void main() {
  late IAuthFacade _authFacade;

  late auth.User _firebaseUser;

  late AuthBloc _authBloc;

  setUp(() {
    _authFacade = MockAuthFacade();

    _firebaseUser = MockUser();

    _authBloc = AuthBloc(_authFacade);
  });

  tearDown(() {
    _authBloc.close();
  });

  group('AuthBloc -', () {
    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.anonymous] when authChanged is added 1.',
      build: () => _authBloc,
      act: (bloc) {
        when(() => _authFacade.authStateChanges)
            .thenAnswer((_) => Stream.fromIterable([Option(null)]));
        return bloc.add(const AuthEvent.authChanged());
      },
      expect: () => <AuthState>[const AuthState.anonymous()],
      verify: (_) {
        verify(() => _authFacade.authStateChanges).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.authenticated] when authChanged is added.',
      build: () => _authBloc,
      act: (bloc) {
        when(() => _authFacade.authStateChanges)
            .thenAnswer((_) => Stream.fromIterable([Option(testUser)]));
        return bloc.add(const AuthEvent.authChanged());
      },
      expect: () => <AuthState>[const AuthState.authenticated()],
      verify: (_) {
        verify(() => _authFacade.authStateChanges).called(1);
      },
    );
  });
}
