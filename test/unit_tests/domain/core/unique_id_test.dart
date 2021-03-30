import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('UniqueID -', () {
    test(
      'When call constructor Then return instance with value',
      () {
        final uid = UniqueID();

        expect(uid.getOrCrash(), isA<String>());
        expect(uid.getOrCrash(), isNotEmpty);
      },
    );

    group('fromUniqueString -', () {
      test(
        'When input null Then throw AssertionError',
        () {
          expect(
            () => UniqueID.fromUniqueString(null),
            throwsAssertionError,
          );
        },
      );

      test(
        'When input valid Then return input',
        () {
          final uid = UniqueID.fromUniqueString(testUid);

          expect(uid.getOrCrash(), testUid);
        },
      );

      test(
        'When input invalid Then return invalidUniqueID',
        () {
          final uid = UniqueID.fromUniqueString(testInvalidUid);

          expect(
            uid.value,
            left(const ValueFailure<String>.invalidUniqueID(testInvalidUid)),
          );
        },
      );
    });
  });
}
