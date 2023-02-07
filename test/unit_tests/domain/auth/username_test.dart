import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('Username -', () {
    test(
      'When input valid Then return input',
      () {
        final username = Username(testUsername);

        expect(
          username.value,
          const Ok<String, ValueFailure<String>>(testUsername),
        );
      },
    );

    test(
      'When input invalid The return invalidUsername',
      () {
        final username = Username(testInvalidUsername);

        expect(
          username.value,
          const Err<String, ValueFailure<String>>(
            ValueFailure<String>.invalidUsername(testInvalidUsername),
          ),
        );
      },
    );
  });
}
