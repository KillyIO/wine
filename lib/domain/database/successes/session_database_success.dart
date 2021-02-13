import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wine/domain/models/user.dart';

part 'session_database_success.freezed.dart';

/// @nodoc
@freezed
abstract class SessionDatabaseSuccess with _$SessionDatabaseSuccess {
  /// @nodoc
  const factory SessionDatabaseSuccess.sessionDeletedSCS() = SessionDeletedSCS;

  /// @nodoc
  const factory SessionDatabaseSuccess.sessionFetchedSCS(User user) =
      SessionFetchedSCS;

  /// @nodoc
  const factory SessionDatabaseSuccess.sessionInitializedSCS() =
      SessionInitializedSCS;

  /// @nodoc
  const factory SessionDatabaseSuccess.sessionUpdatedSCS() = SessionUpdatedSCS;
}
