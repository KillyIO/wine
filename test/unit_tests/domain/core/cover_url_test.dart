import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/core/cover_url.domain.dart';
import 'package:wine/core/value_failure.domain.dart';

import '../../utils/constants.dart';

class MockFile extends Mock implements File {
  @override
  String get path => testCoverPath;
}

void main() {
  group('CoverURL -', () {
    test('When input URL Then return input', () {
      final coverURL = CoverURL(testCoverURL);

      expect(
        coverURL.value,
        Ok<String, ValueFailure<String>>(testCoverURL),
      );
    });

    test('When input not URL Then return invalidCoverURL', () {
      final coverURL = CoverURL(testInvalidCoverURL);

      expect(
        coverURL.value,
        Err<String, ValueFailure<String>>(
          const ValueFailure.invalidCoverURL(testInvalidCoverURL),
        ),
      );
    });

    group('fromFile -', () {
      // No test coz can't mock File without passing it as parameter
    });
  });
}
