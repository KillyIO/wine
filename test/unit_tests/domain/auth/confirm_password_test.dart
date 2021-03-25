import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/auth/confirm_password.dart';
import 'package:wine/domain/core/value_failure.dart';

void main() {
  group('ConfirmPassword -', () {
    test('should return AssertionError if inputs null', () {
      expect(
        () => ConfirmPassword(null, null),
        throwsAssertionError,
      );
    });

    test('should return input if inputs valid and equal', () {
      final password = ConfirmPassword(':TA..2Qjp{+kRp#R', ':TA..2Qjp{+kRp#R');

      expect(
        password.value,
        right(':TA..2Qjp{+kRp#R'),
      );
    });

    test('should return ValueFailure.invalidPassword if one input invalid', () {
      final password = ConfirmPassword('myname123', ':TA..2Qjp{+kRp#R');

      expect(
        password.value,
        left(const ValueFailure<String>.invalidPassword('myname123')),
      );
    });

    test(
      'should return ValueFailure.invalidConfirmPassword if inputs not equal',
      () {
        final password =
            ConfirmPassword(':TA..2Qjp{+kRp#R', ':TB..2Qjp{+kRp#R');

        expect(
          password.value,
          left(const ValueFailure<String>.invalidConfirmPassword(
              ':TA..2Qjp{+kRp#R')),
        );
      },
    );
  });
}
