part of 'splash_database_bloc.dart';

@freezed
abstract class SplashDatabaseState with _$SplashDatabaseState {
  const factory SplashDatabaseState({
    @required bool isUpdating,
    @required bool isAnonymous,
    @required Option<Either<DatabaseFailure, DatabaseSuccess>> databaseFailureOrSuccessOption,
  }) = _SplashDatabaseState;

  factory SplashDatabaseState.initial() => SplashDatabaseState(
        isUpdating: false,
        isAnonymous: false,
        databaseFailureOrSuccessOption: none(),
      );
}
