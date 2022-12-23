import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/application/auth/auth_bloc.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';

import '../../mocks/auth_facade_mocks.dart';
import '../utils/constants.dart';

void main() {
  late IAuthFacade authFacade;

  late AuthBloc authBloc;

  setUp(() {
    authFacade = MockAuthFacade();

    authBloc = AuthBloc(authFacade);
  });

  tearDown(() {
    authBloc.close();
  });

  group('AuthBloc -', () {
    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.anonymous] when authChanged is added.',
      build: () => authBloc,
      act: (bloc) {
        when(() => authFacade.authStateChanges)
            .thenAnswer((_) => Stream.fromIterable([Option.none()]));
        return bloc.add(const AuthEvent.authChanged());
      },
      expect: () => <AuthState>[const AuthState.anonymous()],
      verify: (_) {
        verify(() => authFacade.authStateChanges).called(1);
      },
    );

    blocTest<AuthBloc, AuthState>(
      'emits [AuthState.authenticated] when authChanged is added.',
      build: () => authBloc,
      act: (bloc) {
        when(() => authFacade.authStateChanges)
            .thenAnswer((_) => Stream.fromIterable([Option.some(testUser)]));
        return bloc.add(const AuthEvent.authChanged());
      },
      expect: () => <AuthState>[const AuthState.authenticated()],
      verify: (_) {
        verify(() => authFacade.authStateChanges).called(1);
      },
    );
  });
}
