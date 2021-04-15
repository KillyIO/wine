import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

class MockFile extends Mock implements File {
  @override
  String get path => testCoverPath;
}

void main() {
  group('CoverURL -', () {
    test('When input null Then throw AssertionError', () {
      expect(
        () => CoverURL(null),
        throwsAssertionError,
      );
    });

    test('When input URL Then return input', () {
      final coverURL = CoverURL(testCoverURL);

      expect(coverURL.value, right(testCoverURL));
    });

    test('When input not image Then return invalidCoverURL', () {
      final coverURL = CoverURL(testInvalidCoverURLExtension);

      expect(
        coverURL.value,
        left(const ValueFailure.invalidCoverURL(testInvalidCoverURLExtension)),
      );
    });

    test('When input not URL Then return invalidCoverURL', () {
      final coverURL = CoverURL(testInvalidCoverURL);

      expect(
        coverURL.value,
        left(const ValueFailure.invalidCoverURL(testInvalidCoverURL)),
      );
    });

    group('fromFile -', () {
      File file;

      setUp(() {
        file = MockFile();
      });

      test('When file null Then return AssertionError', () {
        expect(
          () => CoverURL.fromFile(null),
          throwsAssertionError,
        );
      });

      test('When file exists Then return file', () {
        when(file.existsSync).thenReturn(true);

        final coverURL = CoverURL.fromFile(file);

        expect(coverURL.value, right(file));
      });

      test('When file not exists Then return invalidCoverFile', () {
        when(file.existsSync).thenReturn(false);

        final coverURL = CoverURL.fromFile(file);

        expect(coverURL.value, left(ValueFailure.invalidCoverFile(file)));
      });
    });
  });
}
