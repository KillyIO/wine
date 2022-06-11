import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/user.dart';
import 'package:wine/features/auth/email_address.domain.dart';
import 'package:wine/features/auth/username.fomain.dart';

import '../../utils/constants.dart';

void main() {
  group('User -', () {
    test('When args valid Then return User', () {
      final user = User(
        emailAddress: EmailAddress(testEmailAddress),
        uid: UniqueID.fromUniqueString(testUserUid),
        username: Username(testUsername),
      );

      expect(user.emailAddress.getOrCrash(), testEmailAddress);
      expect(user.uid.getOrCrash(), testUserUid);
      expect(user.username.getOrCrash(), testUsername);
    });
  });
}
