import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/features/auth/auth_bloc/auth_bloc.application.dart';
import 'package:wine/features/auth/i_auth_facade.domain.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../utils/constants.dart';

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
      'emits [AuthState.anonymous] when authChanged is added.',
      build: () => _authBloc,
      act: (bloc) {
        when(() => _authFacade.authStateChanges)
            .thenAnswer((_) => Stream.fromIterable([Option.none()]));
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
            .thenAnswer((_) => Stream.fromIterable([Option.some(testUser)]));
        return bloc.add(const AuthEvent.authChanged());
      },
      expect: () => <AuthState>[const AuthState.authenticated()],
      verify: (_) {
        verify(() => _authFacade.authStateChanges).called(1);
      },
    );
  });
}
