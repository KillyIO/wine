part of 'splash_database_bloc.dart';

@freezed
abstract class SplashDatabaseState with _$SplashDatabaseState {
  const factory SplashDatabaseState({
    @required bool isUpdating,
    @required bool isLogoAnimationCompleted,
    @required
        Option<Either<DatabaseFailure, dynamic>> databaseFailureOrSuccessOption,
  }) = _SplashDatabaseState;

  factory SplashDatabaseState.initial() => SplashDatabaseState(
        isUpdating: false,
        isLogoAnimationCompleted: false,
        databaseFailureOrSuccessOption: none(),
      );
}
