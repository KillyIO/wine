import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/core/value_failure.dart';
import 'package:wine/domain/auth/password.dart';

import '../../utils/constants.dart';

void main() {
  group('Password -', () {
    test(
      'When input valid Then return input',
      () {
        final password = Password(testPassword);

        expect(
          password.value,
          Ok<String, ValueFailure<String>>(testPassword),
        );
      },
    );

    test(
      'When input invalid The return invalidPassword',
      () {
        final password = Password(testInvalidPassword);

        expect(
          password.value,
          Err<String, ValueFailure<String>>(
            const ValueFailure<String>.invalidPassword(testInvalidPassword),
          ),
        );
      },
    );
  });
}
