import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/core/value_failure.domain.dart';
import 'package:wine/features/auth/confirm_password.domain.dart';

import '../../utils/constants.dart';

void main() {
  group('ConfirmPassword -', () {
    test(
      'When inputs valid And inputs equal Then return input',
      () {
        final password = ConfirmPassword(testPassword, testPassword);

        expect(
          password.value,
          Ok<String, ValueFailure<String>>(testPassword),
        );
      },
    );

    test(
      'When input invalid Then return invalidPassword',
      () {
        final password = ConfirmPassword(testInvalidPassword, testPassword);

        expect(
          password.value,
          Err<String, ValueFailure<String>>(
            const ValueFailure<String>.invalidPassword(testInvalidPassword),
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
          Err<String, ValueFailure<String>>(
            const ValueFailure<String>.invalidConfirmPassword(testPassword),
          ),
        );
      },
    );
  });
}
