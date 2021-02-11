import 'package:freezed_annotation/freezed_annotation.dart';

part 'log_out_failures.freezed.dart';

/// @nodoc
@freezed
abstract class LogOutFailures with _$LogOutFailures {
  /// @nodoc
  const factory LogOutFailures.unableToSignOutFailure() =
      UnableToSignOutFailure;
}
