import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/auth/confirm_password.dart';
import 'package:wine/domain/core/failures.dart';

void main() {
  group('ConfirmPassword -', () {
    test(
      'When input And/Or input2 null Then throw AssertionError',
      () {
        expect(
          () => ConfirmPassword(null, null),
          throwsAssertionError,
        );
      },
    );

    test(
      'When input And input2 valid And input equal input2 Then return input',
      () {
        final password =
            ConfirmPassword(':TA..2Qjp{+kRp#R', ':TA..2Qjp{+kRp#R');

        expect(
          password.value,
          right(':TA..2Qjp{+kRp#R'),
        );
      },
    );

    test(
      'When input invalid Then return ValueFailure invalidPassword',
      () {
        final password = ConfirmPassword('myname123', ':TA..2Qjp{+kRp#R');

        expect(
          password.value,
          left(const ValueFailure<String>.invalidPassword(
            failedValue: 'myname123',
          )),
        );
      },
    );

    test(
      '''When input valid BUT not equal input2 Then return ValueFailure invalidConfirmPassword''',
      () {
        final password =
            ConfirmPassword(':TA..2Qjp{+kRp#R', ':TB..2Qjp{+kRp#R');

        expect(
          password.value,
          left(const ValueFailure<String>.invalidConfirmPassword(
            failedValue: ':TA..2Qjp{+kRp#R',
          )),
        );
      },
    );
  });
}
