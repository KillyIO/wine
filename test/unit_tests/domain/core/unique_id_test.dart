import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/core/unique_id.dart';

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
    });
  });
}
