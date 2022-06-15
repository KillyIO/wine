import 'package:flutter_test/flutter_test.dart';
import 'package:wine/core/unique_id.domain.dart';
import 'package:wine/features/user/user.domain.dart';
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
