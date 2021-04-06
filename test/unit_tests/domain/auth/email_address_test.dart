import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('EmailAddress -', () {
    test(
      'When input null Then throw AssertionError',
      () {
        expect(
          () => EmailAddress(null),
          throwsAssertionError,
        );
      },
    );

    test(
      'When input valid Then return input',
      () {
        final emailAddress = EmailAddress(testEmailAddress);

        expect(
          emailAddress.value,
          right(testEmailAddress),
        );
      },
    );

    test(
      'When input invalid Then return invalidEmailAddress',
      () {
        final emailAddress = EmailAddress(testInvalidEmailAddress);

        expect(
          emailAddress.value,
          left(const ValueFailure<String>.invalidEmailAddress(
            testInvalidEmailAddress,
          )),
        );
      },
    );
  });
}
