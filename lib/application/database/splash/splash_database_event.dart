part of 'splash_database_bloc.dart';

@freezed
abstract class SplashDatabaseEvent with _$SplashDatabaseEvent {
  const factory SplashDatabaseEvent.authenticatedEVT({@required bool isAnonymous}) = AuthenticatedEVT;
  const factory SplashDatabaseEvent.placeholdersLoadedEVT(
    Map<String, String> placeholders,
  ) = PlaceholdersLoadedEVT;
  const factory SplashDatabaseEvent.placeholdersSavedEVT() = PlaceholdersSavedEVT;
  const factory SplashDatabaseEvent.sessionFetchedEVT(Session session) = SessionFetchedEVT;
  const factory SplashDatabaseEvent.userLoadedEVT(User user) = UserLoadedEVT;
}
