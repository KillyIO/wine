part of 'series_database_bloc.dart';

/// @nodoc
@freezed
abstract class SeriesDatabaseState with _$SeriesDatabaseState {
  /// @nodoc
  const factory SeriesDatabaseState({
    @required bool isBookmarked,
    @required bool isLiked,
    @required Chapter chapterOne,
    @required Config config,
    @required Count bookmarksCount,
    @required Count likesCount,
    @required Count viewsCount,
    @required
        Option<Either<DatabaseFailure, ChapterDatabaseSuccess>>
            chapterDatabaseFailureOrSuccessOption,
    @required
        Option<Either<ConfigDatabaseFailure, ConfigDatabaseSuccess>>
            configDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, SeriesDatabaseSuccess>>
            seriesDatabaseFailureOrSuccessOption,
    @required
        Option<Either<DatabaseFailure, SessionDatabaseSuccess>>
            sessionDatabaseFailureOrSuccessOption,
    @required Series series,
    @required Session session,
  }) = _SeriesDatabaseState;

  /// @nodoc
  factory SeriesDatabaseState.initial() => SeriesDatabaseState(
        bookmarksCount: Count(count: 0),
        chapterDatabaseFailureOrSuccessOption: none(),
        configDatabaseFailureOrSuccessOption: none(),
        chapterOne: Chapter(),
        config: Config(),
        isBookmarked: false,
        isLiked: false,
        likesCount: Count(count: 0),
        series: Series(),
        seriesDatabaseFailureOrSuccessOption: none(),
        session: Session(),
        sessionDatabaseFailureOrSuccessOption: none(),
        viewsCount: Count(count: 0),
      );
}
