part of 'splash_database_bloc.dart';

/// @nodoc
@freezed
abstract class SplashDatabaseState with _$SplashDatabaseState {
  /// @nodoc
  const factory SplashDatabaseState({
    @required bool isAnonymous,
    @required bool isUpdating,
    @required
        Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
            configDatabaseFailureOrSuccessOption,
    @required
        Option<Either<PlaceholderDatabaseFailure, PlaceholderDatabaseSuccess>>
            placeholderDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
            sessionDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, UserDatabaseSuccess>>
            userDatabaseFailureOrSuccessOption,
  }) = _SplashDatabaseState;

  /// @nodoc
  factory SplashDatabaseState.initial() => SplashDatabaseState(
        configDatabaseFailureOrSuccessOption: none(),
        isAnonymous: true,
        isUpdating: false,
        placeholderDatabaseFailureOrSuccessOption: none(),
        sessionDatabaseFailureOrSuccessOption: none(),
        userDatabaseFailureOrSuccessOption: none(),
      );
}
