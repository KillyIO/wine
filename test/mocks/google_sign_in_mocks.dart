import 'package:google_sign_in/google_sign_in.dart';
import 'package:mocktail/mocktail.dart';

class MockGoogleSignIn extends Mock implements GoogleSignIn {}

class MockGoogleSignInAccount extends Mock implements GoogleSignInAccount {
  @override
  Future<GoogleSignInAuthentication> get authentication async =>
      MockGoogleSignInAuthentication();

  @override
  bool operator ==(other) {
    return (other is Mock)
        ? hashCode == other.hashCode
        : identical(this, other);
  }

  @override
  // ignore: unnecessary_overrides
  int get hashCode => super.hashCode;
}

class MockGoogleSignInAuthentication extends Mock
    implements GoogleSignInAuthentication {
  @override
  String get idToken => '118e6fe6-9537-11eb-a8b3-0242ac130003';

  @override
  String get accessToken => '16e2f7e6-9537-11eb-a8b3-0242ac130003';
}
