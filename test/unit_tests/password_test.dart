import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/core/failures.dart';

void main() {
  group('Password -', () {
    test(
      'When input is null Then throw AssertionError',
      () {
        expect(
          () => Password(null),
          throwsAssertionError,
        );
      },
    );

    test(
      'When input is valid Then return input',
      () {
        final password = Password(':TA..2Qjp{+kRp#R');

        expect(
          password.value,
          right(':TA..2Qjp{+kRp#R'),
        );
      },
    );

    test(
      'When input is invalid The return ValueFailure invalidPassword',
      () {
        final password = Password('myname123');

        expect(
          password.value,
          left(const ValueFailure<String>.invalidPassword(
            failedValue: 'myname123',
          )),
        );
      },
    );

    test(
      'When input equal input2 The return input2',
      () {
        final password = Password(':TA..2Qjp{+kRp#R', ':TA..2Qjp{+kRp#R');

        expect(
          password.value,
          right(':TA..2Qjp{+kRp#R'),
        );
      },
    );

    test(
      '''When input not equal input2 The return ValueFailure invalidConfirmPassword''',
      () {
        final password = Password(':TA..2Qjp{+kRp#R', 'd&VAy"^^t(5azgBQ');

        expect(
          password.value,
          left(const ValueFailure<String>.invalidConfirmPassword(
            failedValue: 'd&VAy"^^t(5azgBQ',
          )),
        );
      },
    );
  });
}
