import 'package:rustic/option.dart';
import 'package:rustic/result.dart';
import 'package:rustic/tuple.dart';
import 'package:wine/domain/auth/auth_failure.dart';
import 'package:wine/domain/auth/email_address.dart';
import 'package:wine/domain/auth/password.dart';
import 'package:wine/domain/user/user.dart';

/// @nodoc
abstract class IAuthFacade {
  /// @nodoc
  Future<Result<Unit, AuthFailure>> convertWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  Future<Option<User>?> getLoggedInUser();

  /// @nodoc
  bool get isAnonymous;

  /// @nodoc
  bool get isLoggedIn;

  /// @nodoc
  Future<Result<Unit, AuthFailure>> logInAnonymously();

  /// @nodoc
  Future<Result<Unit, AuthFailure>> logInWithEmailAndPassword(
    EmailAddress emailAddress,
    Password password,
  );

  /// @nodoc
  Future<Result<Unit, AuthFailure>> logInWithGoogle();

  /// @nodoc
  Future<Result<Unit, AuthFailure>> logOut();

  /// @nodoc
  Future<Result<Unit, AuthFailure>> resendVerificationEmail();
}
