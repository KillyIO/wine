import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('EmailAddress -', () {
    test(
      'When input valid Then return input',
      () {
        final emailAddress = EmailAddress(testEmailAddress);

        expect(
          emailAddress.value,
          Ok<String, ValueFailure<String>>(testEmailAddress),
        );
      },
    );

    test(
      'When input invalid Then return invalidEmailAddress',
      () {
        final emailAddress = EmailAddress(testInvalidEmailAddress);

        expect(
          emailAddress.value,
          Err<String, ValueFailure<String>>(
            const ValueFailure<String>.invalidEmailAddress(
              testInvalidEmailAddress,
            ),
          ),
        );
      },
    );
  });
}
