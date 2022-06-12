import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/features/core/unique_id.domain.dart';
import 'package:wine/features/core/value_failure.domain.dart';

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
        'When input valid Then return input',
        () {
          final uid = UniqueID.fromUniqueString(testUserUid);

          expect(uid.getOrCrash(), testUserUid);
        },
      );

      test(
        'When input invalid Then return invalidUniqueID',
        () {
          final uid = UniqueID.fromUniqueString(testInvalidUid);

          expect(
            uid.value,
            Err<String, ValueFailure<String>>(
              const ValueFailure<String>.invalidUniqueID(testInvalidUid),
            ),
          );
        },
      );
    });
  });
}
