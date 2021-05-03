import 'package:flutter_test/flutter_test.dart';
import 'package:rustic/result.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('Password -', () {
    test(
      'When input valid Then return input',
      () {
        final password = Password(testPassword);

        expect(
          password.value,
          const Ok<String, ValueFailure<String>>(testPassword),
        );
      },
    );

    test(
      'When input invalid The return invalidPassword',
      () {
        final password = Password(testInvalidPassword);

        expect(
          password.value,
          const Err<String, ValueFailure<String>>(
            ValueFailure<String>.invalidPassword(testInvalidPassword),
          ),
        );
      },
    );
  });
}
