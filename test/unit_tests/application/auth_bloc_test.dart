import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';

import '../../mocks/auth_facade_mocks.dart';

void main() {
  late IAuthFacade _authFacade;

  late AuthBloc _authBloc;

  setUp(() {
    _authFacade = MockAuthFacade();

    _authBloc = AuthBloc(_authFacade);
  });

  tearDown(() {
    _authBloc.close();
  });

  group('AuthBloc -', () {
    blocTest<AuthBloc, AuthState>(
      'emits [] when instanciated.',
      build: () => _authBloc,
      expect: () => <AuthState>[],
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.anonymous] when authChanged is added 1.',
      build: () => _authBloc,
      act: (bloc) {
        when(() => _authFacade.isLoggedIn).thenReturn(true);
        when(() => _authFacade.isAnonymous).thenReturn(true);
        return bloc.add(const AuthEvent.authChanged());
      },
      expect: () => <AuthState>[const AuthState.anonymous()],
      verify: (_) {
        verify(() => _authFacade.isLoggedIn).called(1);
        verify(() => _authFacade.isAnonymous).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.anonymous] when authChanged is added 2.',
      build: () => _authBloc,
      act: (bloc) {
        when(() => _authFacade.isLoggedIn).thenReturn(false);
        when(() => _authFacade.isAnonymous).thenReturn(false);
        return bloc.add(const AuthEvent.authChanged());
      },
      expect: () => <AuthState>[const AuthState.anonymous()],
      verify: (_) {
        verify(() => _authFacade.isLoggedIn).called(1);
        verifyNever(() => _authFacade.isAnonymous);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.authenticated] when authChanged is added.',
      build: () => _authBloc,
      act: (bloc) {
        when(() => _authFacade.isLoggedIn).thenReturn(true);
        when(() => _authFacade.isAnonymous).thenReturn(false);
        return bloc.add(const AuthEvent.authChanged());
      },
      expect: () => <AuthState>[const AuthState.authenticated()],
      verify: (_) {
        verify(() => _authFacade.isLoggedIn).called(1);
        verify(() => _authFacade.isAnonymous).called(1);
      },
    );
  });
}
