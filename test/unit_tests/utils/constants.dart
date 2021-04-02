// SECTION valid inputs
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/user/user.dart';

const testConfirmPasssword = '''wT-t"_fCznEH+tPMt7Y\$JB''';
const testEmailAddress = 'lphong.tieu.75@pickuplanet.com';
const testPassword = '''wT-t"_fCznEH+tPMt7Y\$JB''';
const testUid = '73488ab6-8db0-11eb-8dcd-0242ac130003';
const testUsername = 'findingnemo';
const testName = 'Finding Nemo';

const testSettings = Settings(
  enableChaptersBookmarksCount: false,
  enableChaptersLikesCount: false,
  enableChaptersViewsCount: false,
  enableSeriesBookmarksCount: false,
  enableSeriesLikesCount: false,
  enableSeriesViewsCount: false,
);

const testSessionAnonymous = {};
final testUser = User(
  emailAddress: EmailAddress(testEmailAddress),
  uid: UniqueID.fromUniqueString(testUid),
  username: Username(testUsername),
);

// SECTION invalid inputs
const testInvalidEmailAddress = 'lphong.tieu.75pickuplanet.com';
const testInvalidPassword = '123456';
const testInvalidConfirmPasssword = '456789';
const testInvalidUid = '';
const testInvalidUsername = '';
