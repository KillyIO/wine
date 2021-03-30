import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('Password -', () {
    test(
      'When input null Then throw AssertionError',
      () {
        expect(
          () => Password(null),
          throwsAssertionError,
        );
      },
    );

    test(
      'When input valid Then return input',
      () {
        final password = Password(testPassword);

        expect(password.value, right(testPassword));
      },
    );

    test(
      'When input invalid The return invalidPassword',
      () {
        final password = Password(testInvalidPassword);

        expect(
          password.value,
          left(const ValueFailure<String>.invalidPassword(testInvalidPassword)),
        );
      },
    );
  });
}
