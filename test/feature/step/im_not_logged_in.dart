import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/i_auth_facade.dart';
import 'package:wine/injection.dart';

import '../../utils/injection_helper.dart';

Future<void> imNotLoggedIn(WidgetTester tester) async {
  await setupInjection();

  final auth = getIt<IAuthFacade>();
  when(() => auth.isLoggedIn).thenReturn(false);
  await tester.pump();
  when(auth.logInAnonymously)
      .thenAnswer((_) => Future.value(left(const AuthFailure.serverError())));
}
