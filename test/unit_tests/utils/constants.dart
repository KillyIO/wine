// SECTION valid inputs
import 'package:firebase_core/firebase_core.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/username.dart';
import 'package:wine/domain/core/unique_id.dart';
import 'package:wine/domain/settings/settings.dart';
import 'package:wine/domain/user/user.dart';

const testConfirmPasssword = '''wT-t"_fCznEH+tPMt7Y\$JB''';
const testEmailAddress = 'lphong.tieu.75@pickuplanet.com';
const testPassword = '''wT-t"_fCznEH+tPMt7Y\$JB''';
const testUid = '73488ab6-8db0-11eb-8dcd-0242ac130003';
const testUsername = 'lphong.tieu.75';
const testName = 'Lphong Tieu 75';

const testEmpty = '';

const testGenre = 'horror';
const testGenreOptional = 'action';

const testLanguage = 'fr';

const testSubtitle = 'this is a subtitle';
const testInvalidSubtitleTooLong =
    'this is a subtitle too long and should cause an error in the app';

const testCoverURL = 'https://storage.com/example-bucket/cover.jpeg';
const testCoverPath = '/path/cover.jpeg';
const testInvalidCoverURL =
    'http:storage.invalid.com/example-bucket/cover.jpeg';
const testInvalidCoverURLExtension =
    'https://storage.com/example-bucket/cover.pdf';
const testInvalidCoverPath = '///invalid/path//cover.jpeg';

// SECTION Default Covers
const testDefaultCovers = {
  'key': 'key',
  'coverURL': 'coverURL',
};

// SECTION Settings
const testSettings = Settings(
  enableChaptersBookmarksCount: false,
  enableChaptersLikesCount: false,
  enableChaptersViewsCount: false,
  enableSeriesBookmarksCount: false,
  enableSeriesLikesCount: false,
  enableSeriesViewsCount: false,
);
final testSettingsAsMap = {
  'enableChaptersBookmarksCount': false,
  'enableChaptersLikesCount': false,
  'enableChaptersViewsCount': false,
  'enableSeriesBookmarksCount': false,
  'enableSeriesLikesCount': false,
  'enableSeriesViewsCount': false,
};

const testSessionAnonymous = {};
final testUser = User(
  emailAddress: EmailAddress(testEmailAddress),
  uid: UniqueID.fromUniqueString(testUid),
  username: Username(testEmailAddress.split('@').first),
);
final testUserAsMap = {
  'emailAddress': testEmailAddress,
  'uid': testUid,
  'username': testEmailAddress.split('@').first,
};

// SECTION invalid inputs
const testInvalidEmailAddress = 'lphong.tieu.75pickuplanet.com';
const testInvalidPassword = '123456';
const testInvalidConfirmPasssword = '456789';
const testInvalidUid = '';
const testInvalidUsername = '';

// SECTION: Exceptions
final testUnexpected = Exception();

// SECTION: FirebaseException
final testEmailAlreadyinUserException = FirebaseException(
  plugin: 'auth',
  message: 'Email already in use.',
  code: 'email-already-in-use',
);

final testInvalidEmailPasswordCombination = FirebaseException(
  plugin: 'auth',
  message: 'Invalid email/password combination',
  code: 'user-not-found',
);

final testCredentialInUse = FirebaseException(
  plugin: 'auth',
  message: 'Credential already in use!',
  code: 'credential-already-in-use',
);

final testRandomServerException = FirebaseException(
  plugin: 'server',
  message: 'Not handled Firebase exception',
);
