import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/features/auth/username.fomain.dart';
import 'package:wine/core/value_failure.domain.dart';

import '../../utils/constants.dart';

void main() {
  group('Username -', () {
    test(
      'When input valid Then return input',
      () {
        final username = Username(testUsername);

        expect(
          username.value,
          Ok<String, ValueFailure<String>>(testUsername),
        );
      },
    );

    test(
      'When input invalid The return invalidUsername',
      () {
        final username = Username(testInvalidUsername);

        expect(
          username.value,
          Err<String, ValueFailure<String>>(
            const ValueFailure<String>.invalidUsername(testInvalidUsername),
          ),
        );
      },
    );
  });
}
