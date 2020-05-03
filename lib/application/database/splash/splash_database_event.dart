part of 'splash_database_bloc.dart';

@freezed
abstract class SplashDatabaseEvent with _$SplashDatabaseEvent {
  const factory SplashDatabaseEvent.authenticated({
    @required AccountStatus accountStatus,
  }) = Authenticated;
  const factory SplashDatabaseEvent.logoAnimationCompleted() =
      LogoAnimationCompleted;
}
