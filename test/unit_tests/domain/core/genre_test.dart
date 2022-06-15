import 'package:flutter_test/flutter_test.dart';
import 'package:oxidized/oxidized.dart';
import 'package:wine/core/genre.domain.dart';
import 'package:wine/core/value_failure.domain.dart';

import '../../utils/constants.dart';

void main() {
  group('Genre -', () {
    test('When input valid Then return input', () {
      final genre = Genre(testGenre);

      expect(genre.value, Ok<String, ValueFailure<String>>(testGenre));
    });

    test(
      'When input empty And is not optional Then return emptySelection',
      () {
        final genre = Genre(testEmpty);

        expect(
          genre.value,
          Err<String, ValueFailure<String>>(
            const ValueFailure<String>.emptySelection(testEmpty),
          ),
        );
      },
    );
  });
}
