import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/core/failures.dart';

void main() {
  group('EmailAddress -', () {
    test(
      'When input is null Then throw AssertionError',
      () {
        expect(
          () => EmailAddress(null),
          throwsAssertionError,
        );
      },
    );

    test(
      'When input is valid Then return input',
      () {
        final emailAddress = EmailAddress('email@email.com');

        expect(
          emailAddress.value,
          right('email@email.com'),
        );
      },
    );

    test(
      'When input is invalid The return ValueFailure invalidEmailAddress',
      () {
        final emailAddress = EmailAddress('email.email.com');

        expect(
          emailAddress.value,
          left(const ValueFailure<String>.invalidEmailAddress(
            failedValue: 'email.email.com',
          )),
        );
      },
    );
  });
}
