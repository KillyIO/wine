import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_failure.freezed.dart';

/// @nodoc
@freezed
abstract class AuthenticationFailure with _$AuthenticationFailure {
  /// @nodoc
  const factory AuthenticationFailure.cancelledByUser() = CancelledByUser;

  /// @nodoc
  const factory AuthenticationFailure.emailAlreadyInUse() = EmailAlreadyInUse;

  /// @nodoc
  const factory AuthenticationFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;

  /// @nodoc
  const factory AuthenticationFailure.unableToSignOut() = UnableToSignOut;

  /// @nodoc
  const factory AuthenticationFailure.unexpected() = Unexpected;

  /// Serves as a "catch all" failure if we don't know what went wrong.
  ///
  /// Previously ServerFailure.
  const factory AuthenticationFailure.unknown() = Unknown;

  /// @nodoc
  const factory AuthenticationFailure.usernameAlreadyInUse() =
      UsernameAlreadyInUse;
}
