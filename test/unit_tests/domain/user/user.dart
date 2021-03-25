import 'package:flutter_test/flutter_test.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/user/user.dart';

import '../../utils/constants.dart';

void main() {
  test('User - should return valid User', () {
    final user = User(
      emailAddress: EmailAddress(testEmailAddress),
      uid: UniqueID.fromUniqueString(testUid),
      username: Username(testUsername),
    );

    expect(user.emailAddress.getOrCrash(), testEmailAddress);
    expect(user.uid.getOrCrash(), testUid);
    expect(user.username.getOrCrash(), testUsername);
  });
}
