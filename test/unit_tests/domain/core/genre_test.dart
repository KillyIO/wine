import 'package:flutter_test/flutter_test.dart';
import 'package:rustic/result.dart';
import 'package:wine/domain/core/genre.dart';
import 'package:wine/domain/core/value_failure.dart';

import '../../utils/constants.dart';

void main() {
  group('Genre -', () {
    test('When input valid Then return input', () {
      final genre = Genre(testGenre);

      expect(genre.value, const Ok<String, ValueFailure<String>>(testGenre));
    });

    test('When input empty And is optional Then return input', () {
      final genre = Genre(testEmpty, isOptional: true);

      expect(genre.value, const Ok<String, ValueFailure<String>>(testEmpty));
    });

    test('When input valid And is optional Then return input', () {
      final genre = Genre(testGenreOptional, isOptional: true);

      expect(
        genre.value,
        const Ok<String, ValueFailure<String>>(testGenreOptional),
      );
    });

    test(
      'When input empty And is not optional Then return emptySelection',
      () {
        final genre = Genre(testEmpty);

        expect(
          genre.value,
          const Err<String, ValueFailure<String>>(
            ValueFailure<String>.emptySelection(testEmpty),
          ),
        );
      },
    );
  });
}
