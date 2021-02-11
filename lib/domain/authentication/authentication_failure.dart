import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failure.freezed.dart';

/// @nodoc
@freezed
abstract class AuthenticationFailure with _$AuthenticationFailure {
  /// @nodoc
  const factory AuthenticationFailure.cancelledByUserFailure() =
      CancelledByUserFailure;

  /// @nodoc
  const factory AuthenticationFailure.emailAlreadyInUseFailure() =
      EmailAlreadyInUseFailure;

  /// @nodoc
  // ignore: lines_longer_than_80_chars
  const factory AuthenticationFailure.invalidEmailAndPasswordCombinationFailure() =
      InvalidEmailAndPasswordCombinationFailure;
  // Serves as a "catch all" failure if we don't know what exactly went wrong


  /// @nodoc
  const factory AuthenticationFailure.usernameAlreadyInUseFailure() =
      UsernameAlreadyInUseFailure;
}
