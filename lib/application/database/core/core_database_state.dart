part of 'core_database_bloc.dart';

@freezed
abstract class CoreDatabaseState with _$CoreDatabaseState {
  const factory CoreDatabaseState({
    @required bool publishedFromAccount,
    @required bool publishedFromChapter,
    @required bool publishedFromHome,
  }) = _CoreDatabaseState;

  factory CoreDatabaseState.initial() => const CoreDatabaseState(
        publishedFromAccount: false,
        publishedFromChapter: false,
        publishedFromHome: false,
      );
}
