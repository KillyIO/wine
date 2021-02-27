import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/failures.dart';

void main() {
  group('Username -', () {
    test(
      'When input is null Then throw AssertionError',
      () {
        expect(
          () => Username(null),
          throwsAssertionError,
        );
      },
    );

    test(
      'When input is valid Then return input',
      () {
        final username = Username('holly.molly');

        expect(
          username.value,
          right('holly.molly'),
        );
      },
    );

    test(
      'When input is invalid The return ValueFailure invalidUsername',
      () {
        final username = Username('');

        expect(
          username.value,
          left(const ValueFailure<String>.invalidUsername(
            failedValue: '',
          )),
        );
      },
    );
  });
}
