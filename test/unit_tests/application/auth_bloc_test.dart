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
    blocTest(
      'When instantiating return nothing',
      build: () => _authBloc,
      expect: () => <AuthState>[],
    );

    blocTest(
      'When anonymous then yield Anonymous',
      build: () => _authBloc,
      act: (AuthBloc bloc) {
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

    blocTest(
      'When not logged in then yield Anonymous',
      build: () => _authBloc,
      act: (AuthBloc bloc) {
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

    blocTest(
      'When logged in And not anonymous then yield Authenticated',
      build: () => _authBloc,
      act: (AuthBloc bloc) {
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
