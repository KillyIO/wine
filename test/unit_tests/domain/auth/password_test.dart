import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/core/value_failure.dart';

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
        final password = Password(':TA..2Qjp{+kRp#R');

        expect(
          password.value,
          right(':TA..2Qjp{+kRp#R'),
        );
      },
    );

    test(
      'When input invalid The return ValueFailure invalidPassword',
      () {
        final password = Password('myname123');

        expect(
          password.value,
          left(const ValueFailure<String>.invalidPassword('myname123')),
        );
      },
    );
  });
}
