import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rustic/result.dart';
import 'package:wine/domain/core/cover_url.dart';
import 'package:wine/domain/core/value_failure.dart';

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
        const Ok<String, ValueFailure<String>>(testCoverURL),
      );
    });

    test('When input not image Then return invalidCoverURL', () {
      final coverURL = CoverURL(testInvalidCoverURLExtension);

      expect(
        coverURL.value,
        const Err<String, ValueFailure<String>>(
          ValueFailure.invalidCoverURL(testInvalidCoverURLExtension),
        ),
      );
    });

    test('When input not image Then return invalidCoverURL', () {
      final coverURL = CoverURL(testInvalidCoverURLExtension);

      expect(
        coverURL.value,
        const Err<String, ValueFailure<String>>(
          ValueFailure.invalidCoverURL(testInvalidCoverURLExtension),
        ),
      );
    });

    test('When input not URL Then return invalidCoverURL', () {
      final coverURL = CoverURL(testInvalidCoverURL);

      expect(
        coverURL.value,
        const Err<String, ValueFailure<String>>(
          ValueFailure.invalidCoverURL(testInvalidCoverURL),
        ),
      );
    });

    group('fromFile -', () {
      late File file;

      setUp(() {
        file = MockFile();
      });

      test('When file exists Then return file', () {
        when(file.existsSync).thenReturn(true);

        final coverURL = CoverURL.fromFile(file);

        expect(coverURL.value, Ok<File, ValueFailure<File>>(file));
      });

      test('When file not exists Then return invalidCoverFile', () {
        when(file.existsSync).thenReturn(false);

        final coverURL = CoverURL.fromFile(file);

        expect(
          coverURL.value,
          Err<File, ValueFailure<File>>(
            ValueFailure.invalidCoverFile(file),
          ),
        );
      });
    });
  });
}
