part of 'splash_database_bloc.dart';

@freezed
abstract class SplashDatabaseState with _$SplashDatabaseState {
  const factory SplashDatabaseState({
    @required bool isAnonymous,
    @required bool isUpdating,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
  }) = _SplashDatabaseState;

  factory SplashDatabaseState.initial() => SplashDatabaseState(
        databaseFailureOrSuccessOption: none(),
        isAnonymous: false,
        isUpdating: false,
      );
}
