import 'package:freezed_annotation/freezed_annotation.dart';

part 'common_failures.freezed.dart';

/// Failures that can occur in both LogIn, SignUp and LogOut.
@freezed
abstract class CommonFailures with _$CommonFailures {
  /// @nodoc
  const factory CommonFailures.serverFailure() = ServerFailure;

  /// @nodoc
  const factory CommonFailures.unexpectedFailure() = UnexpectedFailure;
}
