import 'package:flutter_test/flutter_test.dart';
import 'package:rustic/result.dart';
import 'package:wine/domain/auth/confirm_password.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('ConfirmPassword -', () {
    test(
      'When inputs valid And inputs equal Then return input',
      () {
        final password = ConfirmPassword(testPassword, testPassword);

        expect(
          password.value,
          const Ok<String, ValueFailure<String>>(testPassword),
        );
      },
    );

    test(
      'When input invalid Then return invalidPassword',
      () {
        final password = ConfirmPassword(testInvalidPassword, testPassword);

        expect(
          password.value,
          const Err<String, ValueFailure<String>>(
            ValueFailure<String>.invalidPassword(testInvalidPassword),
          ),
        );
      },
    );

    test(
      'When inputs valid BUT not equal Then return invalidConfirmPassword',
      () {
        final password =
            ConfirmPassword(testPassword, testInvalidConfirmPasssword);

        expect(
          password.value,
          const Err<String, ValueFailure<String>>(
            ValueFailure<String>.invalidConfirmPassword(testPassword),
          ),
        );
      },
    );
  });
}
