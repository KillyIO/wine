import 'package:flutter_test/flutter_test.dart';

import 'package:models/models.dart';

void main() {
  group('User -', () {
    group('instance -', () {
      test('When User is instanciated w/o args Then User is empty', () {
        final user = User();

        expect(user, isA<User>());
        expect(user.isEmpty, true);
      });
    });
  });
}
