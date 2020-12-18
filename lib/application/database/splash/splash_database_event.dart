part of 'splash_database_bloc.dart';

/// @nodoc
@freezed
abstract class SplashDatabaseEvent with _$SplashDatabaseEvent {
  /// @nodoc
  const factory SplashDatabaseEvent.authenticatedEVT({
    @required bool isAnonymous,
  }) = AuthenticatedEVT;

  /// @nodoc
  const factory SplashDatabaseEvent.configFetchedEVT() = ConfigFetchedEVT;

  /// @nodoc
  const factory SplashDatabaseEvent.placeholdersInitializedEVT() =
      PlaceholdersInitializedEVT;

  /// @nodoc
  const factory SplashDatabaseEvent.placeholdersLoadedEVT(
    Map<String, String> placeholders,
  ) = PlaceholdersLoadedEVT;

  /// @nodoc
  const factory SplashDatabaseEvent.sessionFetchedEVT(Session session) =
      SessionFetchedEVT;

  /// @nodoc
  const factory SplashDatabaseEvent.userLoadedEVT(User user) = UserLoadedEVT;
}
